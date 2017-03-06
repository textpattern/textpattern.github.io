---
layout: document
category: Tags
published: true
title: Thumbnail
description: Tag that Textpattern will replace with an 'img' HTML tag matching an image thumbnail set via the Images administration panel.
tags:
  - Image tags
---

# Thumbnail

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:thumbnail />
~~~

The **thumbnail** tag is a *single* tag that Textpattern will replace with the `<img src="...">` HTML tag matching the thumbnail image of the numeric `id` assigned by Textpattern when the parent image was uploaded via the Textpattern [Images administration panel](https://docs.textpattern.io/administration/images-panel).

By default, the tag is context-sensitive: if an `id` or `name` attribute is not specified, it can be used inside an [images](images) tag or form to output an `<img src="...">` HTML tag matching the thumbnail of the current image.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape HTML entities such as `<`, `>` and `&` for the image's `alt` and `title` attributes.
: **Values:** `html` or unset.
: **Default:** `html`.

`height="integer"`
: Specify an image `height` which overrides the value stored in the database. Use `height="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the height if a width is used).

`html_id="id"`
: The HTML `id` attribute assigned to the image (or to the `wraptag`, if set).
: **Default:** unset.

`id="integer"`
: Specifies the `id` assigned at upload of the image to display. Can be found on the Textpattern [Images administration panel](https://docs.textpattern.io/administration/images-panel). If both `name` and `id` are specified, `name` is used while `id` is ignored. If neither is specified, the tag must be used within an [images](images) tag or form.

`link="boolean"`
: If set, the thumbnail will be rendered as a (non-Javascript) URL link to the full-size image.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`link_rel="relation"`
: Value for the HTML `rel` attribute.
: **Default:** unset.

`name="image name"`
: Specifies which image thumbnail to display by its image name as shown on the Textpattern [Images administration panel](https://docs.textpattern.io/administration/images-panel).

`poplink="boolean"`
: If set, the image will be rendered in a popup window.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`width="integer"`
: Specify an image `width` which overrides the value stored in the database. Use `width="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the width if a height is used).

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value, if set, otherwise to the `<img>` tag.
: **Default:** unset (see [class cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#class)).

`style="style rule"`
: Inline CSS `style` rule. It's recommended that you assign CSS rules via `class` attribute instead.
: **Default:** unset.

`wraptag="element"`
: HTML tag to be used to wrap the `<img>` tag, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Display the given thumbnail

~~~ html
<txp:thumbnail id="23" />
~~~

Displays the image thumbnail for the image uploaded as ID #23.

### Example 2: Use with [images](images)

~~~ html
<txp:images>
    <txp:thumbnail />
</txp:images>
~~~

Displays thumbnails for all images found by the [images](images) tag.

## Genealogy

### Version 4.3.0

Added context sensitivity within [images](images) tag.

### Version 4.2.0

`align` attribute deprecated.

### Version 4.0.7

Default value for `escape` attribute changed from unset to `html`.

### Version 4.0.6

`link` and `link_rel` attributes added.

### Version 4.0.4

`html_id`, `escape` and `wraptag` attributes added.
