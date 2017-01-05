h1. Images are broken on certain pages [todo]

Images or CSS stylessheets that are broken only on certain pages using clean URL mode usually indicates a problem with relative URLs.

Clean URLs look something like this:

bq. @http://example.com/@
@http://example.com/mysection/123/my-article@
@http://example.com/category/mycategory@

When you use a _relative_ image URL - such as @<img src="images/foo.jpg" />@, or (in Textile) ==!images/foo.jpg!== - it's the *web browser* that appends that image URL to the current page URL to resolve the final location, not Textpattern.  When viewing the pages listed above, the web browser would request images from these URLs:

bq. @http://example.com/images/foo.jpg@
@http://example.com/mysection/123/images/foo.jpg@
@http://example.com/category/images/foo.jpg@

The first of these might work, but the second and third won't.

The same applies to stylesheets, and to images referenced within stylesheets.

There are several solutions.

One is to always use *absolute URLs* for images and stylesheets. Instead of @images/foo.jpg@, use @/images/foo.jpg@. (If Textpattern is installed in a subdirectory, use @/mysubdir/images/foo.jpg@ instead).

Another is to specify a *base URL* in your page template, like this:

bq. @<head>@
@<title><txp:page_title /></title>@
@<base href="http://example.com/">@
@</head>@

That instructs the web browser to use @http://example.com/@ as the base page when resolving all relative URLs.

When linking to images, you can use two tags to help.

The "txp:image":http://textpattern.net/wiki/index.php?title=image tag lets you display any image that was uploaded using Textpattern's image manager.  You refer to the image by its ID number:

bq. @<txp:image id="3" />@

..or by name (minus the file extension):

bq. @<txp:image name="foo" />@

To link to other images, you can use the @txp:img@ tag, which prepends the Textpattern root URL to image paths:

bq. @<txp:img src="images/foo.jpg" />@

For other types of links, the "txp:site_url":http://textpattern.net/wiki/index.php?title=site_url tag will be useful.

More information at W3.org, "HTML and URLs":http://www.w3.org/TR/WD-html40-970708/htmlweb.html.
