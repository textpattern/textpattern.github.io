---
layout: document
category: Tags
published: true
title: Image info
description: Tag that Textpattern will replace with the relevant image data from the current image.
tags:
  - Image tags
---

# Image info

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:image_info />
~~~

The **image_info** tag is a *single* tag that Textpattern will replace with the relevant image data from the current image. Should usually be used in an 'image' type form, although it may be used on its own providing you specify an **id** or **name**.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`id="integer"`
: An `id` assigned at upload of an image to display. The IDs can be found on the Images panel.
: **Default:** unset.

`name="image name"`
: An image to display, given by its image name as shown on the Images panel. If both `name` and `id` are specified, the `id` takes precedence.
: **Default:** unset.

`type="information type"`
: One or more of the following values to display the particular pieces of information from the current image.
: **Values:** \\
`alt`: image `alt` content. \\
`author`: image author's login name (see [image_author](/tags/image_author) to display the author's real name). \\
`caption`: image `caption` content. \\
`category`: image category name. \\
`category_title`: image category title. \\
`date`: timestamp of image upload (this is not very useful, so consult [image_date](/tags/image_date) for a better alternative). \\
`ext`: image extension. \\
`h`: image height. \\
`id`: image id. \\
`name`: image name. \\
`thumb_w`: image thumbnail width. \\
`thumb_h`: image thumbnail height. \\
`w`: image width.
: **Default:** `caption`.

## Examples

### Example 1: Gallery thumbnail and caption

~~~ html
<txp:images category="mammals">
    <txp:thumbnail />
    <txp:image_info type="caption" wraptag="div" />
</txp:images>
~~~

Grabs all images from the 'mammals' category and displays the image thumbnail itself along with the image caption surrounded with HTML `<div>` tags. Note that the image IDs/names are not specified inside the container because they are automatically assigned from the `<txp:images>` tag for each image in the given category.

If you had multi-line captions separated by a blank line, you could pass the caption through the `textile` filter to retain paragraph breaks:

~~~ html
<txp:image_info type="caption" wraptag="div" escape="textile" />
~~~

Other tags used: [images](/tags/images), [thumbnail](/tags/thumbnail).

### Example 2: Multiple pieces of information at once

~~~ html
<txp:images category="birds, mammals" thumbnail="1" sort="category asc">
    <txp:if_different>
        <h4>
            <txp:image_info type="category_title" />
        </h4>
    </txp:if_different>
    <txp:thumbnail wraptag="div" />
    <txp:image_info type="w, h" wraptag="div" class="img-dimensions" break=" x " />
    by
    <txp:image_info type="author" />
</txp:images>
~~~

Shows the thumbnail of each image that has an assigned thumbnail image from the 'mammals' and 'birds' categories and, beneath each, show its dimensions 'width' x 'height' along with the author of the image. Since the list has been sorted by category, the `<txp:if_different>` conditional can be used to output the category title at the top of the list of images each time it changes.

Other tags used: [images](/tags/images), [thumbnail](/tags/thumbnail), [if_different](/tags/if_different).

### Example 3: Specific image information

~~~ html
<txp:image_info id="5" type="category_title" />
~~~

Displays the category_title of the category assigned to image ID '5'.

## Genealogy

### Version 4.7.0

`breakby` attribute added.

### Version 4.6.0

`breakclass` attribute deprecated.

### Version 4.3.0

Tag support added.
