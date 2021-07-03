---
layout: document
category: Installation
published: true
title: Troubleshooting a Textpattern installation
description: Have you found an issue during a Textpattern install/upgrade?
---

# Troubleshooting a Textpattern installation

If things don't go as expected when installing or upgrading Textpattern, or you're faced with an error message that you cannot figure, this page should help.

On this page:

* [The Tag Trace](#the-tag-trace)
* [Performance issues](#performance-issues)
  * [Slow website](#slow-website)
  * [Slow administration side](#slow-administration-side)
* [Blank page output](#blank-page-output)
* [Feed issues](#feed-issues)
* [Error messages and codes](#error-messages-and-codes)
  * [500 Internal server error](#internal-server-error)
  * [404 Page not found](#page-not-found)
  * [Database unavailable](#database-unavailable)
  * [Allowed memory exhausted](#allowed-memory-size-exhausted)

## The Tag Trace

Whether you're experiencing site slowdowns, bugs in your site templates, or looking for misbehaving plugins, the Tag Trace is an essential diagnostics tool. To switch it on, set the [Production Status](/administration/preferences-panel#site-preferences) on the Preferences panel to 'Debugging'. Whenever this mode is on, Textpattern appends a Tag Trace to the HTML output of each page - both on the administration side and public website. This is your key to working out which Textpattern tags are being executed and their outcome.

View the HTML source of the page, and scroll to the bottom. The trace looks something like this:

~~~
<!-- Trace summary:
Runtime   : 198.67 ms
Query time: 44.58 ms
Queries   : 25
Memory (*): 7644 kB
-->

<!-- Trace log:
  Time(ms) | Duration | Trace
      3.55 |     2.51 | [PHP includes, stage 1]
      6.27 |    13.15 | [PHP includes, stage 2]
      6.55 |          | 	[Textpattern autoload dir: 'vendors']
      6.64 |          | 	[Textpattern autoload dir: 'lib']
     16.28 |     0.41 | 	[Load: 'vendors/Txp.php']
     16.55 |     0.10 | 		[Load: 'vendors/Textpattern/Container/FactoryInterface.php']
     16.69 |          | 		[Class loaded: 'Txp']
…
     46.85 |   123.46 | [Loading plugins]
…
    176.02 |     0.40 | [SQL: SELECT page, css FROM txp_section WHERE name = 'default' LIMIT 1 ]
    176.43 |          | [Rows: 1]
    176.59 |     0.02 | [Callback_event: 'pretext_end', step='', pre='0']
    176.73 |     0.01 | [Callback_event: 'log_hit', step='', pre='0']
    176.75 |     0.01 | [Callback_event: 'textpattern', step='', pre='0']
    176.80 |     0.45 | [SQL: SELECT user_html FROM txp_page WHERE name = 'default' ]
    177.26 |          | [Rows: 1]
    177.27 |          | [Page: 'default']
    177.90 |     0.14 | <txp:meta_author title="1" />
    178.05 |     0.04 | <txp:page_title />
    178.10 |     0.32 | <txp:meta_description />
    178.15 |     0.24 | 	[SQL: SELECT description FROM txp_section WHERE name = 'default' ]
    178.40 |          | 	[Rows: 1]
    178.43 |     0.01 | <txp:site_url />
    178.71 |     1.70 | <txp:rvm_css format="link" />
    178.76 |     0.21 | 	[SQL: SELECT css FROM txp_section WHERE name='default' ]
    178.98 |          | 	[Rows: 1]
    179.01 |     0.01 | 	[Callback_event: 'sanitize_for_url', step='', pre='0']
…
    195.21 |     0.02 | 	<txp:if_first_article>
    195.22 |          | 		[false]
    195.23 |          | 	</txp:if_first_article>
    195.23 |     0.17 | 	<txp:permlink>
*   195.28 |     0.10 | 		<txp:title />
    195.41 |          | 	</txp:permlink>
    195.41 |     0.05 | 	<txp:posted format="%Y-%m-%d" />
…
    198.59 |          | [ ~~~ secondpass ~~~ ]
    198.65 |     0.02 | [Callback_event: 'textpattern_end', step='', pre='0']
-->

<!-- Query log:
Duration | Query
   10.53 | [SQL: SELECT name, val FROM txp_prefs WHERE prefs_id = 1 AND user_name = '' ]
    9.85 | [SQL: SELECT name, data FROM txp_lang WHERE lang = 'en-gb' AND name != '' AND event IN ('public','common') ]
   11.24 | [SQL: SELECT name, code, version FROM txp_plugin WHERE status = 1 AND type IN (0,1,5) ORDER BY load_order ASC, name ASC ]
    0.40 | [SQL: SELECT page, css FROM txp_section WHERE name = 'default' LIMIT 1 ]
    0.45 | [SQL: SELECT user_html FROM txp_page WHERE name = 'default' ]
    0.24 | [SQL: SELECT description FROM txp_section WHERE name = 'default' ]
    0.21 | [SQL: SELECT css FROM txp_section WHERE name='default' ]
    0.31 | [SQL: SELECT name FROM txp_section WHERE on_frontpage != '1' ]
    1.62 | [SQL: SELECT COUNT(*) FROM textpattern WHERE 1 = 1 AND Status = 4 AND Posted <= from_unixtime(1591515914) ]
    0.74 | [SQL: SELECT *, UNIX_TIMESTAMP(Posted) AS uPosted, UNIX_TIMESTAMP(Expires) AS uExpires, UNIX_TIMESTAMP(LastMod) AS uLastMod FROM textpattern WHERE 1 = 1 AND Status = 4 AND Posted <= from_unixtime(1591515914) ORDER BY Posted DESC LIMIT 0, 10 ]
    0.47 | [SQL: SELECT Form FROM txp_form WHERE name = 'article_listing' ]
…
-->
~~~

Every plugin, every database query, and its associated 'cost' in terms of memory usage and time taken is detailed. The rows are listed in order of their execution as the page is rendered. If something is eating too much memory or taking a long time to run, the tag trace will tell you what it is so you can delve further.

It is also a good place to check your Page and Form logic, because it shows the result of conditional tags. If part of your page is not showing where you expect, the tag trace can help find errors in your templates. By putting the site in debugging mode, it also highlights any PHP errors on each page, which may lead to further investigative work.

Since the tag trace is output on the panels too, you can use it to find poorly-behaving plugins and fix/optimise them.

If the problem persists and you can't fathom it out, post the _relevant parts_ of the tag trace in a new topic on the [Textpattern Forum](https://forum.textpattern.com/) along with a description of the problem or what you expect to see, and someone will endeavour to help you out.

## Performance issues

Normally, Textpattern is one of the fastest CMS platforms around. There are, however, a few circumstances that can cause performance issues.

### Slow website

From the [Preferences panel](/administration/preferences-panel) set the 'Production status' to 'Testing' and load a page. Textpattern records the time it takes to generate and send each page. View the HTML source and scroll to the bottom. You can check the runtime figure to distinguish between slowdowns during page generation, and those that occur afterwards (i.e. during page rendering).

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
* Cacheing: sometimes pages are necessarily complex, and there are limits to server performance. If you have a popular site that's not fast enough, try a cacheing plugin. Although [Textpattern is usually faster than WordPress out of the box](https://forum.textpattern.com/viewtopic.php?pid=292036#p292036), enabling an OpCode cache at the server level is also an option.

The important thing with any performance tweak is to change only one thing at a time, and always measure the results. If something has no real effect, change it back and try something else. You'll almost certainly find that one or two changes will have a large effect, while others will be insignificant.

If you're experiencing consistently high numbers for Runtime, Query and Memory counts, here are some things to check.

#### Runtime

A runtime figure that regularly measures 1 second or more usually indicates one of a few things:

* DNS issues: a slow or misconfigured DNS server at your web hosting provider can cause high page runtimes. Usually this occurs in the Textpattern logging code. In the [Preferences panel](/administration/preferences-panel), set 'Use DNS?' to 'No', and see if that makes a difference. If not, try disabling logging altogether.
* Plugins: plugins aren't necessarily as efficient as Textpattern itself. If your performance problems coincide with the installation of a plugin, or occur only on a particular page template that invokes a plugin, try disabling it and see if there's a difference. If your page won't display properly without the plugin, try temporarily reverting to the default Textpattern Page template and Form template.
* PHP code: if you've included any PHP code in your page templates, whether directly in the template or indirectly via an `include()` call or similar, try disabling it. In particular, check for any code that might try to fetch a file from an external server, e.g. by using a `https://..` URL in an `fopen()` or `include()` call.
* MySQL issues: MySQL doesn't have to run on the same physical machine as your web server. Some hosting companies run these on separate servers connected by a fast LAN connection, which is fine. However, if Textpattern and MySQL are on entirely different networks, performance will be unavoidably slow, since all MySQL queries and results must travel back and forth over a comparatively slow internet connection every time a Textpattern page is viewed. Other MySQL performance problems can be harder to diagnose. An overloaded MySQL server can slow down Textpattern - ask your hosting provider if this could be the case.
* Spam blocklist: sometimes the built-in blocklist checking causes page slowdowns. Go to the [Preferences panel](/administration/preferences-panel) and remove `sbl.spamhaus.org` from the 'Spam blocklists' preference if it is there.

#### Queries and Memory

A high number of queries, or excessive memory usage, is usually caused by a plugin or custom PHP code. As above, try disabling this code to see if it makes a difference. Plugins that produce a list of articles are the most likely culprits: some popular 'archive' plugins are very inefficient, loading the entire database of articles into memory at once.

#### Page rendering

If your Runtime, Queries and Memory figures are all in or near the normal limits, but you're still experiencing slow page loading, the problem is almost certainly caused by the content of your page. Some things to check:

* JavaScript - does your page include JavaScript code? Try disabling it, it might be slow.
* Counters and external stats - are you using an image or JavaScript link to an offsite 'hit counter', stats service, or a local stats application like Shortstat? Try removing the link to see if it makes a difference.
* Links to off-site objects - does your page link to images, JavaScript, CSS or other objects on another web server? Do your pages include content from external sources? Any of these could be the culprit.
* Advertisements - banner, popup and text ads all work by loading content from another server. Try disabling them and measure the difference.
* CSS - certain CSS techniques can cause choppy page loading and scrolling. In particular, 'fixed' background images and blocks can cause loading and scrolling problems. These problems are all on the browser side, and are unrelated to Textpattern or the server.

### Slow administration side

This is almost always due to a plugin. Try turning them off one by one and testing any troublesome admin panels. If you can narrow it down a single plugin, try contacting the author to see if there's a newer version available, or if the issue can be fixed.

## Blank page output

If you see a completely white screen when viewing a website page, it usually means an error has occured but is not displayed because you're running in Live mode. Setting the [Production Status preference](/administration/preferences-panel#site-preferences) to 'Live' suppresses all error messages. Instead, set the Production Status to 'Testing', then view the problem page again. You should see a more informative error message this time.

It's always a good idea to use Testing mode when editing templates and forms. Switch to Live mode only when you're certain everything works. Debugging mode is intended only for developers; it's normal to see some spurious messages in this mode, but it ma also be useful to diagnose particularly troublesome aspects of your page layout.

If you're still seeing a blank page even in Testing mode, the most likely cause is a syntax error in one of your `<txp:…>` tags. In Debugging mode, the Textpattern parser will try to inform you of any such misconfiguration to help you quickly find the problem.

## Feed issues

Use a [feed validator](https://www.feedvalidator.org/) if you suspect a feed problem. If the validator indicates that your feed is invalid, then please post its messages verbatim in your support request. Also, the URL you submit to the feed validator is your feed URL, not your homepage URL - the feed validator does not auto-detect feeds.

Some other avenues of exploration:

* If the feed validator reports you have a missing description element, make sure there's something entered in the 'Site slogan' field in your [Preferences panel](/administration/preferences-panel).
* If your feeds are empty or don't contain the right articles, check the 'Syndicate?' option, found on the [Sections panel](/administration/sections-panel). Sections that have the 'Syndicate?' option turned off will not show up in your feeds. Your articles must also have their status set to 'Live' (not 'Sticky').
* If your browser tries to download the feed when the feed's link is selected, then - depending on your browser - this is the correct behaviour. More likely than not, your browser is not capable of displaying XML. As the feeds are sent with the correct MIME type, your browser offers to download the file, rather than just displaying the raw content. This is the correct behaviour, and your feed should work in a proper feed aggregator.
* If you want to set up feed autodetection, you'll need to add tags like the following to the `<head>` of your main page:

~~~ html
<txp:feed_link format="link" flavor="rss" />
<txp:feed_link format="link" flavor="atom" />
~~~

## Error messages and codes

Notices when your [Production status](/administration/preferences-panel#production-status) is set to 'Debugging' mode are not unusual, and by themselves aren't an indicator of something wrong. If messages such as `Undefined index`, `Unregistered tag` or other warnings/notices are the only symptom you have when this mode is active, then there's likely nothing wrong, and you can safely ignore them.

Errors such as `Unexpected end of file`, `Call to undefined function` or `Failed to read stream` are usually a symptom that the files you uploaded to the web server didn't transfer properly or that the information in your `config.php` is incorrect. Uploading all the Textpattern system files again often remedies this, ensuring that the `.php` and `.js` files are uploaded as ASCII, not binary.

If, however, some or all pages of your site - or Textpattern panels - are throwing HTTP status code error messages, they are more serious. In those cases, here are some things you can try:

### 500 Internal Server Error

These and similar errors are almost always caused by `.htaccess`. The `.htaccess` file is used by Textpattern to manage 'clean' URLs, for example:

~~~
https://example.com/articles/123/hello-world
~~~

instead of:

~~~
https://example.com/index.php?id=123
~~~

While we've done our best to ensure the `.htaccess` file supplied with Textpattern will work with as many web server configurations as possible, some servers are configured to restrict this. A `500 Internal Server Error` or `403 Forbidden` response is usually the result of a `.htaccess` file that tries to exceed these restrictions.

The simplest thing you can do to fix the problem is simply delete or rename `.htaccess`, and switch to 'Messy' URL mode (see [Article URL pattern](/administration/preferences-panel#article-url-pattern)).

You'll find some other pointers in @@TODO: link to Clean URLs don't work in Diagnostics panel@@.

### 404 Page Not Found

If you see this, but the site works if you use `index.php` in the URL, uncomment (remove the `#` from) the following line in your `.htaccess` file:

~~~
#DirectoryIndex index.php index.html
~~~

If that doesn't help or causes a 500 Internal Server error, contact your web host tech support and ask them about enabling `DirectoryIndex` for PHP files.

### Database unavailable

This means Textpattern is unable to connect to the MySQL database. This can happen occasionally on some shared/virtual hosting servers when another user hogs all the available database resources. If it happens regularly, ask your hosting provider whether there's something they can do to fix the problem.

If you're seeing "Database Unavailable" on every page view, without exception, then the problem is most likely a database server crash, or a misconfiguration. Check the settings in your Textpattern `config.php` file and make sure you can connect to the database using those settings in phpMyAdmin or similar SQL client. Check the file permissions on `config.php` to ensure the web server user is able to read and execute the file. If the database server is working, check your `.htaccess` file and consider temporarily disabling it. If problems persist, talk to your hosting provider.

### Allowed memory size of X bytes exhausted

Textpattern's memory usage is quite low - usually no more than a couple of megabytes.

Unless your server admin has set the PHP memory limit far too low (unlikely, but not impossible) the cause is probably a plugin. Some older archive page plugins work by loading all articles into memory at once. This could easily exhaust the available memory if you have a large number of articles.

Disable your plugins one by one, until you find the culprit. If the cause is indeed a plugin, we suggest contacting its author about the problem. In some cases, the plugin's functionality could be replaced with core [Textpattern tags](/tags) which may be more memory efficient.
