---
layout: document
category: Tags
published: true
title: Images
description: Tag that Textpattern will use to gather a list of matching images uploaded via the Images panel.
tags:
  - Image tags
---

# Images

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:images />
~~~

The **images** tag is a *single* or *container* tag that Textpattern will use to gather a list of matching images uploaded via the Images panel. Utilising the other image tags in the suite [image_info](/tags/image_info), [image_url](/tags/image_url), [image_date](/tags/image_date) and [if_thumbnail](/tags/if_thumbnail)) you can display simple image galleries from this list.

If used as a *container* tag, it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:images>
    …contained statements…
</txp:images>
~~~

This is equivalent to putting the contained statements into a form named 'my_form' and using `<txp:images form="my_form" />`.

By default, the tag is context-sensitive, which means that in the absence of any filter attributes (`id`, `name`, `category`, `author`, `realname`, `extension`, `thumbnail`), it will return image IDs from the first of:

1. The currently viewed article's 'Article image' field;
2. Images matching the global category context;
3. Images matching the global author context;
4. All images.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`author="author name"`
: Filter the images by this list of author IDs who uploaded the pictures to Textpattern.
: **Default:** unset.

`auto_detect="string context"`
: List of Textpattern contexts to consider when automatically searching for images. If you wish to turn off the automatic check, set this to `auto_detect=""`. You can choose from the following contexts: \\
`article` to look in the article_image field. \\
`category` to look in the URL for a category list. \\
`author` to look in the URL for an author list.
: **Default:** `article, category, author`.

`category="image category"`
: Filter the images by this list of category names as defined in the Categories panel.

`exclude="attributes"`
: List of IDs or attributes to 'negate'. For attributes, choose from one or more of: `name`, `category`, `author`, `realname`, `extension`, `size`, `month`, `time`, or `id`.

`extension=".extension"`
: Filter the images by this list of image file extension(s), including the leading dot. Example: `extension=".avif, .jpg, .png, .webp"`.
: **Default:** unset.

`form="form name"`
: Use specified form template to process each image. If not used, and the container is empty, the tag will output a list of images that are compatible with [image_display](/tags/image_display).
: **Default:** unset.

`html_id="id number"`
: The HTML `id` attribute applied to the `wraptag`, if set, otherwise to the `img` tag.
: **Default:** unset.

`id="integer"`
: Filter the images by this list of `id`s assigned at upload. The IDs can be found on the Images panel.
: The order of the ids overrides the default `sort` attribute.
: **Default:** unset.

`month="date"`
: Filter the images using this starting time point, e.g. `month="2025-10"` for all images with dates in October 2025.
: See also: `time` attribute for further filtering range options.
: **Default:** unset.

`name="image name"`
: Filter the images by this list of image names as shown on the Images panel.
: **Default:** unset.

`pageby="integer" (or "limit")`
: The number of images to jump forward or back when an [older](/tags/older) or [newer](/tags/newer) link is selected. Without this attribute, pagination is not available; you will simply see `limit` images. You may specify `pageby="limit"` to allow pagination to automatically follow the value of the `limit` attribute. Note: [newer](/tags/newer) and [older](/tags/older) will paginate all content types at once.
: **Default:** unset.

`realname="author name"`
: Filter the image list so it only includes images uploaded by this list of author real names. The author names may be URL encoded (e.g. `realname="John+Smith"`) and thus could be read from the current `example.com/author/author+name` URL. Note that this attribute may incur one extra query per name, so if it is possible to use the raw author instead it will be faster.
: **Default:** unset.

`size="portrait|landscape|square|value|ratio"`
: Filter the image list so it only includes images matching certain dimensions. Use `portrait`, `landscape` or `square` to filter images with that aspect ratio. Alternatively, specify a single value to 2 decimal places of the desired aspect (e.g. 1.33 for 4:3) or a pair of values representing an aspect ratio such as `16:9`. Finally, by including just one 'side' of the aspect ratio, it's possible to filter by images with that particular dimension, e.g. `size="800:` would match all images with a width of 800px. Or `size=":1024"` would match all images with a height of 1024px.
: **Default:** unset.

`thumbnail="number"`
: Filter the image list to only include images that have a thumbnail of a certain type, or none.
: **Values:** unset (i.e. all images), `2` (images that have automatic thumbnails), `1` (images that have a custom thumbnail) or `0` (images that do not have a thumbnail).
: **Default:** unset.

`time="offset"`
: Filter the images using this time range. e.g. `time="-1 month"` would find all images with timestamps within the last month of 'now'.
: See also: `month` attribute to alter the starting point from which to apply the `time` offset.
: **Default:** unset.

{% capture svals %}
<code>alt</code>.<br>
<code>author</code>.<br>
<code>caption</code>.<br>
<code>category</code>.<br>
<code>date</code>.<br>
<code>ext</code> (image file extension).<br>
<code>h</code> (image `height` attribute).<br>
<code>id</code> (image id#).<br>
<code>name</code> (image name).<br>
<code>thumb_h</code> (image thumbnail <code>height</code> attribute).<br>
<code>thumb_w</code> (image thumbnail <code>width</code> attribute).<br>
<code>w</code> (image <code>width</code> attribute).
{% endcapture %}
{% include atts-global.html class="tag name **or** unset" offset="0" limit="0" sort="name asc" sortvals=svals %}

## Examples

### Example 1: Varying attributes

This example shows the outcome of various attribute configurations to give you an idea of what to expect from the tag. More concrete examples follow.

~~~ html
<txp:images auto_detect="" />
~~~

Displays all images in the database.

~~~ html
<txp:images auto_detect="" sort="id desc" />
~~~

Display all images in the database, sorted by `id` in descending order.

~~~ html
<txp:images />
~~~

Context-sensitivity mode. Returns an image list based on the first of:

* Article image field, if on an individual article page;
* Images matching category, if on a category list page;
* Images matching author, of on an author list page;
* All images in the database.

~~~ html
<txp:images id="" />
<txp:images name="" />
<txp:images category="" />
~~~

No images displayed. This means that if you did some tag-in-tag magic such as: `category="<txp:custom_field name="my_cats" />"` it will show no images if the custom field is empty.

~~~ html
<txp:images id="2,3,6" />
~~~

Display images 2, 3, and 6.

~~~ html
<txp:images name="lion.jpg, zebra.jpg" />
~~~

The named images are displayed.

~~~ html
<txp:images name="pengiun.jpg" />
~~~

No images are displayed (mis-spelled image name).

~~~ html
<txp:images category="mammals, birds" />
~~~

All images in the named categories are displayed.

~~~ html
<txp:images category=", mammals, birds" />
~~~

All images in the named categories and any uncategorized images are displayed.

~~~ html
<txp:images category=" " />
~~~

Just uncategorized images are displayed (note that `category=","` also works, but a space looks better!).

~~~ html
<txp:images author="attenborough, morris" />
~~~

All images by author (ID) 'attenborough' and 'morris' are displayed.

~~~ html
<txp:images realname="David+Attenborough" />
~~~

All images by author 'David Attenborough' are displayed. This incurs one extra query to look up the author's ID from the given real name.

~~~ html
<txp:images category="mammals, birds" author="attenborough, morris" />
~~~

All images in the named categories that are assigned to the named authors are displayed.

~~~ html
<txp:images category="mammals, birds" extension=".jpg" />
~~~

All JPEG images in the named categories are displayed.

~~~ html
<txp:images category="mammals, birds" extension=".jpg" author="attenborough, morris" />
~~~

All JPEG images in the named categories that are assigned to the named authors are displayed.

~~~ html
<txp:images extension=".gif" />
~~~

All GIF images are displayed.

~~~ html
<txp:images category="mammals, birds" thumbnail="1" />
~~~

All images in the named categories that have custom thumbnails assigned to them are displayed.

~~~ html
<txp:images thumbnail="1" />
~~~

All images that have custom thumbnails assigned to them are displayed.

~~~ html
<txp:images thumbnail="0" />
~~~

All images that do not have thumbnails assigned to them are displayed.

### Example 2: Multiple pieces of information at once, using images tag as wrapper

~~~ html
<txp:images category="birds, mammals" thumbnail="1" sort="category asc">
    <txp:if_different>
        <h4>
            <txp:image_info type="category_title" />
        </h4>
    </txp:if_different>
    <txp:thumbnail wraptag="div" />
    <txp:image_info type="w, h" wraptag="div" break=" × " />
    by <txp:image_info type="author" />
</txp:images>
~~~

Shows the thumbnail of each image that has an assigned custom thumbnail image from the 'mammals' and 'birds' categories and, beneath each, show its dimensions 'width' x 'height' along with the author of the image. Since the list has been sorted by category, the `<txp:if_different>` conditional can be used to output the category title at the top of the list of images each time it changes.

Other tags used: [if_different](/tags/if_different), [image_info](/tags/image_info), [thumbnail](/tags/thumbnail).

### Example 3: Dynamic srcset

TBD.

### Example 4: Using offset and limit for news pages

You can use the `offset` attribute to slice up your [article_image](/tags/article_image) list. By specifying a comma-separated list of image IDs in your 'Article image' field, this tag can iterate over them in groups. So, if your 'Article image' list contained four IDs you could treat your first image as the 'Hero' at the top of the article, displayed using:

~~~ html
<txp:images limit="1">
    <txp:image />
</txp:images>
~~~

And then later on you could drop in…

~~~ html
<txp:images offset="1" limit="3" wraptag="div" class="gallery">
    <txp:thumbnail />
</txp:images>
~~~

…to skip the first and display the three remaining supporting images as thumbnails in a gallery, all taken from the Article Image field.

Other tags used: [article_image](/tags/article_image), [thumbnail](/tags/thumbnail).

## Genealogy

### Version 4.9.0

`thumbnail` attribute extended to automatic thumbs (`2`).

### Version 4.7.0

`breakby` attribute added.

### Version 4.6.0

`breakclass` attribute deprecated.

### Version 4.5.0

Sort order of `id` attribute maintained, unless overridden with `sort` attribute.

### Version 4.3.0

Tag support added.
