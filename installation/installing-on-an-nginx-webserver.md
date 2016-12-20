---
layout: document
category: Installation
published: true
title: "Installing on an Nginx web server"
description: Although it is not officially supported, running Textpattern CMS on an Nginx web server works just fine.
---

# Installing on an Nginx web server

Although it is not officially supported, running Textpattern CMS on an Nginx web server works just fine - given the correct configuration. This article outlines the requirements for a successful installation of Textpattern using Nginx on a CentOS 5.6 system.

On this page:

* [Acquisition and unpacking](#acquisition-and-unpacking)
* [Setting up Nginx](#setting-up-nginx)

## Acquisition and unpacking

### Nginx and PHP-FPM

In order to run any PHP application on Nginx you will have to have [PHP-FPM](https://php-fpm.org) available and running on your system. It is part of the PHP core since PHP 5.3.3. For previous versions you might need to compile it yourself.

To ease the installation you can use pre-built packages in the [EPEL](https://fedoraproject.org/wiki/EPEL), [Remi](http://rpms.famillecollet.com), or [Atomic](http://wiki.atomicorp.com/wiki/index.php/Atomic) repositories.

You need to have Nginx as well as PHP-FPM running. If you installed them via [yum](http://yum.baseurl.org) you will most likely be able to configure them to start at boot time using:

~~~ ShellSession
$ chkconfig nginx on
$ chkconfig php-fpm on
~~~

### Textpattern

1. [Download](http://textpattern.com/download) the latest release package from the Textpattern download page. Select either `.gzip` or `.zip`, as you prefer.
2. It is assumed for this tutorial that the unzipped contents of the file are available in `/var/www/html/textpattern`.

## Setting up Nginx

There are several configuration files for Nginx (path names may vary between Linux distributions). The ones that may need adjustments are as follows:

* `etc/nginx/nginx.conf`: Main configuration, similar to `httpd.conf` for Apache.
* `/etc/nginx/conf.d/*.conf`: Additional configuration files (everything with a suffix of `.conf`) - those will also be used for the virtual host configuration.
* `/etc/nginx/fastcgi_params`: FastCGI settings.

### /etc/nginx/nginx.conf

This is what an example `nginx.conf` could look like:

~~~
user  nginx;
worker_processes  2;
worker_rlimit_nofile  100000;

error_log   /var/log/nginx/error.log;
#error_log  /var/log/nginx/error.log  notice;
#error_log  /var/log/nginx/error.log  info;

pid         /var/run/nginx.pid;

events {
    worker_connections  1024;
    use epoll;
}

http {
    include       /etc/nginx/mime.types;
    default_type  application/octet-stream;

    log_format  main  '$remote_addr - $remote_user [$time_local] &quot;$request&quot; '
                      '$status $body_bytes_sent &quot;$http_referer&quot; '
                      '&quot;$http_user_agent&quot; &quot;$http_x_forwarded_for&quot;';

    access_log  /var/log/nginx/access.log  main;

    sendfile        on;
    tcp_nopush      on;
    tcp_nodelay     on;
    server_tokens   off;
    gzip            on;
    gzip_static     on;
    gzip_comp_level 5;
    gzip_min_length 1024;
    keepalive_timeout  65;
    limit_zone   myzone  $binary_remote_addr  10m;

    # Load config files from the /etc/nginx/conf.d directory
    include /etc/nginx/conf.d/*.conf;

    server {
        limit_conn   myzone  10;
        listen       80;
        server_name  _;

        location / {
        root /usr/share/nginx/html;
            index  index.html index.php index.htm;
        }
      location ~ \.php$ {
      # Security: must set cgi.fixpathinfo to 0 in php.ini!
      fastcgi_split_path_info ^(.+\.php)(/.+)$;
      fastcgi_pass 127.0.0.1:9000;
      fastcgi_index index.php;
      fastcgi_param SCRIPT_FILENAME         $document_root$fastcgi_script_name;
      fastcgi_param PATH_INFO $fastcgi_path_info;
      include /etc/nginx/fastcgi_params;
   }

        error_page  404              /404.html;

        location = /404.html {
            root   /usr/share/nginx/html;
        }

        # redirect server error pages to the static page /50x.html
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   /usr/share/nginx/html;
        }

    }
}
~~~

### /etc/nginx/conf.d/example.con.conf

For each virtual host (i.e. each URL under which your Textpattern site should be accessible) you need to define one 'server' block. It is good practice to create one file per domain so you can better keep track of all settings.

Since nginx does not make use of `.htaccess` files or offer `mod_rewrite`, you will need to use an alternative approach to allow clean URLs. The `try_files` directive is responsible for clean URLs in this example.

~~~
server {
    listen 80;  #could also be 1.2.3.4:80

    # adjust this as required
    server_name example.com;

    root /var/www/html/textpattern;

    error_page 404 /usr/share/nginx/errors/404.html;
    access_log /var/log/nginx/example.com.access.log main;

    index index.php index.html index.htm;

    # the following line is responsible for clean URLs
    try_files $uri $uri/ /index.php?$args;

    # serve static files directly
    location ~* \.(jpg|jpeg|gif|css|png|js|ico|html)$ {
        access_log off;
        expires max;
    }

    location ~ \.php$ {
        # Security: must set cgi.fixpathinfo to 0 in php.ini!
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass 127.0.0.1:9000;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME         $document_root$fastcgi_script_name;
        fastcgi_param PATH_INFO $fastcgi_path_info;
        include /etc/nginx/fastcgi_params;
    }

    location ~ /\.ht {
        deny  all;
    }
}
~~~

### /etc/nginx/fastcgi_params

These are example settings for `fastcgi_params`:

~~~
fastcgi_param  QUERY_STRING       $query_string;
fastcgi_param  REQUEST_METHOD     $request_method;
fastcgi_param  CONTENT_TYPE       $content_type;
fastcgi_param  CONTENT_LENGTH     $content_length;

fastcgi_param  SCRIPT_NAME        $fastcgi_script_name;
fastcgi_param  REQUEST_URI        $request_uri;
fastcgi_param  DOCUMENT_URI       $document_uri;
fastcgi_param  DOCUMENT_ROOT      $document_root;
fastcgi_param  SERVER_PROTOCOL    $server_protocol;

fastcgi_param  GATEWAY_INTERFACE  CGI/1.1;
fastcgi_param  SERVER_SOFTWARE    nginx/$nginx_version;

fastcgi_param  REMOTE_ADDR        $remote_addr;
fastcgi_param  REMOTE_PORT        $remote_port;
fastcgi_param  SERVER_ADDR        $server_addr;
fastcgi_param  SERVER_PORT        $server_port;
fastcgi_param  SERVER_NAME        $server_name;

# PHP only, required if PHP was built with --enable-force-cgi-redirect
fastcgi_param  REDIRECT_STATUS    200;
~~~
