Error: publish.php cannot be called directly [todo]

This is most commonly caused by forgetting to update the topmost @index.php@ file (or perhaps @css.php@) when upgrading.

Please ensure that you upload all files to your web server when you upgrade.

If you're trying to @include()@ publish.php from another script or page, please note that this is "not recommended":http://textpattern.com/faq/65/how-do-i-embed-textpattern-in-an-external-page, and unsupported.  Textpattern is intended to work as a stand-alone application.  Embedding it in another script might break things in catastrophic or subtle ways, or (worse) open a security hole.

If you really must include publish.php from another script, start by examining the code in "index.php":http://svn.textpattern.com/development/4.0/index.php.
