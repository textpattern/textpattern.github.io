h1. Page output is unstyled [todo]

This is most commonly caused by an incorrect txpath setting in config.php.

View the HTML source of the page, and look for the @<link rel="stylesheet" href="..." type="text/css" />@ tag.

If the @href@ link is incorrect -- it should point to @http://example.com/textpattern/ css.php?s=mysection@ or @http://example.com/mysubdir/ textpattern/css.php?s=mysection@ -- you'll need to edit config.php and fix the @txpath@ setting.  Check for an extra slash character, or repeated subdirectory name.

If the link appears correct, try pasting the CSS url directly into the address bar in your browser, and checking the output.  Some possible diagnoses:

*404 not found* - your @textpattern/css.php@ file is missing.

*PHP error* - if there's a PHP error at the beginning of the CSS output, check the "FAQ":http://textpattern.com/faq/?c=errors-warnings-and-notices for more information.

*HTML* - if the CSS URL displays a HTML page instead of CSS code, you most likely have a missing css.php file, and/or an overzealous .htaccess RewriteRule.  Try disabling .htaccess and switching to "messy" URL mode.

*Blank page* - switch the Production Status to Testing and reload.

*If you just updated and expect to see your site here..* - if the CSS output includes this message, you "haven't updated the css.php file":http://textpattern.com/faq/126/error-publishphp-cannot-be-called-directly correctly when upgrading.

If you're seeing _some_ CSS styling, but not the style you'd expect, make sure you've applied the correct stylesheet to your section (textpattern > presentation > sections, "Uses style:").

If you've manually created a @<link rel="stylesheet" ... />@ tag, rather than using the @<txp:css />@ tag in your template, make sure you've used the correct URL.