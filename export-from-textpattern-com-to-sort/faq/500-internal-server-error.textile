h1. 500 Internal Server Error [todo]

These and similar errors are almost always caused by @.htaccess@.

The @.htaccess@ file is used by Textpattern to mange "clean" URLs - http://example.com/articles/123/hello-world instead of http://example.com/index.php?id=123.

While we've done our best to ensure the .htaccess file supplied with Textpattern will work with as many web server configurations as possible, some servers are configured to restrict this.  A @500 Internal Server Error@ or @403 Forbidden@ response is usually the result of a .htaccess file that tries to exceed these restrictions.

The simplest thing you can do to fix the problem is simply delete or rename @.htaccess@, and switch to "Messy" URL mode (see *textpattern > admin > preferences > permanent link mode*).

You'll find some other pointers in "this FAQ":http://textpattern.com/faq/66/404-error-when-linking-to-article-pages.
