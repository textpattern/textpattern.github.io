h1. How do I display time and date formats in my local language? [todo]

The date and time functions used by Textpattern will automatically translate month and day names, provided the locale is set correctly, and provided your server supports it.

If you've selected the appropriate language in textpattern > admin > preferences and are still not seeing dates in your language, it most probably means that your web server's operating system has limited support for your language. You should ask your hosting company to upgrade their locale support.

To use a different format for article dates, use the @<txp:posted format="..." />@ attribute. See "here":http://textpattern.net/wiki/index.php?title=posted for more details.

To display an article date using a different language to the main Textpattern language, the following code will work on _some_ systems:

bq. @&#60;txp:php>@
@global $locale;@
@setlocale(LC_ALL, 'nl_NL.UTF-8');@
@echo posted(array('format' => '%A %B %e %Y, %H:%M:%S'));@
@setlocale(LC_ALL, $locale);@
@&#60;/txp:php>@

You'll need to change the locale string (@nl_NL.UTF-8@) and format to suit.
