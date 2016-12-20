---
layout: document
category: Administration
published: true
title: "Diagnostics panel"
description: The Diagnostics panel is important for troubleshooting problems with your Textpattern installation
---

# Diagnostics panel

The **Diagnostics** panel is important for troubleshooting problems with your Textpattern installation, such as misconfigurations you might discover when installing or upgrading to a new version. The panel can also be useful for troubleshooting functional problems you inadvertently introduce when extending the system, modifying the `.htaccess` file, or some other slight of hand.

On this page:

-   [Diagnostic info display](#sec1)
-   [Pre-flight checks](#sec2)
-   [Diagnostic reporting on PHP functions](#sec3)

## Diagnostic info display

The actual diagnostics information is displayed in the **Diagnostics
info** region at the bottom of the panel display. The volume of details
displayed may be set to "Low" (the default) or "High", which you can
toggle using the **Detail** selection control under the info display
field.

### Low info display

Low diagnostics info begins with a set of data values about your
installation and server technology. These values and their descriptions
are described in the following table.

notextile.

<div class="tabular-data" itemscope itemtype="http://schema.org/Table">
  Data item                            What it tells you
  ------------------------------------ ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Textpattern version:                 The version you currently have installed.
  Last update:                         The date/time you last updated your installation.
  Document root:                       The path to the web server's public (document root) directory, specifically.
  \$path_to_site:                    The path to wherever your installation is (e.g., in document root or in a sub-directory thereof).
  Textpattern path:                    The path to your installation's */textpattern* directory.
  Permanent link mode:                 The pattern of URL type you set. Corresponds with the "Permanent link mode" setting in the **Site** section of "**Preferences**":preferences/preferences-panel.
  Temporary directory path:            The path of your */tmp* directory relative to document root.
  Site URL:                            Your domain name and (n)TLD (i.e. domain.tld). Corresponds with "Site URL" setting in the **Site** section of "**Preferences**":preferences/preferences-panel.
  PHP version:                         The version number of your PHP install.
  GD Graphics Library:                 
  Server TZ:                           The server's 'default timezone'; determined by a "specific order of preferences":https://secure.php.net/manual/en/function.date-default-timezone-get.php.
  Server local time:                   The local date/time of your web server (yyyy-mm-dd hh:mm:ss).
  DST enabled?:                        Whether or not Daylight Savings Time is enabled ("0"=no, "1"=yes). Corresponds with the "DST enabled?" setting in the **Site** section of "**Preferences**":preferences/preferences-panel.
  Automatically adjust DST setting?:   Whether or Textpattern will adjust DST automatically ("0"=no, "1"=yes). Corresponds with the "Automatically adjust DST setting?" setting in the **Site** section of "**Preferences**":preferences/preferences-panel.
  Time zone:                           Your time zone relative to Greenwich Mean Time (GMT). Corresponds with the "Time zone" setting in the **Site** section of [**Preferences**](preferences/preferences-panel). The output includes an offset value in parentheses, which helps developers determine if time-specific problems might stem from a wrong or outdated "tz database":https://en.wikipedia.org/wiki/Tz_database.
  MySQL:                               The version number and build of your MySQL database server.
  Locale:                              The language and character set you have configured.
  Server:                              Your web server type (e.g. Apache).
  PHP server API:                      
  RFC 2616 headers:                    
  Server OS:                           The name and version number of the server's operating system.
  Active plugins:                      A comma-separated list of all plugins (with version numbers) that are installed *and* turned **ON**.
  Admin-side theme:                    The name and version number of the active administration side theme. The default is Hive.

notextile.

</div>
The installation and server data is followed by the contents of your
*.htaccess* file (from the installation directory). For purposes here we
show the [file contents from the current version
code](https://github.com/textpattern/textpattern/blob/master/.htaccess),
which is the part between the two dotted lines below:

    .htaccess file contents:
    ------------------------
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

        RewriteCond %{HTTP:Authorization}  !^$
        RewriteRule .* - [E=REMOTE_USER:%{HTTP:Authorization}]
    </IfModule>

    #php_value register_globals 0

    # SVG
    <IfModule mod_mime.c>
        AddType image/svg+xml  svg svgz
        AddEncoding gzip       svgz
    </IfModule>
    ------------------------

Over time your *.htaccess* file will change as you add your own
<i>mod_rewrite</i> rules, or whatever, and the changes will reflect in
the diagnostics info display.

### High info display

High diagnostics info display includes the Low info above, but adds the
following information.

notextile.

<div class="tabular-data" itemscope itemtype="http://schema.org/Table">
  Data item                              What it tells you
  -------------------------------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Charset (default/config):              if you don't see a lot of "UTF-8" values on these "character_set" items, you might want ask yourself why not
  character_set_client:                
  character_set_connection:            
  character_set_database:              
  character_set_filesystem:            
  character_set_results:               
  character_set_server:                
  character_set_system:                
  character_sets_dir:                  
  "n" Tables:                            "n" being the number of Textpattern tables that exist in your installation (a default install has 17, anything more is from plugins or other extensions you've added); the value also indicates if tables are "OK" or not
  "n" Custom fields:                     "n" being the number of custom fields; value also indicates name of all counted fields
  PHP extensions:                        list of extension names/versions your web host has enabled
  pretext_data:                         value is a piece of code; useful for developers to evaluate
  {/textpattern files, not shown here}   list of Textpattern configuration files from the /textpattern directory; indicates file path, revision number, and MD5 Checksum hash number

notextile.

</div>
The last item above reflects a long list of Textpattern configuration
files which makes up the end of the High info data shown.

## Pre-flight checks

The **Pre-flight checks** region, at top of the panel is where
diagnostic feedback messages appear. There are four kinds of feedback
messages: success (green), information (blue), warning (yellow), and
error (red).

### Success (green)

There is only one green message:

<span class="success">All checks passed!</span>

This message displays when you successfully address and/or troubleshoot
all, blue, yellow, and red feedback messages that might exist. *Go
green!*

### Information (blue)

Blue messages are informing you of something you might like to know.
They're not necessarily functional problems you need to troubleshoot.
There are three possible blue messages:

-   %(information)New Textpattern version {version} [available for
    download](http://textpattern.com/download.%) -- It's saying you're
    not using the latest stable release, where {version} will be the
    latest version number. The first data item in the "Low"
    **Diagnostics info** display described above will indicate your
    current working version. Because this is a blue message, you don't
    *have* to upgrade (yet) but it's good practice to do so for
    [security](http://docs.textpattern.io/security/) reasons, if
    nothing else.
-   <span class="information">Clean URLs are only supported on Apache,
    use at your own risk.</span> -- It's saying you're *not* using an
    Apache web server. The assumption is that you know what you're doing
    so you can ignore this message. It goes away if you ever switch
    to Apache.
-   <span class="information">File uploads are disabled</span> -- This
    appears if the permissions you have set on your *files* folder in
    the installation tree is read only. The assumption is that you've
    consciously made this choice, so you can ignore this message. If you
    make the files folder writable, it will go away.[^1]
-   <span class="information">There was a problem trying to connect to
    the RPC server. Please try again later.</span> -- You may get this
    if you're working on a local install (v. 4.5.7) and not connected to
    the internet. Your local install is trying to ping the RPC server
    and has no internet connection to do so.

### Warning (yellow)

Warnings are not critical, per se, and sometimes can even be
cascading[^2] or false.[^3] But when warnings are accurate, something
needs resolved in order to work correctly, reliably, or securely.
Several warning messages are possible:

-   path_to_site_missing --
-   <span class="warning">DNS lookup failed: {site URL}</span> -- This
    means the "Site URL" preference value in the
    [**Preferences**](preferences/preferences-panel) panel is probably
    incorrect; possibly the wrong name, a spelling mistake, or
    missing altogether. Check the value and make sure it's entered
    exactly like this, `domain.tld`, replacing your domain name and
    TLD extension.
-   <span class="warning">Site URL preference might be incorrect: {site
    URL}</span> -- Similar to the previous message, this is suggesting
    the "Site URL" as set
    [**Preferences**](preferences/preferences-panel) does not match the
    actual URL you use to visit your website.
-   <span class="warning">Clean URL test failed.</span> -- This could
    appear for different reasons and may not be a problem, per se.
    Troubleshoot other messages first and it may go away too. If not, it
    might be caused by the PHP configuration setting of
    `allow_url_fopen`, or some other hosting issue.
-   <span class="warning">Site URL has a trailing slash</span> -- This
    means your "Site URL" preference value in the
    [**Preferences**](preferences/preferences-panel) panel has an ending
    forward slash on it like this, `domain.tld/`. Tsk-tsk. Remove
    the slash.
-   <span class="warning">{path} still exists</span> -- This means you
    need to remove the */textpattern/setup* folder from the web server;
    {path} will be replaced with the actual folder path respective to
    your installation.
-   <span class="warning">image directory is read-only</span> -- This
    means permissions on your */images* folder needs changed before you
    can add any images to it; change permissions to chmod 755 or
    711.[^4]
-   <span class="warning">No temporary directory defined</span> --
    \[todo:explanation\]
-   warn_mail_unavailable -- \[todo:explanation\]
-   <span class="warning">Your version of PHP has known
    security vulnerabilities. Please turn <code>register_globals</code>
    off or update to a newer PHP version.</span> -- \[todo:explanation\]
-   <span class="warning">Some Textpattern files have been
    modified</span> -- \[todo:explanation\]
-   <span class="warning">You are running a development version of
    Textpattern on a live server.</span> -- Means you're intallation
    version is a future development version, not the lastest
    stable release. This would be okay for local testing, but not
    recommended for a live production site online.
-   <span class="warning">The following PHP functions (which may be
    necessary to run Textpattern) are disabled on your server...</span>
    -- If you see this message, it will be followed by a number of PHP
    functions that are disabled on your web server. Textpattern needs
    certain functions enabled to work correctly, while other functions,
    if disabled, can be ignored. See section below, [Diagnostics
    reporting on PHP functions](#sec3), for more about which function
    are needed or not.
-   <span class="warning">Site URL preference might be incorrect</span>
    -- This could either mean you do not have the right “Site URL” path
    set in [**Preferences**](preferences/preferences-panel), or, in the
    case of upgrading, you still need to update your *index.php* and/or
    *.htaccess* files (see next message). (This could also be a
    false error. For example, symlinks cannot be correctly recognized,
    so you might get this error even if there's no true problem. Unless
    you are experiencing real technical issues, you shouldn't worry too
    much about this feedback message if it doesn't go away.
    Understandably that is not satisfying advice.)
-   <span class="warning">Clean URL data test failed</span> --
    \[todo:explanation\]
-   <span class="warning">Clean URL test failed.</span> --
    \[todo:explanation\]

### Error (red)

Red messages mean something critical appears to be wrong and you need to
troubleshoot it immediately.

Possible red messages include:

-   <span class="error">Textpattern requires at least version {version}
    of PHP to be installed on your server</span> -- \[todo:explanation\]
-   <span class="error">/index.php is inaccessible</span> -- This
    suggests your *index.php* file is not available, is not the right
    version, or that your "Site URL" is set wrong in
    [**Preferences**](preferences/preferences-panel). It could also mean
    the *index.php* file was not updated for whatever reason during a
    recent upgrade. Update the file using the one in the [current
    Textpattern repository](http://dev.textpattern.com/browser/current/)
    and refresh diagnostics.
-   <span class="error">.htaccess file is missing</span> -- This
    concerns the *.htaccess* file, but doesn't necessarily mean the file
    is missing; the message usually appears if you are trying to use one
    of the “clean” URL settings, and you have one of the previous
    diagnostic issues with the wrong path or have a missing
    *index.php* file. Take care of those issues first and this message
    may disappear. If that does not work, then definitely check to see
    if you even have an *.htaccess* file. If the file is there, then
    either replace it from the [current Textpattern
    repository](http://dev.textpattern.com/browser/current/), or click
    the help link next to this particular message and replace the
    contents of your existing *.htaccess* file with the indicated
    rewrite rules in the help dialog.
-   <span class="error">`$path_to_site` is inaccessible.</span> -- This
    means either one or both of the previous diagnostics are a problem.
    Follow the troubleshooting procedures for them accordingly, and this
    problem will likely go away.
-   <span class="error">{dirtype} is not writable</span> --
    \[todo:explanation\]
-   <span class="error">Apache module mod_rewrite is
    not installed.</span> -- \[todo:explanation\]
-   <span class="error">Old placeholder file is in the way</span> --
    This likely means you have created an actual folder in your server
    file tree that shares a name with a *section* you created in the
    **Sections** panel, or vice versa. This can break your site. You
    need to rename or remove one or the other.
-   <span class="error">Missing files</span> -- \[todo:explanation\]
-   <span class="error">The following errors were detected in your MySQL
    tables</span> -- \[todo:explanation\]
-   <span class="error">Temporary directory path and Plugin cache
    directory path should **not**\* match.</span> -- This means paths to
    your plugin cache and *tmp* locations are the same. Neither should
    be web accessible, but if you set them to the same location, a temp
    file could overwrite a plugin, and that would be bad. Create a
    different folder location for your plugin cache.

## Diagnostic reporting on PHP functions

Textpattern requires certain PHP functions to be enabled for your
website to work properly, or to work at all. Your website administrator
or web host will be in control of these, and may have certain functions
turned off for "security" reasons.

Diagnostics can tell you if any of these necessary functions are
disabled. You'll see this pre-flight check warning: <span
class="warning">The following PHP functions (which may be necessary to
run Textpattern) are disabled on your server...</span>.

If so, compare the indicated functions with those in the table below to
see if any match and thus need enabled.

### Functions used by Textpattern

The following functions are used by Textpattern. If your diagnostics
reports any of these as *disabled*, you need to get in touch with your
web server administrator or web host and explain why you need them
turned on (for your Textpattern site to work). Point them to this page,
if you want. If they won't help you, find a more suitable web host,
because there is no real reason to disable these functions.

notextile.

<div class="tabular-data" itemscope itemtype="http://schema.org/Table">
  Name                   Use
  ---------------------- ----------------------------------------------------------------------------------------------------------------------------------------
  apache_get_modules   Helps determine whether clean urls could be used at setup, and for diagnostics info.
  apache_get_version   Helps provide diagnostics info regarding clean urls.
  parse_ini_file       Language features, even if English is used.
  php_sapi_name        Determines whether PHP is running as an Apache module or CGI. Used for sending header information appropriate to the platform.
  php_uname             Provides diagnostics info regarding the server’s operating system.
  set_time_limit       Makes sure PHP does not timeout before installation, updates (including language string changes), and file downloads can be completed.

notextile.

</div>
### Functions *not* used by Textpattern

These functions are *not* used by Textpattern.[^5] If diagnostics
reports one or more of these functions as disabled, you may safely
ignore the message, because they do not affect Textpattern's operation
in any way.

-   apache_child_terminate
-   apache_getenv
-   apache_note
-   apache_setenv
-   chgrp
-   chown
-   close_log
-   debugger_off
-   debugger_on
-   define_syslog_variables
-   diskfreespace
-   disk_total_space
-   dl
-   error_log
-   escapeshellarg
-   escapeshellcmd
-   exec
-   get_current_user
-   getrusage
-   highlight_file
-   imagefilltoborder
-   ini_alter
-   ini_restore
-   leak
-   link
-   listen
-   mysql_pconnect
-   openlog
-   pack
-   passthru
-   pclose
-   pfsockopen
-   phpinfo
-   popen
-   proc_close
-   proc_get_status
-   proc_nice
-   proc_open
-   proc_terminate
-   putenv
-   readlink
-   set_socket_blocking
-   shell_exec
-   show_source
-   socket_... (i.e. socket_bind)
-   symlink
-   syslog
-   system
-   system_exec
-   virtual
-   wget

[^1]: **Folder permissions:** A chmod setting of 755 or 711 should work
    to make a folder writable, and is secure. A lot of people have
    trouble setting these values, however, and need to use a chmod of
    777, which has [security
    implications](http://forum.textpattern.com/viewtopic.php?id=26613).
    The discrepancy is due to how Apache directives are configured on
    the web server, which means you may have to ask your server
    administrator or web host to change the directives. If they won't do
    it, it might be time to find a new web host, because no web host
    should force you to operate your site insecurely.

[^2]: **Cascading problems:** Sometimes the existence of one yellow or
    red issue can be the cause of another, so be sure to reload the
    Diagnostics panel as you resolve each yellow or red issue; you might
    find it eliminates another in the process.

[^3]: **False problems:** On rare occasions, yellow and red messages
    have been known to appear but not go away when addressed as
    instructed by their help information. Textpattern developers have
    indicated this can happen in odd situations, and it's a false
    reading nearly every time, meaning there isn't anything to worry
    about. If you ever have this problem and can't seem to resolve it,
    post about it in the [Troubleshooting
    forum](http://forum.textpattern.com/viewforum.php?id=67) and someone
    will try to help.

[^4]: **Folder permissions:** A chmod setting of 755 or 711 should work
    to make a folder writable, and is secure. A lot of people have
    trouble setting these values, however, and need to use a chmod of
    777, which has [security
    implications](http://forum.textpattern.com/viewtopic.php?id=26613).
    The discrepancy is due to how Apache directives are configured on
    the web server, which means you may have to ask your server
    administrator or web host to change the directives. If they won't do
    it, it might be time to find a new web host, because no web host
    should force you to operate your site insecurely.

[^5]: If you discover any functions named in your feedback message that
    are not listed above, create a new topic in the [Troubleshooting
    forum](http://forum.textpattern.com/viewforum.php?id=67) and post
    the "High" diagnostics info so someone can help you determine if the
    function is necessary or not.
