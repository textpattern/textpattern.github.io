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

`extension=".extension"`
: Filter the images by this list of image extensions, including the leading dot. Example: `extension=".jpg, .png"`.
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

`limit="integer"`
: The number of images to display per page.
: **Default:** `0` (unlimited).

`name="image name"`
: Filter the images by this list of image names as shown on the Images panel.
: **Default:** unset.

`offset="integer"`
: The number of images to skip.
: **Default:** `0` (only effective if `limit` is set).

`pageby="integer" (or "limit")"`
: The number of images to jump forward or back when an [older](/tags/older) or [newer](/tags/newer) link is selected. Without this attribute, pagination is not available; you will simply see `limit` images. You may specify `pageby="limit"` to allow pagination to automatically follow the value of the `limit` attribute. Note: [newer](/tags/newer) and [older](/tags/older) will paginate all content types at once.
: **Default:** unset.

`realname="author name"`
: Filter the image list so it only includes images uploaded by this list of author real names. The author names may be URL encoded (e.g. `realname="John+Smith"`) and thus could be read from the current `example.com/author/author+name` URL. Note that this attribute may incur one extra query per name, so if it is possible to use the raw author instead it will be faster.
: **Default:** unset.

`sort="sort value(s)"`
: How to sort the resulting image list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively.
: **Values:** \\
`alt`. \\
`author`. \\
`caption`. \\
`category`. \\
`date`. \\
`extension` (image extension). \\
`h` (image `height` attribute). \\
`id` (image id#). \\
`name` (image name). \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
`thumb_h` (image thumbnail `height` attribute). \\
`thumb_w` (image thumbnail `width` attribute). \\
`w` (image `width` attribute).
: **Default:** `name asc`.

`thumbnail="boolean"`
: Filter the image list to only include images that have a thumbnail, or not.
: **Values:** unset (i.e. all images), `1` (images that have a thumbnail) or `0` (images that do not have a thumbnail).
: **Default:** unset.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** `br` (but see [break cross-reference](/tags/tag-attributes-cross-reference#break) for exceptions).

`breakby="integer"` <span class="footnote warning">v4.7.0+</span>
: Used to group list items when separating by `break`. Possible values are lists of integers, like `2` (groups of 2 items) or `1,2` (alternate groups of 1 and 2 items).
: **Default:** `1` (actually unset).

`class="class name"`
: CSS `class` attribute to apply to the image (or to the `wraptag`, if set).
: **Default:** tag name **or** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](/tags/tag-attributes-cross-reference#label) for exceptions).

`labeltag="element"`
: HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
: **Default:** unset.

`wraptag="tag"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

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

All images in the named categories that have thumbnails assigned to them are displayed.

~~~ html
<txp:images thumbnail="1" />
~~~

All images that have thumbnails assigned to them are displayed.

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

Shows the thumbnail of each image that has an assigned thumbnail image from the 'mammals' and 'birds' categories and, beneath each, show its dimensions 'width' x 'height' along with the author of the image. Since the list has been sorted by category, the `<txp:if_different>` conditional can be used to output the category title at the top of the list of images each time it changes.

Other tags used: [if_different](/tags/if_different), [image_info](/tags/image_info), [thumbnail](/tags/thumbnail).

### Example 3: Integration with third-party PHP resizing script (TimThumb)

[TimThumb](https://www.binarymoon.co.uk/projects/timthumb/) is a simple, flexible, PHP script that resizes images directly on your web server. [Read the TimThumb documentation](https://www.binarymoon.co.uk/2010/08/timthumb/) for basic installation instructions (also requires the GD image library). Then, for example, you can use the following:

~~~ html
<txp:images limit="6" category="gallery">
    <p>
        <a href="<txp:image_url />" title="View original">
            <img src="<txp:site_url />timthumb.php?src=<txp:image_url />&amp;w=160" alt="<txp:image_info type='alt' />">
        </a>
    </p>
    <p>
        Author: <txp:image_author />
    </p>
</txp:images>
~~~

Creates a small gallery of 6 images from the category 'gallery'. Uses the TimThumb script to proportionately resize a thumbnail version (160px wide) of the image automatically, and keep a cached version of the thumbnail for future visitors. Links the thumbnail to the original image, and lists the image author name below each thumbnail.

Other tags used: [image_author](/tags/image_author), [image_info](/tags/image_info), [image_url](/tags/image_url), [site_url](/tags/site_url).

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

…to display the three remaining supporting images as thumbnails in a gallery, all taken from the Article Image field.

Other tags used: [article_image](/tags/article_image), [thumbnail](/tags/thumbnail).

## Genealogy

### Version 4.7.0

`breakby` attribute added.

### Version 4.6.0

`breakclass` attribute deprecated.

### Version 4.5.0

Sort order of `id` attribute maintained, unless overridden with `sort` attribute.

### Version 4.3.0

Tag support added.
