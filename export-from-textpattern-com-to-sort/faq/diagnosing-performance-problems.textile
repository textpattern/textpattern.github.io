h1. Diagnosing performance problems [todo]

Normally, Textpattern is one of the "fastest CMS platforms around":http://textpattern.com/faq/80/how-fast-is-textpattern.

However, there are a few circumstances that can cause performance issues.  If you're experiencing slow page loading, here are some things to check:

*Runtime vs. Display Time*

Textpattern records the time it takes to generate and send each page.  You can check the "runtime" figure to distinguish between slowdowns during page generation, and those that occur afterwards (i.e. during page rendering).

In *admin > preferences*, set *Production Status* to *Testing*.  Load a Textpattern page, view the HTML source, and scroll to the bottom.  You should see a comment block that looks something like this:

bq. @<!-- Runtime: 0.1316 -->@
@<!-- Queries: 21 -->@
@<!-- Memory: 1988Kb -->@

The figures will vary according to your server, page templates, and so on.  On a properly configured web server with a normal load and typical Textpattern templates and content, expected ranges are as follows:

* Runtime: 0.01 - 0.5 seconds
* Queries: 20 - 50
* Memory: 1500 - 3000 Kb

Please note that these are approximate ranges - a Runtime of 0.6 or 0.7 is on the high side, but not necessarily cause for alarm if your page templates are complex.  Also bear in mind that the figures will be different for each page load, and will vary due to external factors like the traffic load on your web server.  Try loading the page several times over a period of a few minutes and compare the results.  A one-off anomaly probably means a temporarily overloaded server or network.

If you're experiencing consistently high numbers, here are some things to check.

*Runtime*

A runtime figure that regularly measures 1 second or more usually indicates one of two things:

* *DNS issues*.  A slow or misconfigured DNS server at your web hosting company can cause high page runtimes.  Usually this occurs in the Textpattern logging code.  In *textpattern > admin > preferences > advanced*, set *Use DNS* to *No*, and see if that makes a difference.  If not, try disabling logging altogether.

* *Plugins*.  Plugins aren't necessarily as efficient as Textpattern itself.  If your performance problems coincide with the installation of a plugin, or occur only on a particular page template that invokes a plugin, try disabling it and see if there's a difference.  If your page won't display properly without the plugin, try temporarily reverting to the default Textpattern "page template and form":http://textbook.textpattern.net/wiki/index.php?title=Default_Forms%2C_Pages_and_Styles  .

* *PHP code*.  If you've included any PHP code in your page templates, whether directly in the template or indirectly via an @include()@ call or similar, try disabling it.  In particular, check for any code that might try to fetch a file from an external server, e.g. by using a @http://..@ URL in an @fopen()@ or @include()@ call.

* *MySQL issues*.  MySQL doesn't have to run on the same physical machine as your web server.  Some hosting companies run these on separate servers connected by a fast LAN connection, which is fine.  However, if Textpattern and MySQL are on entirely different networks, performance will be unaviodably slow, since all MySQL queries and results must travel back and forth over a comparatively slow internet connection every time a Textpattern page is viewed.

Other MySQL performance problems can be harder to diagnose.  An overloaded MySQL server can slow down Textpattern - ask your hosting company if this could be the case.

*Queries and Memory*

A high number of queries, or excessive memory usage, is usually caused by a plugin or custom PHP code.  As above, try disabling this code to see if it makes a difference.  Plugins that produce a list of articles are the most likely culprits: some popular "archive" plugins are very inefficient, loading the entire database of articles into memory at once.  For an efficient method of displaying an archive list of articles, "see here":http://textpattern.com/faq/134/how-do-i-make-an-archive-page.

*Page rendering*

If your Runtime, Queries and Memory figures are all in or near the normal limits, but you're still experiencing slow page loading, the problem is almost certainly caused by the content of your page.  Some things to check:

* *Javascript* - does your page include javascript code?  Try disabling it, it might be slow.

* *Counters and external stats* - are you using an image or javascript link to an offsite "hit counter", stats service, or a local stats application like Shortstat?  Try removing the link to see if it makes a difference.

* *Links to off-site objects* - does your page link to images, javascript, CSS or other objects on another web server?  Do your pages include content from external sources such as Gravatars, del.icio.us or similar?  Any of these could be the culprit.

* *Advertisements* - banner, popup and text ads all work by loading content from another server.  Try disabling them and measure the difference.

* *CSS* - certain CSS techniques can cause choppy page loading and scrolling.  In particular, "fixed" background images and blocks can cause loading and scrolling problems.  These problems are all on the browser side, and are unrelated to Textpattern or the server.

*Improving performance*

There are a number of articles around about improving Textpattern's performance.  *Not all of this is good advice* - many are outdated, some disable important features for no measurable benefit, and a few suggested techniques can acutally result in *worse* performance.

If your Runtime/Queries/Memory figures are within normal limits, but you'd like to improve performance, here are the best methods to use:

* *Minimize plugins*.  The more plugins are active, the more code must be loaded, parsed and run.  Don't use a plugin when you can achieve the same results with a built-in tag.  And make sure you disable any plugins you no longer use.

* *Simplify your code*.  Do your templates use complex nested conditionals, PHP code, or forms within forms?  Simplify them.  In particular, try to reduce the number of @<txp:...>@ tags that require database queries.  (If you're not sure, remove tags one at a time and watch the Queries count).

* *Caching*.  Sometimes pages are necessarily complex, and there are limits to server performance.  If you have a popular site that's not fast enough, try a caching plugin such as "asy_jpcache":http://forum.textpattern.com/viewtopic.php?pid=54333 or "zem_cache":http://forum.textpattern.com/viewtopic.php?id=3195.

The important thing with any performance tweak is to *change only one thing at a time*, and *always measure the results*.  If something has no real effect, change it back and try something else.  You'll almost certainly find that one or two changes will have a large effect, while others will be insignificant.

