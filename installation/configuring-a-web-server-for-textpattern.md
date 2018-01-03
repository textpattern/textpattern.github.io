---
layout: document
category: Installation
published: false
title: Configuring a web server for Textpattern.
description: (WIP, @petecooper January 2018)
---

# Configuring a web server for Textpattern

Textpattern CMS is supported on any web server that supports PHP, MySQL and either Apache or NGINX. While other web server platforms are suitable for housing a Textpattern instance, additional considerations should be made for the web hosting server environment. This article offers guidance and tips for administrators wishing to install Textpattern to both supported web server platforms and other, unsupported web servers.

The article's scope extends to the functional requirements of installing Textpattern on a existing production web server. It does not focus on installation of the web server software itself, security procedures for a production server or performance optimisations.

## Supported environments

* [Apache, MySQL, PHP](#apache-mysql-php)
* [NGINX, MySQL, PHP-FPM](#nginx-mysql-php-fpm)

### Apache, MySQL, PHP

Textpattern runs faster on current mainline versions of Apache, MySQL and PHP than end-of-life'd legacy versions. Typically, an existing production Apache web server with MySQL (or equivalent drop-in replacement) and PHP with appropriate extensions as listed in the [system requirements](https://textpattern.com/about/119/system-requirements) is enough to run Textpattern.

The method of enabling PHP extensions varies between versions of PHP and Apache, and also across operating systems. Refer to the system requirements above and contact your web hosting provider if you have queries.

Modifications to an Apache virtual host file are typically not needed, especially if PHP is already enabled. A `phpinfo()` pre-flight check is useful to confirm PHP and MySQL are functional correctly. Create and edit a new file in the intended Textpattern location with the following contents:

```php
<?php phpinfo(); ?>
```

Save the file as `preflight.php` or similar, and view it in a browser. If PHP is configured correctly, the resulting page will list details about PHP's configuration, including active extensions to check against the system requirements above. Delete this `preflight.php` file when you've confirmed system requirements are reached and, ideally, exceeded.

Textpattern-specific directives are provided by `.htaccess` in the root directory and other locations within the file tree. It is important to upload this file if your web server runs Apache as it's essentially direct instructions for the web server to work in a specific way. The root `.htaccess` file controls, among other things, clean URLs. Without `.htaccess`, clean URLs will not work.

### NGINX, MySQL, PHP-FPM

Textpattern runs faster on current mainline versions of NGINX, MySQL and PHP than end-of-life'd legacy versions. Typically, an existing production NGINX web server with MySQL (or equivalent drop-in replacement) and PHP-FPM with appropriate extensions as listed in the [system requirements](https://textpattern.com/about/119/system-requirements) is enough to run Textpattern.

The method of enabling PHP-FPM extensions varies between versions of PHP-FPM and NGINX, and also across operating systems. Refer to the system requirements above and contact your web hosting provider if you have queries.

Modifications to the NGINX server block are needed as directives in `.htaccess` are ignore and not processed by NGINX. Take the following barebones example NGINX server block:

```nginxconf
server {
  listen [::]:80;
  listen 80;
  server_name example.com;
  root /sites/example.com/public;
  charset utf-8;
}
```

(WIP)

## Unsupported environments

* (WIP)
* (WIP)
* (WIP)
