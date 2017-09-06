h1. Can I make an image gallery? [todo]

If you want to display images with descriptions or comments, see "Can I use Textpattern for a photoblog?":https://textpattern.com/faq/110/can-i-use-textpattern-for-a-photoblog

You can construct a simple image gallery like this:

1. Copy the _default_ page template.  Call it _gallery_.  Find the main content block, remove any @<txp:article.. />@ tags, and replace it with something like this:

bq. @<div id="content">@
@<txp:image_index wraptag="div" break="" />@
@<txp:image_display />@
@</div>@

You can use the standard @wraptag@, @break@ and @class@ attributes to control the layout.

2. Create a new section named @gallery@.  Set _Uses page_ to _gallery_.

3. Create one or more new image categories in *textpattern > content > organize*.

3. Upload some images via *textpattern > content > images*.  Make sure each one has a thumbnail - you can use the create thumbnail feature - and assign it to one of your image categories.

4. View @http://example.com/gallery/?c=mycategory@ (or http://example.com?s=gallery&c=mycategory@ if you're using Messy URLs).  You can click on each image thumbnail to view the associated image.

There are several "plugins":https://forum.textpattern.com/viewtopic.php?id=2193 that provide more complex gallery features.
