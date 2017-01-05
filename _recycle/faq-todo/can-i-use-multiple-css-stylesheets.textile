h1. Can I use multiple CSS stylesheets? [todo]

The standard CSS stylesheet link in the default template looks like this:

bq. @<link rel="stylesheet" href="<txp:css />" type="text/css" media="screen" />@

The @<txp:css />@ part tells Textpattern to use the stylesheet associated with the current section (see *presentation > sections*).

You can link to additional stylesheets on the same page by referring to them by name.  Create another style (under *presentation > styles*) and add an extra line to your template like this:

bq. @<link rel="stylesheet" href="<txp:css name="my_style_name" />" type="text/css" media="screen" />@

The @name@ parameter specifies the name of the stylesheet.  Read more at "Textpattern Tag Reference: css":http://textbook.textpattern.net/wiki/index.php?title=css.

To add a print-only stylesheet, create one named @print@ and add this to your page template:

bq. @<link rel="stylesheet" href="<txp:css name="print" />" type="text/css" media="print" />@
