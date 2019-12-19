---
layout: document
category: Setup and configuration
published: true
title: Diagnostics troubleshooting
description: The Textpattern Diagnostics panel is an important area for troubleshooting problems with your Textpattern installation.
---

# Diagnostics troubleshooting

Troubleshooting web technology is an inherent fact of being online, and especially if you run your own website. Textpattern’s Diagnostics panel (Admin > Diagnostics) helps make troubleshooting easier. This document describes the functionality and how to use it. 

**On this page**:

* Table of contents
{:toc}

## Overview of diagnostics

Problems that might arise with a Textpattern website are generally due to misconfigurations in Textpattern, incompatible [server configurations](/setup/configuring-a-web-server), and so on. Some of these problems are minor, expected, and easily fixed; for example, file path permissions after [installing the software](/setup/installing-the-software) (see ‘Pre-flight checks’ section). Other problems could have been introduced after customizing or extending the software; these may require a bit more sleuthing, perhaps with [community help](https://forum.textpattern.com/viewforum.php?id=67). Still, other problems may require the intervention of your web host to upgrade software to minimum [system requirements](https://textpattern.com/about/119/system-requirements), or to add that _one_ missing PHP module, whatever.

No matter the case, Textpattern diagnostics are the first stop to determining what the problems are and where they need fixed. If you are experienced with troubleshooting web technology, you will quickly realize how useful the Diagnostics panel is. If you are less experienced, no problem, many of the easily fixed issues are flagged in the Diagnostics panel by way of system feedback (alert) messages, indicating what to do. These are described in following sections.

## Pre-flight check

The Diagnostics panel has two main regions. At top is a **Pre-flight check** region where system alert messages appear. The one everybody likes to see is the green (success) alert:

<span class="success ui-icon-check">All checks passed!</span>
{: .example}

It is the only green alert message in diagnostics. When you see that, your Textpattern website is running correctly and you can go on your merry way.

There are other coloured alerts to be aware of: blue (information), yellow (warning), and red (error).

### Blue information alerts

In certain situations it may not be possible to get the green confirmation message, but it doesn’t mean your site is not configured correctly. There are a handful of possible blue (information) messages, for example. If they appear by themselves, you have nothing to worry about.

<span class="information">There was a problem connecting to the Textpattern update server. Please try again later.</span>
: This alert means your Textpattern installation cannot connect with Textpattern’s servers (e.g. a web connection was lost), thus cannot check if a new stable release of the software is available. This message would persist until your installation could connect and make the check. At that time, if there were no updates available, the message would disappear and you’d see the green ‘All checks pass!’.

<span class="information">New Textpattern version {number} available for download.</span>
: If there was a new stable release, as described in the previous alert, you’d see this message instead, which would persist until you updated your installation with the new release (always recommended).

<span class="information">There was a problem trying to connect to the RPC server. Please try again later.</span>
: This blue alert is similar to the first one; your connection to Textpattern’s servers is broken for whatever reason. But in this case your system is trying to ping Textpattern’s RPC server. If you are *not* using RPC, which would be set in preferences (Admin > Preferences > Admin), this alert will never appear, even if the connection is broken.

<span class="information">File uploads are disabled.</span>
: This alert appears if the permissions you have set on your /files folder is read only. The assumption is, you have made this choice, so you can ignore this message. If you make the files folder writable, the alert will go away.[^files]

<span class="information">Clean URLs are only supported on Apache, use at your own risk.</span>
: This alert is acknowledging that you are *not* using an Apache web server. The assumption is that you know what you're doing so you can ignore this message. It goes away if you ever switch to Apache.

Where blue alerts are informative only, yellow and red alerts begin demanding action on your part.

[^files]: **Folder permissions:** A chmod setting of 755 or 711 should work to make a folder writable *and* is secure. A lot of people have trouble setting these values, however, and need to use a chmod of 777, which has [security implications](https://forum.textpattern.com/viewtopic.php?id=26613). The discrepancy is due to how Apache directives are configured on the web server, which means you may have to ask your server administrator or web host to change the directives. If they won't do it, it might be time to find a new web host, because no web host should force you to operate your site insecurely.

### Yellow warning alerts

Warnings are not critical, per se, and sometimes can even be cascading[^2] or false.[^3] But when warnings are accurate, something needs resolved in order to work correctly, reliably, or securely.

**Several warning messages are possible:**

DNS lookup failed: {site URL}.
{: .alert-block .warning}

This means the 'Site URL' preference value in the [Preferences panel](/administration/preferences-panel) is probably incorrect; possibly the wrong name, a spelling mistake, or missing altogether. Check the value and make sure it's entered exactly like this, `example.com`, replacing your domain name and TLD extension.

Site URL preference might be incorrect: {site URL}.
{: .alert-block .warning}

Similar to the previous message, this is suggesting the 'Site URL' as set [Preferences panel](/administration/preferences-panel) does not match the actual URL you use to visit your website.

Clean URL test failed.
{: .alert-block .warning}

This could appear for different reasons and may not be a problem, per se. Troubleshoot other messages first and it may go away too. If not, it might be caused by the PHP configuration setting of `allow_url_fopen`, or some other hosting issue.

Site URL has a trailing slash.
{: .alert-block .warning}

This means your 'Site URL' preference value in the [Preferences panel](/administration/preferences-panel) has an ending forward slash on it like this, `example.com/`. Tsk-tsk. Remove the slash.

{path} still exists.
{: .alert-block .warning}

This means you need to remove the `/textpattern/setup` folder from the web server; {path} will be replaced with the actual folder path respective to your installation.

Image directory is read-only.
{: .alert-block .warning}

This means permissions on your `/images` folder needs changed before you can add any images to it; change permissions to chmod 755 or 711.[^1]

No temporary directory defined.
{: .alert-block .warning}

todo:explanation

Your PHP installation is missing the <code>mail()</code> function. Therefore no emails can be sent from Textpattern, which limits certain functionality.
{: .alert-block .warning}

todo:explanation

Your version of PHP has known security vulnerabilities. Please turn <code>register_globals</code> off or update to a newer PHP version.
{: .alert-block .warning}

todo:explanation

Some Textpattern files have been modified.
{: .alert-block .warning}

todo:explanation

You are running a development version of Textpattern on a live server.
{: .alert-block .warning}

Means you're installation version is a future development version, not the latest stable release. This would be okay for local testing, but not recommended for a live production site online.

The following PHP functions (which may be necessary to run Textpattern) are disabled on your server…
{: .alert-block .warning}

If you see this message, it will be followed by a number of PHP functions that are disabled on your web server. Textpattern needs certain functions enabled to work correctly, while other functions, if disabled, can be ignored. See section below, [Diagnostic reporting on PHP functions](#diagnostic-reporting-on-php-functions), for more about which function are needed or not.

Site URL preference might be incorrect.
{: .alert-block .warning}

This could either mean you do not have the right 'Site URL' path set in [Preferences panel](/administration/preferences-panel), or, in the case of upgrading, you still need to update your `index.php` and/or `.htaccess` files (see next message). This could also be a false error. For example, symlinks cannot be correctly recognized, so you might get this error even if there's no true problem. Unless you are experiencing real technical issues, you shouldn't worry too much about this feedback message if it doesn't go away. Understandably that is not satisfying advice.

Clean URL data test failed.
{: .alert-block .warning}

todo:explanation

Clean URL test failed.
{: .alert-block .warning}

todo:explanation

### Red error alerts

Red messages mean something critical appears to be wrong and you need to troubleshoot it immediately.

**Possible red messages include:**

Textpattern requires at least version {version} of PHP to be installed on your server
{: .alert-block .error}

todo:explanation

index.php is inaccessible.
{: .alert-block .error}

This suggests your `index.php` file is not available, is not the right version, or that your 'Site URL' is set wrong in [Preferences panel](/administration/preferences-panel). It could also mean the `index.php` file was not updated for whatever reason during a recent upgrade. Update the file using the one from the [current Textpattern release](https://github.com/textpattern/textpattern/releases) and refresh diagnostics.

.htaccess file is missing.
{: .alert-block .error}

This concerns the `.htaccess` file, but doesn't necessarily mean the file is missing; the message usually appears if you are trying to use one of the “clean” URL settings, and you have one of the previous diagnostic issues with the wrong path or have a missing `index.php` file. Take care of those issues first and this message may disappear. If that does not work, then definitely check to see if you even have an *.htaccess* file. If the file is there, then either replace it from the [current Textpattern release](https://github.com/textpattern/textpattern/releases), or select the help link next to this particular message and replace the contents of your existing `.htaccess` file with the indicated rewrite rules in the help dialog.

`$path_to_site` is inaccessible.
{: .alert-block .error}

This means either one or both of the previous diagnostics are a problem. Follow the troubleshooting procedures for them accordingly, and this problem will likely go away.

{dirtype} is not writable.
{: .alert-block .error}

todo:explanation

Apache module mod_rewrite is not installed.
{: .alert-block .error}

todo:explanation

Old placeholder file is in the way
{: .alert-block .error}

This likely means you have created an actual folder in your server file tree that shares a name with a *section* you created in the [Sections panel](/administration/sections-panel), or vice versa. This can break your site. You need to rename or remove one or the other.

Missing files
{: .alert-block .error}

todo:explanation

The following errors were detected in your MySQL tables
{: .alert-block .error}

todo:explanation

Temporary directory path and Plugin cache directory path should **not** match.
{: .alert-block .error}

This means paths to your plugin cache and `tmp` directory locations are the same. Neither should be web accessible, but if you set them to the same location, a temp file could overwrite a plugin, and that would be bad. Create a different folder location for your plugin cache.

##  Diagnostics info

Aside from the useful alert messages, the Diagnostics panel has a **Diagnostics info** region where key information is output about your installation, the web server technology you are using, and so forth.

The volume of detail displayed may be set to 'Low' (the default) or 'High', which you can toggle using the **Detail** selection control at top of the output display.

This output is first meant to help you troubleshoot issues by showing you a plethora of relevant information all in one place for easy scanning. No specific indicators or flags are provided within this output that might highlight problems; you have to know what to look for.

But another reason this output is provided, is so you can quickly copy and share it in the [troubleshooting forum](https://forum.textpattern.com/viewforum.php?id=67) where Textpattern developers and other experienced users can expertly spot where things might be going astray and give you advice about what to do.

In the latter case, note the two controls at top of the output display. The first is the Detail selection menu for ‘Low’ and ‘High’ output. Toggle this and you will see the output difference is quite a lot. The other control is a checkbox for hiding private information. Make sure this is checked before copying the output for sharing in the forum. Share the ‘Low’ amount of detail at first. Provide the ‘High’ detail only if developers ask you for it later. 

### Low detail

Low details about your configuration cover your installation and server technology. At the risk of needlessly describing what might be obvious, following is what you see in Low detail.

Textpattern version
: The version you currently have installed.

Last update
: The date/time you last updated your installation.

Document root
: The path to the web server's public (document root) directory, specifically.

$path_to_site
: The path to wherever your installation is (e.g. in document root or in a sub-directory thereof).

Textpattern path
: The path to your installation's `/textpattern` directory.

Article URL pattern
: The pattern of URL type you set. Corresponds with the 'Article URL pattern' setting in the 'Site' section of the [Preferences panel](/administration/preferences-panel#article-url-pattern).

Temporary directory path
: The path of your `/tmp` directory relative to document root.

Site URL
: Your domain name and top-level domain (i.e. `example.com`). Corresponds with 'Site URL' setting in the 'Site' section of the [Preferences panel](/administration/preferences-panel#site-url).

PHP version
: The version number of your PHP install.</td>

GD Graphics Library
: The version number of your GD Graphics Library install.

Server TZ
: The server's 'default timezone'; determined by a [specific order of preferences](https://secure.php.net/manual/en/function.date-default-timezone-get.php).

Server local time
: The local date/time of your web server (`yyyy-mm-dd hh:mm:ss`).

Automatically adjust Daylight Saving Time setting?
: Whether Textpattern will adjust DST automatically (`0`=no, `1`=yes). Corresponds with the 'Automatically adjust Daylight Saving Time setting?' setting in the 'Site' section of the [Preferences panel](/administration/preferences-panel#automatically-adjust-daylight-saving-time-setting).

Daylight Savings Time enabled?
: Whether Daylight Savings Time is enabled (`0`=no, `1`=yes). Corresponds with the 'Daylight Savings Time enabled?' setting in the 'Site' section of the [Preferences panel](/administration/preferences-panel#daylight-savings-time-enabled).

Time zone
: Your time zone relative to Greenwich Mean Time (GMT). Corresponds with the 'Time zone' setting in the 'Site' section of the [Preferences panel](/administration/preferences-panel#time-zone). The output includes an offset value in parentheses, which helps developers determine if time-specific problems might stem from a wrong or outdated [tz database](https://en.wikipedia.org/wiki/Tz_database).

MySQL
: The version number and build of your MySQL database server.

Locale
: The language and character set you have configured.

Server
: Your web server type (e.g. Apache, Nginx).

PHP server API
: todo:explanation

RFC 2616 headers
: todo:explanation

Server OS
: The name and version number of the server's operating system.

Active plugins
: A comma-separated list of all plugins (with version numbers) that are installed *and<* turned on.

Admin-side theme
: The name and version number of the active administration side theme. The default is 'Hive'.

The installation and server data is followed by the contents of your `.htaccess` file (from the installation directory). For purposes here we show the [file contents from the current version code](https://github.com/textpattern/textpattern/blob/master/.htaccess) below:

~~~ apacheconf
# BEGIN Textpattern
#DirectoryIndex index.php index.html

#Options +FollowSymLinks
#Options -Indexes
#ErrorDocument 403 default

<IfModule mod_rewrite.c>
    RewriteEngine On
    #RewriteBase /relative/web/path/

    RewriteCond %{REQUEST_FILENAME} -f [OR]
    RewriteCond %{REQUEST_FILENAME} -d
    RewriteRule ^(.+) - [PT,L]

    RewriteCond %{REQUEST_URI} !=/favicon.ico
    RewriteRule ^(.*) index.php

    RewriteCond %{HTTP:Authorization} !^$
    RewriteRule .* - [E=REMOTE_USER:%{HTTP:Authorization}]
</IfModule>

#php_value register_globals 0

<IfModule mod_mime.c>
    AddType image/svg+xml  svg svgz
    AddEncoding gzip       svgz
</IfModule>
# END Textpattern
~~~

Over time your .htaccess file will change as you add your own `mod_rewrite` rules, or whatever, and the changes will reflect in the diagnostics info display.

### High detail

High diagnostics info display includes the Low detail already described, but adds the following information.

Charset (default/config)
: If you don't see a lot of 'UTF-8' values on these `character_set` items, you might want ask yourself why not.

character_set_client
: todo:explanation

character_set_connection
: todo:explanation

character_set_database
: todo:explanation

character_set_filesystem
: todo:explanation

character_set_results
: todo:explanation

character_set_server
: todo:explanation

character_set_system
: todo:explanation

character_sets_dir
: todo:explanation

{n} Tables
: {n} being the number of Textpattern tables that exist in your installation (a default install has 17, anything more is from plugins or other extensions you've added); the value also indicates if tables are 'OK' or not.

{n} Custom fields
: {n} being the number of custom fields; value also indicates name of all counted fields.

PHP extensions
: List of extension names/versions your web host has enabled.

pretext_data
: Value is a piece of code; useful for developers to evaluate.

{/textpattern files, not shown here}
: List of Textpattern configuration files from the /textpattern directory, indicating file path, revision number, and MD5 Checksum hash number.

## Diagnostic reporting on PHP functions

Textpattern requires certain PHP functions to be enabled for your website to work properly, or to work at all. Your website administrator or web host will be in control of these, and may have certain functions turned off for security reasons.

Diagnostics can tell you if any of these necessary functions are disabled. You'll see this pre-flight check warning:

The following PHP functions (which may be necessary to run Textpattern) are disabled on your server…
{: .alert-block .warning}

If so, compare the indicated functions with those in the table below to see if any match and thus need to be enabled.

### Functions used by Textpattern

The following functions are used by Textpattern. If your diagnostics reports any of these as *disabled*, you need to get in touch with your web server administrator or web host and explain why you need them turned on (for your Textpattern site to work). Point them to this page, if you want. If they won't help you, find a more suitable web host, because there is no real reason to disable these functions:

`apache_get_modules`
: Helps determine whether clean URLs could be used at setup, and for diagnostics info.

`apache_get_version`
: Helps provide diagnostics info regarding clean URLs.

`parse_ini_file`
: Language features, even if English is used.

`php_sapi_name`
: Determines whether PHP is running as an Apache module or CGI. Used for sending header information appropriate to the platform.

`php_uname`
: Provides diagnostics info regarding the server's operating system.

`set_time_limit`
: Makes sure PHP does not timeout before installation, updates (including language string changes), and file downloads can be completed.

### Functions not used by Textpattern

These functions are *not* used by Textpattern.[^4] If diagnostics reports one or more of these functions as disabled, you may safely ignore the message, because they do not affect Textpattern's operation in any way.

* `apache_child_terminate`
* `apache_getenv`
* `apache_note`
* `apache_setenv`
* `chgrp`
* `chown`
* `close_log`
* `debugger_off`
* `debugger_on`
* `define_syslog_variables`
* `diskfreespace`
* `disk_total_space`
* `dl`
* `error_log`
* `escapeshellarg`
* `escapeshellcmd`
* `exec`
* `get_current_user`
* `getrusage`
* `highlight_file`
* `imagefilltoborder`
* `ini_alter`
* `ini_restore`
* `leak`
* `link`
* `listen`
* `mysql_pconnect`
* `openlog`
* `pack`
* `passthru`
* `pclose`
* `pfsockopen`
* `phpinfo`
* `popen`
* `proc_close`
* `proc_get_status`
* `proc_nice`
* `proc_open`
* `proc_terminate`
* `putenv`
* `readlink`
* `set_socket_blocking`
* `shell_exec`
* `show_source`
* `socket_…` (i.e. `socket_bind`)
* `symlink`
* `syslog`
* `system`
* `system_exec`
* `virtual`
* `wget`


[^2]: **Cascading problems:** Sometimes the existence of one yellow or red issue can be the cause of another, so be sure to reload the Diagnostics panel as you resolve each yellow or red issue; you might find it eliminates another in the process.

[^3]: **False problems:** On rare occasions, yellow and red messages have been known to appear but not go away when addressed as instructed by their help information. Textpattern developers have indicated this can happen in odd situations, and it's a false reading nearly every time, meaning there isn't anything to worry about. If you ever have this problem and can't seem to resolve it, post about it in the [Textpattern Forum Troubleshooting section](https://forum.textpattern.com/viewforum.php?id=67) and someone will try to help.

[^4]: If you discover any functions named in your feedback message that are not listed above, create a new topic in the [Textpattern Forum Troubleshooting section](https://forum.textpattern.com/viewforum.php?id=67) and post the 'High' diagnostics info so someone can help you determine if the function is necessary or not.
