---
layout: document
category: Administration
published: true
title: Troubleshooting
description: Have you found an issue during install/upgrade?
---

# Troubleshooting an installation

If things don't go as expected when installing or upgrading Textpattern, or you're faced with an error message that you cannot figure, this page should help.

On this page:

* [Performance issues](#performance-issues)
  * [Slow website](#slow-website)
  * [Slow administration side](#slow-administration-side)
* [Feed issues](#feed-issues)
* [Error messages and codes](#error-messages-and-codes)
  * [500 Internal server error](#internal-server-error)
  * [404 Page not found](#page-not-found)
  * [Database unavailable](#database-unavailable)
  * [Allowed memory exhausted](#allowed-memory-size-exhausted)

## Performance issues

Normally, Textpattern is one of the fastest CMS platforms around. There are, however, a few circumstances that can cause performance issues.

### Slow website

From the [Preferences administration panel](http://docs.textpattern.io/administration/preferences-panel) set the 'Production status' to 'Testing' and load a page. Textpattern records the time it takes to generate and send each page. View the HTML source and scroll to the bottom. You can check the runtime figure to distinguish between slowdowns during page generation, and those that occur afterwards (i.e. during page rendering).

On a properly configured web server with a normal load and typical Textpattern templates and content, expected ranges are:

~~~
Runtime: 0.01 - 0.5 seconds
Queries: 20 - 50
Memory: 1500 - 3000 KB
~~~

Values outside these ranges are not necessarily cause for alarm if your page templates are complex. Also bear in mind that the figures will be different for each page load, and will vary due to plugins and other external factors like the traffic load on your web server. Try loading the page several times over a period of a few minutes and compare the results. A one-off anomaly probably means a temporarily overloaded server or network.

General performance improvements can usually be made using the following techniques:

* Minimize plugins: the more active plugins, the more code must be loaded, parsed and run. Don't use a plugin when you can achieve the same results with a built-in tag. And make sure you disable or remove any plugins you no longer use.
* Simplify your code: do your templates use complex nested conditionals, PHP code, or Forms within Forms? Simplify them. In particular, try to reduce the number of tags that require database queries. If you're not sure, remove tags one at a time and watch the Queries count.
* Cacheing: sometimes pages are necessarily complex, and there are limits to server performance. If you have a popular site that's not fast enough, try a cacheing plugin. Although [Textpattern is usually faster than WordPress out of the box](http://forum.textpattern.com/viewtopic.php?pid=292036#p292036), enabling an OpCode cache at the server level is also an option.

The important thing with any performance tweak is to change only one thing at a time, and always measure the results. If something has no real effect, change it back and try something else. You'll almost certainly find that one or two changes will have a large effect, while others will be insignificant.

If you're experiencing consistently high numbers for Runtime, Query and Memory counts, here are some things to check.

#### Runtime

A runtime figure that regularly measures 1 second or more usually indicates one of a few things:

* DNS issues: a slow or misconfigured DNS server at your web hosting company can cause high page runtimes. Usually this occurs in the Textpattern logging code. In the [Preferences administtrarion panel](http://docs.textpattern.io/administration/preferences-panel), set 'Use DNS?' to 'No', and see if that makes a difference. If not, try disabling logging altogether.
* Plugins: plugins aren't necessarily as efficient as Textpattern itself. If your performance problems coincide with the installation of a plugin, or occur only on a particular page template that invokes a plugin, try disabling it and see if there's a difference. If your page won't display properly without the plugin, try temporarily reverting to the default Textpattern Page template and Form template.
* PHP code: if you've included any PHP code in your page templates, whether directly in the template or indirectly via an `include()` call or similar, try disabling it. In particular, check for any code that might try to fetch a file from an external server, e.g. by using a `http://..` URL in an `fopen()` or `include()` call.
* MySQL issues: MySQL doesn't have to run on the same physical machine as your web server. Some hosting companies run these on separate servers connected by a fast LAN connection, which is fine. However, if Textpattern and MySQL are on entirely different networks, performance will be unavoidably slow, since all MySQL queries and results must travel back and forth over a comparatively slow internet connection every time a Textpattern page is viewed. Other MySQL performance problems can be harder to diagnose. An overloaded MySQL server can slow down Textpattern - ask your hosting company if this could be the case.
* Spam blocklist: sometimes the built-in blocklist checking causes page slowdowns. Go to the [Preferences administration panel](http://docs.textpattern.io/administration/preferences-panel) and remove `sbl.spamhaus.org` from the 'Spam blocklists' preference if it is there.

#### Queries and Memory

A high number of queries, or excessive memory usage, is usually caused by a plugin or custom PHP code. As above, try disabling this code to see if it makes a difference. Plugins that produce a list of articles are the most likely culprits: some popular 'archive' plugins are very inefficient, loading the entire database of articles into memory at once.

#### Page rendering

If your Runtime, Queries and Memory figures are all in or near the normal limits, but you're still experiencing slow page loading, the problem is almost certainly caused by the content of your page. Some things to check:

* JavaScript - does your page include JavaScript code? Try disabling it, it might be slow.
* Counters and external stats - are you using an image or JavaScript link to an offsite 'hit counter', stats service, or a local stats application like Shortstat? Try removing the link to see if it makes a difference.
* Links to off-site objects - does your page link to images, JavaScript, CSS or other objects on another web server? Do your pages include content from external sources such as Gravatars, del.icio.us or similar? Any of these could be the culprit.
* Advertisements - banner, popup and text ads all work by loading content from another server. Try disabling them and measure the difference.
* CSS - certain CSS techniques can cause choppy page loading and scrolling. In particular, 'fixed' background images and blocks can cause loading and scrolling problems. These problems are all on the browser side, and are unrelated to Textpattern or the server.

### Slow administration side

This is almost always due to a plugin. Try turning them off one by one and testing any troublesome admin panels. If you can narrow it down a single plugin, try contacting the author to see if there's a newer version available, or if the issue can be fixed.

## Feed issues

Use a [feed validator](http://www.feedvalidator.org/) if you suspect a feed problem. If the validator indicates that your feed is invalid, then please post its messages verbatim in your support request. Also, the URL you submit to the feed validator is your feed URL, not your homepage URL - the feed validator does not auto-detect feeds.

Some other avenues of exploration:

* If the feed validator reports you have a missing description element, make sure there's something entered in the 'Site slogan' field in your [Preferences administration panel](http://docs.textpattern.io/administration/preferences-panel).
* If your feeds are empty or don't contain the right articles, check the 'Syndicate?' option, found on the [Sections administration panel](http://docs.textpattern.io/administration/sections-panel). Sections that have the 'Syndicate?' option turned off will not show up in your feeds.
* If your browser tries to download the feed when the feed's link is clicked then, depending on your browser, this is the correct behaviour. More likely than not, your browser is not capable of displaying XML. As the feeds are sent with the correct MIME type, your browser offers to download the file, rather than just displaying the raw content. This is the correct behaviour, and your feed should work in a proper feed aggregator.
* If you want to set up feed autodetection, you'll need to add tags like the following to the `<head>` of your main page:

~~~ html
<txp:feed_link format="link" flavor="rss" />
<txp:feed_link format="link" flavor="atom" />
~~~

## Error messages and codes

Notices when your [Production status](http://docs.textpattern.io/administration/preferences-panel#production-status) is set to 'Debugging' mode are not unusual, and by themselves aren't an indicator of something wrong. Such messages are `Undefined index`, or `Unregistered tag`. If the only symptom you have is that there are warnings/notices produced when this mode is active, then there's likely nothing wrong, and you can safely ignore them.

If, however, some or all pages of your site - or Textpattern administration panels - are throwing HTTP status code error messages, they are more serious. Here are some things you can try:

### 500 Internal Server Error

These and similar errors are almost always caused by `.htaccess`. The `.htaccess` file is used by Textpattern to manage 'clean' URLs, for example:

~~~
http://example.com/articles/123/hello-world
~~~

instead of:

~~~
http://example.com/index.php?id=123.
~~~

While we've done our best to ensure the `.htaccess` file supplied with Textpattern will work with as many web server configurations as possible, some servers are configured to restrict this. A `500 Internal Server Error` or `403 Forbidden` response is usually the result of a `.htaccess` file that tries to exceed these restrictions.

The simplest thing you can do to fix the problem is simply delete or rename `.htaccess`, and switch to 'Messy' URL mode (see [permanent link mode](http://docs.textpattern.io/administration/preferences-panel#permanent-link-mode)).

You'll find some other pointers in @@TODO: link to Clean URLs don't work in Diagnostics panel@@.

### 404 Page Not Found

If you see this, but the site works if you use `index.php` in the URL, uncomment (remove the # from) the following line in your `.htaccess` file:

~~~
#DirectoryIndex index.php index.html
~~~

Restart your web server and, if that doesn't help or causes a 500 Internal Server error, contact your web host tech support and ask them about enabling `DirectoryIndex` for PHP files.

### Database unavailable

This means Textpattern is unable to connect to the MySQL database. This can happen occasionally on some shared/virtual hosting servers when another user hogs all the available database resources. If it happens regularly, ask your hosting company whether there's something they can do to fix the problem.

If you're seeing "Database Unavailable" on every page view, without exception, then the problem is most likely a database server crash, or a misconfiguration. Check the settings in your textpattern `config.php` file and make sure you can connect to the database using those settings in phpMyAdmin or similar SQL client. If the database server is working, check your `.htaccess` file and consider temporarily disabling it. If problems persist, talk to your hosting company.

### Allowed memory size of X bytes exhausted

Textpattern's memory usage is quite low - usually no more than a couple of megabytes.

Unless your server admin has set the PHP memory limit far too low (unlikely, but not impossible) the cause is probably a plugin. Some older archive page plugins work by loading all articles into memory at once. This could easily exhaust the available memory if you have a large number of articles.

Disable your plugins one by one, until you find the culprit. If the cause is indeed a plugin, we suggest contacting its author about the problem. In some cases, the plugin's functionality could be replced with core [Textpattern tags](http://docs.textpattern.io/tags) which may be more memory efficient.
