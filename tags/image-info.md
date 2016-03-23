---
layout: document
category: tags
published: true
title: "Image info"
tags:
  - Image tags
---

# Image info

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:image_info />
~~~

The **image_info** tag is a *single* tag that Textpattern will replace with the relevant image data from the current image. Should usually be used in an 'image' type form, although it may be used on its own providing you specify an **id** or **name**.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape HTML entities such as `<`, `>` and `&`.
: Values: `html` or unset.
: Default: `html`;

`id="integer"`
: An `id` assigned at upload of an image to display. The IDs can be found on the [Images administration panel](../administration/images-panel).
: Default: unset.

`name="image name"`
: An image to display, given by its image name as shown on the [Images administration panel](../administration/images-panel). If both `name` and `id` are specified, the `id` takes precedence.
: Default: unset.

`type="information type"`
: One or more of the following values to display the particular pieces of information from the current image.
: Values: \\
`alt`: image `alt` content. \\
`author`: image author's login name (see [image_author](image-author) to display the author's real name). \\
`caption`: image `caption` content. \\
`category`: image category name. \\
`category_title`: image category title. \\
`date`: timestamp of image upload (this is not very useful, so consult [image_date](image-date) for a better alternative). \\
`ext`: image extension. \\
`h`: image height. \\
`id`: image id. \\
`name`: image name. \\
`thumb_w`: image thumbnail width. \\
`thumb_h`: image thumbnail height. \\
`w`: image width.
: Default: `caption`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: Default: unset.

`class="class name"`
: CSS `class` attribute to apply to the `wraptag`, if set.
: Default: unset (see @@class cross-reference@@).

`wraptag="tag"`
: HTML element to wrap the items grabbed from the `type` attribute, specified without brackets (e.g. `wraptag="ul"`).
: Default: unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Gallery thumbnail and caption

~~~ html
<txp:images category="mammals">
    <txp:thumbnail />
    <txp:image_info type="caption" wraptag="div" />
</txp:images>
~~~

Grabs all images from the 'mammals' category and displays the image thumbnail itself along with the image caption surrounded with HTML `<div>` tags. Note that the image IDs/names are not specified inside the container because they are automatically assigned from the `<txp:images>` tag for each image in the given category.

Other tags used: [images](images), [thumbnail](thumbnail).

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

Other tags used: [images](images), [thumbnail](thumbnail), [if_different](if-different).

### Example 3: Specific image information

~~~ html
<txp:image_info id="5" type="category_title" />
~~~

Displays the category_title of the category assigned to image ID '5'.

## Genealogy

### Version 4.6.0

`breakclass` attribute deprecated.

### Version 4.3.0

Tag support added.
