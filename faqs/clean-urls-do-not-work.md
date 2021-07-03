---
layout: document
category: FAQs
published: true
title: "FAQ: Clean URLs don't work"
description: These and similar problems happen when you use 'clean' URL mode on a server that doesn't support `mod_rewrite` in .htaccess.
---

# FAQ: Clean URLs don't work

This is usually a web server configuration issue.

These and similar problems happen when you use an **Article URL pattern**, as set in the Site section of the Preferences panel, as anything other than '?=messy' on a web server that does not support rewriting of URLs. For Apache, this is typically `mod_rewrite`. The *.htaccess* file supplied with Textpattern is designed to work on most Apache servers, but there is no universal solution.

The Textpattern [Diagnostics](/administration/diagnostics-panel) panel will attempt to warn you if it can determine that clean URLs are not supported on your system. However, it doesn't detect all incompatible servers. The absence of a warning does *not* mean that your server supports clean URLs.

The simplest solution is to select '?=messy' for the [Article URL pattern](/administration/preferences-panel#article-url-pattern) preference, and remove or move aside the *.htaccess* file.

Some servers support `mod_rewrite`, but require some additional configuration in order to make it work properly.

If your Apache web server supports `mod_rewrite` in *.htaccess*, you can find some suggestions for specific web hosts [in this forum thread](https://forum.textpattern.com/viewtopic.php?id=7702).

On servers that support `mod_rewrite`, the most common solution is to uncomment (remove the leading `#` from) this line in the *.htaccess* file:

``` apacheconf
#RewriteBase /relative/web/path/
```

And change the path as appropriate. If Textpattern is installed in your website root (i.e. the front Textpattern page is at `https://example.com/`), you should use this:

``` apacheconf
RewriteBase /
```

If Textpattern is installed in a subdirectory (i.e the front Textpattern page is at `https://example.com/mydir/`), then use:

``` apacheconf
RewriteBase /mydir/
```

Other changes required on some hosts include:

``` apacheconf
DirectoryIndex index.php index.html
```

Or:

``` apacheconf
Options +FollowSymLinks
```

Both of these lines are included in the default *.htaccess* file, so you can simply uncomment them (remove the leading `#` from them).

If you are configuring your own Apache server, or using a hosting arrangement that lets you modify your own Apache configuration settings, you might need to add the following to the appropriate place in the *httpd.conf* file:

``` apacheconf
AllowOverride FileInfo
```

If none of those changes work, or if they cause a [500 server error](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/500), you will need to use '?=messy' URLs as described earlier, or ask your hosting provider for help.
