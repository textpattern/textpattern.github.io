h1. Article Images aren't working [todo]

To use Textpattern's *Article image* feature (under Advanced Options on the content > write page), you need to do two things:

1. Place an image *URL* or *ID* in the Article image field.  The ID is a single number, like @123@ - don't use an extension.  If you want to refer to it by filename, you'll need to use an absolute URL like @/images/cat_pic.jpg@ or @http://example.com/images/cat_pic.jpg@.  _Don't put HTML or Textpattern tags in the Article image field_, they're not needed and won't work.

2. Make sure your *article form* includes the following tag:

bq. @<txp:article_image />@

More detailed instructions are included in "Textbook":http://textbook.textpattern.net/wiki/index.php?title=Write_Subtab#2.4._Article_Image.
