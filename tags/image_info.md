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

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:image_info />
~~~

The **image_info** tag is a *single* tag that Textpattern will replace with the relevant image data from the current image. Should usually be used in an 'image' type form, although it may be used on its own providing you specify an **id** or **name**.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`id="integer"`
: An `id` assigned at upload of an image to display. The IDs can be found on the [Images panel](/administration/images-panel).
: **Default:** unset.

`name="image name"`
: An image to display, given by its image name as shown on the [Images panel](/administration/images-panel). If both `name` and `id` are specified, the `id` takes precedence.
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

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** unset.

`breakby="integer"` <span class="footnote warning">v4.7.0+</span>
: Used to group list items when separating by `break`. Possible values are lists of integers, like `2` (groups of 2 items) or `1,2` (alternate groups of 1 and 2 items).
: **Default:** `1` (actually unset).

`class="class name"`
: CSS `class` attribute to apply to the `wraptag`, if set.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="tag"`
: HTML element to wrap the items grabbed from the `type` attribute, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Gallery thumbnail and caption

~~~ html
<txp:images category="mammals">
    <txp:thumbnail />
    <txp:image_info type="caption" wraptag="div" />
</txp:images>
~~~

Grabs all images from the 'mammals' category and displays the image thumbnail itself along with the image caption surrounded with HTML `<div>` tags. Note that the image IDs/names are not specified inside the container because they are automatically assigned from the `<txp:images>` tag for each image in the given category.

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
