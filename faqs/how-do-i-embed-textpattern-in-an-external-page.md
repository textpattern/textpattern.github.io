h1. How do I embed Textpattern in another page? [todo]

Textpattern is designed as a stand-alone application.  Trying to embed it in another page or script doesn't work well, for various reasons.  (In particular, Textpattern uses output buffering, If-Modified-Since caching, and sends HTTP headers, all of which usually interfere with wrapper scripts)

Usually that turns out not to be nessary though.  Try doing things the other way around: *embed your content or script* in Textpattern, using page templates, forms and @< txp:php>@ tags.  That way you'll have a consistent interface for editing all of your pages.

