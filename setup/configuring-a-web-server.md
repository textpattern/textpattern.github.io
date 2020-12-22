---
layout: document
category: Setup and Configuration
published: true
title: Web server configuration.
description: This article offers guidance and tips for administrators wishing to install Textpattern to various web server platforms.
---

# Configuring a web server for Textpattern

Textpattern will function with any appropriate HTTP (web) server running PHP and MySQL. This article offers guidance and tips for configuring such a web server. This article does *not* address the installation of web server software, the security procedures for a production server, or any considerations toward performance optimization.

**Contents**

* Table of contents
{:toc}

### Apache with PHP

Textpattern runs faster on current mainline versions of Apache, MySQL, and PHP than end-of-life legacy versions. Typically, an existing production Apache web server with MySQL (or equivalent drop-in replacement) and PHP with appropriate extensions as listed in the [system requirements](https://textpattern.com/about/119/system-requirements) is enough to run Textpattern.

The method of enabling PHP extensions varies between versions of PHP and Apache, and also across operating systems. Refer to the system requirements above and contact your web hosting provider if you have questions.

Modifications to an Apache virtual host file are typically not needed, especially if PHP is already enabled. A `phpinfo()` pre-flight check is useful to confirm PHP and MySQL are functioning correctly. Create a .php file in the intended Textpattern location with the following contents:

~~~ php
<?php phpinfo(); ?>
~~~

Save the file as preflight.php or similar, and view it in a browser. If PHP is configured correctly, the resulting page will list details about PHP's configuration, including active extensions to check against the system requirements above. Delete the preflight.php file when you've confirmed system requirements are reached and, ideally, exceeded.

Textpattern-specific directives are provided by the .htaccess file in the root directory and other locations within the file tree. It is important to upload this file if your web server runs Apache; it provides instructions for the web server to work in a specific way. The root .htaccess file controls, among other things, clean URLs. Without the .htaccess file, clean URLs will not work.

### Nginx with PHP-FPM

Textpattern runs faster on current mainline versions of Nginx, MySQL, and PHP than legacy versions. Typically, an existing production Nginx web server with MySQL (or equivalent drop-in replacement) and PHP-FPM with appropriate extensions as listed in the [system requirements](https://textpattern.com/about/119/system-requirements) is enough to run Textpattern.

The method of enabling PHP-FPM extensions varies between versions of PHP-FPM and Nginx, and also across operating systems. Refer to the system requirements above and contact your web hosting provider if you have queries.

Modifications to the Nginx server block may be required as directives in the .htaccess file are ignored and not processed by Nginx. Take the following example Nginx `server` configuration with `upstream`ed PHP-FPM:

~~~ nginx
upstream php-fpm {
  server 127.0.0.1:9000;
}

server {
  listen [::]:80;
  listen 80;
  server_name example.com;
  root /sites/example.com/public;
  charset utf-8;
  location ~ /\. {
    deny all;
  }
  location / {
    index index.php;
    try_files $uri $uri/ /index.php?$args;
  }
  location ~ \.php$ {
    fastcgi_pass php-fpm;
    fastcgi_index index.php;
    include fastcgi_params;
    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
  }
  #Inhibits direct file downloads
  #location ^~ /files/\.*$ {
  #  return 403;
  #}
  location ^~ /themes/\.txp$ {
    return 403;
  }
  types {
    image/svg+xml svg svgz;
  }
  gzip on;
  gzip_types image/svg+xml;
}
~~~

This `server` block includes a basic web hosting setup and translates the Apache-specific directives in .htaccess to an Nginx format. It can be used as a base for your Textpattern site.

### Hiawatha with PHP-FPM

Textpattern runs faster on current mainline versions of Hiawatha, MariaDB and PHP legacy versions. Only a few settings are required in your Hiawatha [virtual host section](https://www.hiawatha-webserver.org/howto/websites), as a separate include file or in the main /etc/hiawatha/hiawatha.conf file itself:

~~~ nginx
VirtualHost {
  Hostname = example.com
  StartFile = index.php
  UseFastCGI = PHP7
  UseToolkit = textpattern
  WebsiteRoot = /var/www/example.com/public
  AccessLogfile = /var/log/hiawatha/example.com/access.log
  ErrorLogfile = /var/log/hiawatha/example.com/errors.log
  #TLSCertFile = example-site.pem
  #RequireTLS = yes
}
~~~

Replace `example.com` with your domain name and modify the server paths where appropriate. Use `PHP5` instead of `PHP7` if your host does not support PHP v7. Uncomment the `TLSCertFile` line if you want to support secure connections. To forbid open access and switch HTTP to HTTPS only, uncomment the directive `RequireTLS = yes`. Hiawatha has support for Server Name Indication, which allows us to serve multiple TLS websites via one IP address. Hiawatha also comes with a script to easily obtain, and automate renewing, Let's Encrypt! certificates according to your virtual host configuration.

Hiawatha does not use .htaccess files. If you wish to use clean URLs, paste the following [URL Toolkit for Textpattern CMS](https://www.hiawatha-webserver.org/howto/url_rewrite_rules) at the beginning of your include file for the virtual host, or in the main hiawatha.conf file itself:

~~~ nginx
UrlToolkit {
  ToolkitID = textpattern
  RequestURI exists Return
  Match ^/(css|files|images)(/|$) Return
  Match ^/(favicon.ico|robots.txt|sitemap.xml)$ Return
  Match [^?]*(\?.*)? Rewrite /index.php$1
}
~~~

[URL Toolkit](https://www.hiawatha-webserver.org/howto/url_toolkit) can also be adapted for many other tasks, for example HTTP 301 redirection:

~~~ nginx
UrlToolkit {
  ToolkitID = my-website
  Match ^/my-former-url-title Redirect /my-new-url-title
  Match ^/some-url Redirect //www.example.com/url-title
  Match ^/textpattern/ Redirect https://www.example.net/textpattern/
}
~~~

This ToolkitID should be referenced from the virtual host section. You can also set some HTTP `CustomHeaderBackend` or `CustomHeaderClient` details there for better performance, for example:

~~~ nginx
VirtualHost {
  …
  UseToolkit = my-website, textpattern
  UseDirectory = static
  CustomHeaderClient = Vary: accept-encoding
  …
}
~~~

Where `static` would include cache directives for your static assets:

~~~ nginx
Directory {
  DirectoryID = static
  Path = /css, /files, /images
  ExpirePeriod = 2 months, public
}
~~~

You can point to your website via multiple domains by adding aliases, comma separated, in the same line of the virtual host section. Uncomment the `EnforceFirstHostname` directive, if desired, to return web pages for visitors by only the first (primary) domain in your list (301 redirected):

~~~ nginx
VirtualHost {
  Hostname = www.example.com, example.com, example.org
  #EnforceFirstHostname = yes
  …
}
~~~

More options and further information can be found in the [Hiawatha manual](https://www.hiawatha-webserver.org/manpages/hiawatha), [Hiawatha how-to guides](https://www.hiawatha-webserver.org/howto), [Hiawatha FAQs](https://www.hiawatha-webserver.org/faq) and the [Hiawatha user forum](https://www.hiawatha-webserver.org/forum).

### LiteSpeed with PHP

Textpattern runs faster on current versions of LiteSpeed, MySQL, and PHP than end-of-life legacy versions. Typically, an existing production LiteSpeed web server with MySQL (or equivalent drop-in replacement) and PHP with appropriate extensions as listed in the [system requirements](https://textpattern.com/about/119/system-requirements) is enough to run Textpattern.

Note that [OpenLiteSpeed support for `.htaccess`](https://openlitespeed.org/kb/how-to-autoload-htaccess-with-openlitespeed/) file directives was added in OpenLiteSpeed version 1.4.38. Releases prior to this will require `.htaccess` directives to be entered manually using the WebAdmin Console. For further information on rewrite rules, please refer to [this document](https://openlitespeed.org/kb/migrate-apache-rewrite-rules-to-openlitespeed/).
