h1. Fatal error: Allowed memory size.. [todo]

Textpattern's memory usage is quite low - usually no more than a couple of megabytes.

Unless your server admin has set the PHP memory limit far too low -- unlikely, but not impossible -- the cause is probably a plugin.  Some older archive page plugins work by loading all articles into memory at once.  This could easily exhaust the available memory if you have a large number of articles.

Disable your plugins one by one, until you find the culprit.  If the cause is indeed a plugin, we suggest contacting its author about the problem.

Alternatively, consider using the "txp:article_custom":http://textpattern.net/wiki/index.php?title=article_custom tag to generate your archive list.  @<txp:article_custom />@ uses memory efficiently.  Some "new tags":http://textpattern.com/weblog/94/new-conditional-tags in Textpattern 4.0.2 might help with formatting.
