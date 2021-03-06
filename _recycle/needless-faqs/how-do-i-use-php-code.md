h1. Using PHP code in Textpattern [todo]

You can use PHP code in a Textpattern page template or form like this:

bc. <txp:php>echo 'Hello world'; </txp:php>

Make sure you use @<txp:php>@ … @</txp:php>@ instead of @<?php … ?>@ or @<? … ?>@.

There is an Advanced Preference that can be used to disable PHP code.

PHP code will also work inside an article body if Textpattern "is configured to allow it":https://textpattern.com/faq/35/can-i-use-php-code-in-article-bodies. If you are using Textile, be sure to escape it:

bc. notextile. <txp:php> // your PHP code </txp:php>

We *strongly recommend* you set your Production Status to Debugging when adding or modifying PHP code in Textpattern.

You can @include()@ an external script, provided you understand how "variable scope":http://www.php.net/manual/en/language.variables.scope.php and "include paths":http://www.php.net/manual/en/function.include.php work. Your PHP code *will not be executed in the global scope*, so you'll have to explicitly use the "global":http://www.php.net/manual/en/language.variables.scope.php#language.variables.scope.global keyword.

When including or opening a file from PHP, you'll need
To see the current working directory and include path:

bc. <txp:php>var_dump(getcwd(), get_include_path());</txp:php>

If your file resides in Textpattern's admin folder, you can use the defined constant @txpath@ to refer to that path - i.e. @include(txpath.'/myfile.php');@.

Please be aware that any PHP code you run from Textpattern, whether included directly in a page or in a separate file, will share database connections, function, variable and class names and so on with Textpattern. PHP doesn't support separate namespaces, so it's up to you to ensure there are no clashes.

Some caveats to be aware of when using @<txp:php>@:

h4. Variable Scope

Your PHP code will *not* be executed in the global scope, so you'll need to explicitly declare global variables as required. If you want to pass data between separate @<txp:php>@ blocks, you'll need to do something like this:

bc.. <txp:php>
global $foo;

$foo = 'bar';
</txp:php>

bc.. <txp:php>
global $foo;

echo $foo;
</txp:php>

h4. Escaping to XHTML

While you can use multiple PHP blocks on a single page, each @<txp:php>…</txp:php>@ block must be a valid block of code by itself. This means you can't escape from PHP to HTML and back like you can with @<?php … ?>@. This *will not work*:

bc. <txp:php>if ($something) {</txp:php>
foo
<txp:php>}</txp:php>

Use something like this instead:

bc. <txp:php>
if ($something) {
echo 'foo';
}
</txp:php>

h4. Debugging

Other than the caveats listed above, Textpattern doesn't interfere with your PHP code. If your code isn't working as expected, you'll need to use standard debugging techniques to find out what's wrong.

If you've followed the recommendations above and set *Production Status* to *Debug*, Textpattern will set PHP's error reporting settings to display all errors, warnings and notices. This should help you find errors like misnamed variables.

For other problems, the most effective debugging technique is also the simplest: good old fashioned debug printing. Use PHP functions like @print()@, @var_dump()@ and @var_export()@ to display important data at key points in your code.

Textpattern provides a handy function called @dmp()@ that will display a message or array surrounded by @<pre>…</pre>@ tags for easy viewing. For example:

bc.. <txp:php>
dmp('My php code');

global $thisarticle;

dmp($thisarticle);
</txp:php>

p. @dmp()@ uses the @print_r()@ function to display arrays, and @print()@ for everything else.

PHP debugging techniques are described in more detail in "this article":http://www.digital-web.com/articles/php_lumberjack/.
