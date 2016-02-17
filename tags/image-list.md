# Image list DEPRECATED [todo:pw]

*Do not use this tag, it was renamed to "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images!*

~~~ html
<txp:image_list />
~~~

The **image_list** tag is a *single* or *container* tag that Textpattern will use to gather a list of matching images uploaded via the TXP "images_panel_":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images_panel tab. Utilising the other image tags in the suite "image_info":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_info, "image_url":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_url, "image_date":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_date and "if_thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_thumbnail) you can display simple image galleries from this list.

If used as a *container* tag, it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:image_list>
...contained statements...
</txp:image_list>
~~~

This is equivalent to putting the contained statements into a form named “my_form” and using `<txp:image_list form="my_form" />`.

By default, the tag is context-sensitive, which means that in the absence of any other filter attributes (*id*, **name*, **category*, **author*, **realname*, **extension*, **thumbnail*), it will grab a list of image IDs from the currently viewed article's **article_image** field. If it finds nothing there, it will check the URL to see if there is a category list in progress. If it finds nothg there too, the tag will display nothing. See the **auto_detect** attribute for further information.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

*"id":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#id=“integer”*
 Filter the images by this list of `id`s assigned at upload. The IDs can be found on the "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images tab. Default: unset. **"name":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#name=“image name”*
 Filter the images by this list of image names as shown on the "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images tab. Default: unset. **"category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#category=“image category”*
 Filter the images by this list of category names as defined in the "categories":/home/www/zendstudio/dokuwiki/bin/doku.php?id=categories tab. **"author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#author=“author (login) ID”*
 Filter the images by this list of author IDs who uploaded the pictures to Textpattern. Default: unset. **"realname":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#realname=“author name”*
 Filter the image list so it only includes images uploaded by this list of author real names. The author names may be URL encoded (e.g. **realname=“John+Smith”*) and thus could be read from the current site.com/author/author+name URL. Note that this attribute may incur one extra query per name, so if it is possible to use the raw author instead it will be faster. Default: unset. **"extension":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#extension=“.extension”*
 Filter the images by this list of image extensions, including the leading dot. Example:

bc. extension=".jpg, .png"


Default: unset. **"thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#thumbnail=“boolean”*
 Filter the image list to only include images that have a thumbnail (

bc. 1


) or not (

bc. 0


). Default: unset (i.e.,all images). **"label":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#label=“text”*
 Text to display above the list of images as a label. Default: unset. **"labeltag":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#wraptag=“tag text”*
 HTML tag to be used to wrap the label, specified without brackets. Default: unset. **"wraptag":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#wraptag=“tag text”*
 HTML tag to be used to wrap the

bc. img


tag, specified without brackets. Default: unset. **"html_id":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#html_id=“id number”*
 The HTML

bc. id


attribute applied to the

bc. wraptag


, if set, otherwise to the

bc. img


tag. Default: unset. **"class":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#class=“class name”*
 CSS

bc. class


attribute applied to the

bc. wraptag


, if set, otherwise to the

bc. img


tag. Default: unset. **"break":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#break=“tag text”*
 The (X)HTML tag (without brackets) or string to separate each image. Default: unset. **"limit":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#limit=“integer”*
 The number of images to display per page. Default:

bc. 0


(unlimited). **"offset":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#offset=“integer”*
 The number of images to skiDefault:

bc. 0


. **"pageby":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#pageby=“integer” (or** *“limit”_*)*
 The number of images to jump forward or back when an "older":/home/www/zendstudio/dokuwiki/bin/doku.php?id=older or "newer":/home/www/zendstudio/dokuwiki/bin/doku.php?id=newer link is clicked. Without this attribute, pagination is not available; you will simply see **limit** images. You may specify

bc. pageby="limit"


to allow pagination to automatically follow the value of the

bc. limit


attribute. NOTE: "newer":/home/www/zendstudio/dokuwiki/bin/doku.php?id=newer and "older":/home/www/zendstudio/dokuwiki/bin/doku.php?id=older will paginate all content types at once. Default: unset. **"sort":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#sort=“sort value(s)”*
 How to sort the resulting image list. Specify an image attribute from the ones below and add either **asc** or **desc** to sort in ascending or descending order, respectively. Values:

bc. id


(image id#)

bc. name


(image name)

bc. category


bc. extension


(image extension)

bc. author


bc. alt


bc. caption


bc. date


bc. w


(image width)

bc. h


(image height)

bc. thumb_w


(image thumbnail width)

bc. thumb_h


(image thumbnail height)

bc. rand()


([random](http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html#function_rand)) Default:

bc. name asc


*"form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#form=“form name”*
 Use specified form for each image. If not used, and the container is empty, the tag will output a list of images that are compatible with "image_display":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_display. Default: unset. **"auto_detect":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#auto_detect=“string context”*
 List of Textpattern contexts to consider when automatically searching for images. If you wish to turn off the automatic check, set this to **auto_detect=““**. You can choose from the following contexts: **article** to look in the article_image field **category** to look in the URL for a category list **author** to look in the URL for an author list Default: **article, category, author*

## Examples

### Example 1: Varying attributes

This example shows the outcome of various attribute configurations to give you an idea of what to expect from the tag. More concrete examples follow.

NB: THESE MAY NOT BE CORRECT ANY MORE DUE TO TAG CHANGES SINCE THE EXAMPLES WERE WRITTEN. NEED VERIFICATION.

*&lt;code&gt;&lt;txp:image_list /&gt;&lt;/code&gt;*
 uses the current article image field as a list of image IDs. If the article image field is empty, it contains names/URLs, or the tag is used on an article list page, it returns no images. If, however, the tag is used on a category list page (e.g.

bc. category/image/photos


) then the **photos** category would be used **&lt;code&gt;&lt;txp:image_list auto_detect=”” /&gt;&lt;/code&gt;*
 displays all images in the database. **&lt;code&gt;&lt;txp:image_list id=“” /&gt;&lt;/code&gt; &lt;code&gt;&lt;txp:image_list name=“” /&gt;&lt;/code&gt; &lt;code&gt;&lt;txp:image_list category=“” /&gt;&lt;/code&gt;*
 no images displayed. This means that if you did some tag-in-tag magic such as :

bc. category='<txp:custom_field name="my_cats" />'


it will show no images if the custom field is empty. **&lt;code&gt;&lt;txp:image_list id=“2,3,6” /&gt;&lt;/code&gt;*
 display images 2, 3, and 6. **&lt;code&gt;&lt;txp:image_list name=“lion.jpg, zebra.jpg” /&gt;&lt;/code&gt;*
 the named images are displayed. **&lt;code&gt;&lt;txp:image_list name=“pengiun.jpg” /&gt;&lt;/code&gt;*
 no images are displayed (mis-spelled image name). **&lt;code&gt;&lt;txp:image_list category=“mammals, birds” /&gt;&lt;/code&gt;*
 all images in the named categories are displayed. **&lt;code&gt;&lt;txp:image_list category=“, mammals, birds” /&gt;&lt;/code&gt;*
 all images in the named categories and any uncategorized images are displayed. **&lt;code&gt;&lt;txp:image_list category=“ ” /&gt;&lt;/code&gt;*
 just uncategorized images are displayed (note that

bc. category=","


also works, but a space looks better). **&lt;code&gt;&lt;txp:image_list author=“attenborough, morris” /&gt;&lt;/code&gt;*
 all images by author (ID) **attenborough** and **morris** are displayed. **&lt;code&gt;&lt;txp:image_list realname=“David+Attenborough” /&gt;&lt;/code&gt;*
 all images by author **David Attenborough** are displayed. This incurs one extra query to look up the author's ID from the given real name. **&lt;code&gt;&lt;txp:image_list category=“mammals, birds” author=“attenborough, morris” /&gt;&lt;/code&gt;*
 all images in the named categories that are assigned to the named authors are displayed. **&lt;code&gt;&lt;txp:image_list category=“mammals, birds” extension=“.jpg” /&gt;&lt;/code&gt;*
 all jpg images in the named categories are displayed. **&lt;code&gt;&lt;txp:image_list category=“mammals, birds” extension=“.jpg” author=“attenborough, morris” /&gt;&lt;/code&gt;*
 all jpg images in the named categories that are assigned to the named authors are displayed. **&lt;code&gt;&lt;txp:image_list extension=“.gif” /&gt;&lt;/code&gt;*
 all GIF images are displayed. **&lt;code&gt;&lt;txp:image_list category=“mammals, birds” thumbnail=“1” /&gt;&lt;/code&gt;*
 all images in the named categories that have thumbnails assigned to them are displayed. **&lt;code&gt;&lt;txp:image_list thumbnail=“1” /&gt;&lt;/code&gt;*
 all images that have thumbnails assigned to them are displayed. **&lt;code&gt;&lt;txp:image_list thumbnail=“0” /&gt;&lt;/code&gt;*
 all images that do not have thumbnails assigned to them are displayed.

### Example 2: Description goes here

*What it does...*
 ...

## Genealogy

### Version 4.3.0

Tag support added.
