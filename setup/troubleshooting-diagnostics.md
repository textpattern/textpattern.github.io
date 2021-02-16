---
layout: document
category: Setup and Configuration
published: true
title: Diagnostics troubleshooting
description: The Textpattern Diagnostics panel is an important area for troubleshooting problems with your Textpattern installation.
---

# Diagnostics troubleshooting

Troubleshooting web technology is an inherent fact of being online, and especially if you run your own website. Textpattern’s Diagnostics panel (Admin > Diagnostics) helps make troubleshooting easier. This document describes the functionality and how to use it.

**Contents**

* Table of contents
{:toc}

## Overview of diagnostics

Problems that might arise with a Textpattern website are generally due to misconfigurations in Textpattern, incompatible [server configurations](/setup/configuring-a-web-server), and so on. Some of these problems are minor, expected, and easily fixed, like file path permissions after [installing the software](/setup/installing-the-software).[^chmod] Other problems could be introduced through customizing or extending the software; these may require a bit more sleuthing, perhaps with [community help](https://forum.textpattern.com/viewforum.php?id=67). Still, other problems may require the intervention of your web host to upgrade software to minimum [system requirements](https://textpattern.com/about/119/system-requirements), or to add that _one_ missing PHP module, whatever.

No matter the case, Textpattern diagnostics are the first stop to determining what the problems are and where they need fixed. If you are experienced with troubleshooting web technology, you will quickly realize how useful the Diagnostics panel is. If you are less experienced, no problem, many of the easily fixed issues are flagged in the Diagnostics panel by way of system feedback (alert) messages, indicating what to do. These are described in following sections.

## Pre-flight check

The Diagnostics panel has two main regions. At top is a **Pre-flight check** region where system alert messages appear. The one everybody likes to see is the green (success) alert:

<span class="success ui-icon-check">All checks passed!</span>

That is the only green alert message in diagnostics. When you see that, your Textpattern website is running perfectly and you can go on your merry way.

There are other coloured alerts to be aware of: blue (information), yellow (warning), and red (error).

[^chmod]: {% include component-chmod.html %}

### Blue information alerts

In certain situations it may not be possible to get the green confirmation message, but it does not mean your site is not configured correctly. The following blue (information) alert messages, for example, are nothing to worry about if they appear by themselves.

<span class="information">There was a problem connecting to the Textpattern update server. Please try again later.</span>
: This alert means your Textpattern installation cannot connect with Textpattern’s servers (e.g. a web connection was lost), thus cannot check if a new stable release of the software is available. This message will persist until your installation attempts the connection again. At that time (at most, once an hour) if there were no updates available, the message would disappear and you’d see the green ‘All checks pass!’.

<span class="information">New Textpattern version {number} available for download.</span>
: If there was a new stable release, as described in the previous alert, you’d see this message instead, which would persist until you updated your installation with the new release (always recommended).

<span class="information">There was a problem trying to connect to the RPC server. Please try again later.</span>
: This blue alert is similar to the first one; your connection to Textpattern’s servers is broken for whatever reason. But in this case your system is trying to ping Textpattern’s RPC server. If you are *not* using RPC, which would be set in preferences (Admin > Preferences > Admin), this alert will never appear, even if the connection is broken.

<span class="information">File uploads are disabled.</span>
: This alert appears if the permissions you have set on your /files folder is read only. The assumption is, you have made this choice, so you can ignore this message. If you make the files folder writable, the alert will go away.[^chmod]

<span class="information">Clean URLs are only supported on Apache, use at your own risk.</span>
: This alert is acknowledging that you are *not* using an Apache web server. The assumption is that you know what you're doing so you can ignore this message. It goes away if you ever switch to Apache.

Where blue alerts are informative only, red and yellow alerts begin demanding action on your part.

### Red error alerts

Red messages mean something critical appears to be wrong and you need to troubleshoot it immediately. Several red alerts are possible.

<span class="error">Textpattern requires at least version {number} of PHP to be installed on your server.</span>
: This alert is clearly telling you what minimum version of PHP must working on your web server. The actual version number will appear in place of {number}.

<span class="error">index.php is inaccessible.</span>
: This alert suggests your index.php file is not available, is not the right version, or that your **Site URL** is set wrong in Preferences (Admin > Preferences > Site). It could also mean the index.php file was not updated for whatever reason during a recent upgrade. Update the file using the one from the [current Textpattern release](https://github.com/textpattern/textpattern/releases) and refresh diagnostics.

<span class="error">.htaccess file is missing.</span>
: While this alert concerns the .htaccess file, it doesn't necessarily mean the file is missing. The message usually appears if you are trying to use one of the clean URL patterns, as set in Preferences (Admin > Preferences > Site), and you have one of the previous diagnostic issues with the wrong path in **Site URL**, or have a missing index.php file. Take care of those issues first and this message may disappear. If that does not work, then definitely check to see if you even have an .htaccess file. If the file is there, then either replace it from the [current Textpattern release](https://github.com/textpattern/textpattern/releases), or select the help link next to this particular message and replace the contents of your existing .htaccess file with the indicated rewrite rules in the help dialog.

<span class="error">`$path_to_site` is inaccessible.</span>
: If you see this, either one or both of the previous diagnostics are a problem. Follow the troubleshooting procedures for them accordingly, and this problem will likely go away.

<span class="error">{dirtype} is not writable.</span>
: If any of the directories in which Textpattern stores your images, downloadable files, themes or temporary files have their permissions set incorrectly, this alert will appear. {dirtype} will indicate which directory needs attention. [^chmod]

<span class="error">Apache module mod_rewrite is not installed.</span>
: This alert means the mod_rewrite module is not readable, possibly because it has not been uncommented in the php.ini file working on your website. You’ll need access to your web server to track this down and see, or contact your web host.

<span class="error">Old placeholder file is in the way.</span>
: This alert likely means you have created an actual folder in your server file tree that shares a name with a section you created in the Sections panel (Presentation > Sections), or vice versa. This can break your site. You need to rename or remove one or the other.

<span class="error">Missing files</span>
: A list of core system files that Textpattern expects to be a) available, b) readable. If any are missing or have their permissions set incorrectly, they will be listed here for you to correct. [^chmod]

<span class="error">The following errors were detected in your MySQL tables</span>
: If any of the database tables are corrupt or need repairing, they will be listed here. Connect to your MySQl administrative interface (usually phpMyAdmin or an equivalent) and repair the tables in question.

<span class="error">Temporary directory path and Plugin cache directory path should **not** match.</span>
: This alert means paths to your plugin cache and /textpattern/tmp directory locations are the same. Neither should be web accessible, but if you set them to the same location, a temp file could overwrite a plugin, and that would be bad. Create a different folder location for your plugin cache.

### Yellow warning alerts

Yellow warning alerts are not critical, per se, and sometimes can even be cascading[^cascading] or false.[^false] But when warnings are accurate, something needs resolved in order to work correctly, reliably, or securely. The only way to know when the alert is false or true, is to start fixing the reported problems one-by-one, from top to bottom, as you see them in your diagnostics. Several yellow alerts are possible.

<span class="warning">DNS lookup failed: {site URL}.</span>
: This alert means the **Site URL** preference (Admin > Preferences > Site) is probably incorrect; possibly the wrong name, a spelling mistake, or missing altogether. Check the value and make sure it's entered correctly. If you installed in the root web domain, use: example.com. If you installed in a subdirectory, use: example.com/subdirectory. If you installed in a subdomain as a separate website, use the pattern subdomain.example.com. Nothing else!

<span class="warning">Site URL has a trailing slash.</span>
: This alert means your **Site URL** preference value (Admin > Preferences > Site) has an ending forward slash on it like this, example.com/. Remove the slash.

<span class="warning">Site URL preference might be incorrect: {site URL}.</span>
: Similar to the first yellow alert, this is suggesting the **Site URL** as set in Preferences (Admin > Preferences > Site) does not match the actual URL you use to visit your website.

<span class="warning">Clean URL test failed.</span>
: This alert could appear for different reasons and may not be a problem, per se. Troubleshoot other red and yellow alerts first and it may go away. If not, it might be caused by the PHP configuration setting of `allow_url_fopen`, or some other issue with your web host server’s configuration.

<span class="warning">{path} still exists.</span>
: This alert means you need to remove the /textpattern/setup folder from the web server. The alert will show the actual folder path respective to your installation in place of {path}.

<span class="warning">Image directory is read-only.</span>
: This alert means permissions on your /images folder needs changed before you can add any images to it. Change permissions to chmod 755 or 711.[^chmod]

<span class="warning">No temporary directory defined.</span>
: This alert means you have no path set to the /textpattern/tmp directory in the **Temporary directory path** preference (Admin > Preferences > Admin) relative to the web server, or it is unrecognized (e.g. incorrect path). Add or correct the path.

<span class="warning">Your PHP installation is missing the <code>mail()</code> function. Therefore no emails can be sent from Textpattern, which limits certain functionality.</span>
: If your web host have disabled or removed the <code>mail()</code> function, you will not be able to send out new user notifications or password change instructions. Contact them to understand their reasons for restricting this functionality.

<span class="warning">Some Textpattern files have been modified.</span>
: This alert is pointing out that you, or someone else with access to your installation files, has modified one or more files from their default status. This could be an important alert if you know for a fact it was not you who modified the files. But if it was you, and the changes were intentional, ignore this alert. The alert will not go away unless the core files have been returned to default conditions for the software version they represent. For this reason, it is generally not a good idea to *hack* core files. Modifying plugin files will not trigger this alert; rather, those changes are indicated on the given plugin in the Plugins panel (Admin > Plugins).

<span class="warning">You are running a development version of Textpattern on a live server.</span>
: This alert means you have installed a future version of the software, not the latest stable release. This would be okay for local testing, but not recommended for a live production site online.

<span class="warning">The following PHP functions (which may be necessary to run Textpattern) are disabled on your server…</span>
: This alert will be followed by a number of PHP functions that are disabled on your web server. Textpattern needs certain functions enabled to work correctly, while other functions, if disabled, can be ignored. See [Diagnostic reporting on PHP functions](#diagnostic-reporting-on-php-functions) for more about which function are needed or not.

<span class="warning">Site URL preference might be incorrect.</span>
: This alert could either mean you do not have the right **Site URL** path set in Preferences (Admin > Preferences > Site), or, in the case of upgrading, you still need to update your index.php and/or .htaccess files (see next message). This could also be a false error. For example, symlinks cannot be correctly recognized, so you might get this error even if there's no true problem. Unless you are experiencing real technical issues, you shouldn't worry too much about this feedback message if it doesn't go away. Understandably that is not satisfying advice.

<span class="warning">Clean URL data test failed.</span>
: (Description needed.)

<span class="warning">Clean URL test failed.</span>
: (Description needed.)

[^cascading]: **Cascading problems**: Sometimes the existence of one yellow or red issue can be the cause of another, so be sure to reload the Diagnostics panel as you resolve each yellow or red issue; you might find it eliminates another in the process.

[^false]: **False problems**: On rare occasions, yellow and red messages have been known to appear but not go away when addressed as instructed by their help information. Textpattern developers have indicated this can happen in odd situations, and it's a false reading nearly every time, meaning there isn't anything to worry about. If you ever have this problem and can't seem to resolve it, post about it in the [Textpattern Forum Troubleshooting section](https://forum.textpattern.com/viewforum.php?id=67) and someone will try to help.

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
: The path to wherever your installation is (e.g. in document root or in a subdirectory thereof).

Textpattern path
: The path to your installation's /textpattern directory.

Article URL pattern
: The pattern of URL type you set. Corresponds with the **Article URL pattern** preference (Admin > Preferences > Site).

Temporary directory path
: The path of your /tmp directory relative to document root.

Site URL
: Your domain name and top-level domain (i.e. example.com). Corresponds with **Site URL** preference (Admin > Preferences > Site).

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
: Your time zone relative to Greenwich Mean Time (GMT). Corresponds with the **Time zone** preference (Admin > Preferences > Site). The output includes an offset value in parentheses, which helps developers determine if time-specific problems might stem from a wrong or outdated [tz database](https://en.wikipedia.org/wiki/Tz_database).

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
: A comma-separated list of all plugins (with version numbers) that are installed *and* turned on.

Admin-side theme
: The name and version number of the active administration side theme. The default is 'Hive'.

The installation and server data is followed by the contents of your .htaccess file (from the installation directory). For purposes here we show the [file contents from the current version code](https://github.com/textpattern/textpattern/blob/main/.htaccess) below:

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

Over time your .htaccess file will change as you add your own `mod_rewrite` rules, redirects, or what have you, and the changes will reflect in the diagnostics info display.

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

<span class="warning">The following PHP functions (which may be necessary to run Textpattern) are disabled on your server…</span>

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

These functions are *not* used by Textpattern.[^functions] If diagnostics reports one or more of these functions as disabled, you may safely ignore the message, because they do not affect Textpattern's operation in any way.

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

[^functions]: **Functions**: If you discover any functions named in your feedback message that are not listed above, create a new topic in the [Textpattern Forum Troubleshooting section](https://forum.textpattern.com/viewforum.php?id=67) and post the 'High' diagnostics info so someone can help you determine if the function is necessary or not.
