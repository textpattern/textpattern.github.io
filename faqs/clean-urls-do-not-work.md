---
layout: document
category: FAQs
published: true
title: "FAQ: Clean URLs don't work"
description: These and similar problems happen when you use 'clean' URL mode on a server that doesn't support mod_rewrite in .htaccess.
---

# FAQ: Clean URLs don't work

## Apache web server

These and similar problems happen when you use 'clean' URL mode on a server that doesn't support `mod_rewrite` in `.htaccess`, or requires additional configuration in order to work. The `.htaccess` file supplied with Textpattern is designed to work on most Apache servers, but there is no universal solution.

The Textpattern [Diagnostics panel](https://docs.textpattern.com/administration/diagnostics-panel) will attempt to warn you if it can determine that clean URLs are not supported on your system. However, it doesn't detect all incompatible servers - the absence of a warning does **not** mean that your server supports clean URLs.

The simplest solution is to use 'messy' URLs instead (see [Article URL pattern](https://docs.textpattern.com/administration/preferences-panel#article-url-pattern), and remove or move aside the `.htaccess` file).

Some servers support `mod_rewrite`, but require some additional configuration in order to make it work properly.

If your Apache web server supports `mod_rewrite` in `.htaccess`, you can find some suggestions for specific web hosts [in this forum thread](https://forum.textpattern.io/viewtopic.php?id=7702).

On servers that support `mod_rewrite`, the most common solution is to uncomment (remove the leading `#` from) this line in `.htaccess`:

~~~ apacheconf
#RewriteBase /relative/web/path/
~~~

..and change the path as appropriate. If Textpattern is installed in your website root (i.e. the front Textpattern page is at `https://example.com/`), you should use this:

~~~ apacheconf
RewriteBase /
~~~

If Textpattern is installed in a subdirectory (the front Textpattern page is at `https://example.com/mydir/`):

~~~ apacheconf
RewriteBase /mydir/
~~~

Other changes required on some hosts include:

~~~ apacheconf
DirectoryIndex index.php index.html
~~~

Or:

~~~ apacheconf
Options +FollowSymLinks
~~~

Both of these lines are included in the default `.htaccess` file, so you can simply uncomment them (remove the leading `#` from them).

If you are configuring your own Apache server, or using a hosting arrangement that lets you modify your own Apache configuration settings, you might need to add the following to the appropriate place in `httpd.conf`:

~~~ apacheconf
AllowOverride FileInfo
~~~

If none of those changes work, or if they cause a [500 server error](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/500), you'll need to use 'messy' URLs instead, or ask your hosting company for help.
