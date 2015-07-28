h1. Can I use PHP code in article bodies? [todo]

If the admin configuration option "allow_article_php_scripting" is on, @< txp:php>@ @< /txp:php>@ is supported in article bodies. By default, PHP scripts are only run when the author of the article is a publisher or editor.

The user premissions required for PHP code in article bodies are defined in lib/admin_config.php, as @'article.php'@:

bq. @'article.php' => '1,2',@

To allow different user levels to run PHP code in their articles, edit the levels (the comma-separated numbers) on that line. But be careful: this is a PHP file, so the syntax must be correct.

h4. Textile

If you are using Textile, be sure to escape it:

bc. notextile. <txp:php> // your PHP code </txp:php>

or you will end up with nasty errors like:

bq. Parse error: parse error, unexpected '&amp;' in /path/to/your/site/textpattern/publish/taghandlers.php(2688) : eval()'d code on line 2

h4. Warning

By giving someone permission to run PHP code, you effectively give them permission to bypass all of Textpattern's built-in security. Any user with permission to run PHP code can, intentionally or accidentally, modify or delete anything in your database, crash your site, and so on.
