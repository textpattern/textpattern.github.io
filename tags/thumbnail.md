---
layout: document
category: Tags reference
published: true
title: Thumbnail
description: Tag that Textpattern will replace with an 'img' HTML tag matching an image thumbnail set via the Images panel.
tags:
  - Image tags
---

# Thumbnail

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:thumbnail />
~~~

The **thumbnail** tag is a *single* tag that Textpattern will replace with the `<img src="…">` HTML tag matching the thumbnail image of the numeric `id` assigned by Textpattern when the parent image was uploaded via the Textpattern Images panel.

By default, the tag is context-sensitive: if an `id` or `name` attribute is not specified, it can be used inside an [images](/tags/images) tag or form to output an `<img src="…">` HTML tag matching the thumbnail of the current image.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"` <span class="footnote warning">v4.0.4+</span>
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&` for the image's `alt` and `title` attributes.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`height="integer"` <span class="footnote warning">v4.3.0+</span>
: Specify an image `height` which overrides the value stored in the database. Use `height="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the height if a width is used).

`html_id="id"` <span class="footnote warning">v4.0.4+</span>
: The HTML `id` attribute assigned to the image (or to the `wraptag`, if set).
: **Default:** unset.

`id="integer"`
: Specifies the `id` assigned at upload of the image to display. Can be found on the Textpattern Images panel. If both `name` and `id` are specified, `name` is used while `id` is ignored. If neither is specified, the tag must be used within an [images](/tags/images) tag or form.

`link="boolean"` <span class="footnote warning">v4.0.6+</span>
: If set, the thumbnail will be rendered as a (non-Javascript) URL link to the full-size image.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`link_rel="relation"` <span class="footnote warning">v4.0.6+</span>
: Value for the HTML `rel` attribute.
: **Default:** unset.

`loading="text"` <span class="footnote warning">v4.8.3+</span>
: [HTML loading attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#attr-loading) to be applied to image. Specifies how a browser should handle loading of the image.
: **Values:** `lazy` (defers loading the image until it reaches a calculated distance from the viewport, as defined by the browser), `eager` (loads the image immediately, regardless of whether or not the image is currently within the visible viewport).
: **Default:** unset.

`name="image name"`
: Specifies which image thumbnail to display by its image name as shown on the Textpattern Images panel.

`poplink="boolean"` (Deprecated from version 4.7.0)
: If set, the image will be rendered in a popup window.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`style="style rule"`
: Inline CSS `style` rule. It's recommended that you assign CSS rules via the `class` attribute instead.
: **Default:** unset.

`title="boolean|title text"` <span class="footnote warning">v4.8.0+</span>
: Adds the given text as an HTML 'title' attribute to the image. If used as a valueless attribute, will use the caption as text.

`width="integer"` <span class="footnote warning">v4.3.0+</span>
: Specify an image `width` which overrides the value stored in the database. Use `width="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the width if a height is used).

{% include atts-global.html %}

## Examples

### Example 1: Display the given thumbnail

~~~ html
<txp:thumbnail id="23" />
~~~

Displays the image thumbnail for the image uploaded as ID #23.

### Example 2: Use within images tag

~~~ html
<txp:images>
    <txp:thumbnail />
</txp:images>
~~~

Displays thumbnails for all images found by the [images](/tags/images) tag.

## Genealogy

### Version 4.8.3

`loading` attribute added.

### Version 4.8.0

`title` attribute added.

### Version 4.7.0

`poplink` attribute deprecated.

### Version 4.3.0

`height` and `width` attributes added. \\
Added context sensitivity within [images](/tags/images) tag.

### Version 4.2.0

`align` attribute deprecated.

### Version 4.0.7

Default value for `escape` attribute changed from 'unset' to `html`.

### Version 4.0.6

`link` and `link_rel` attributes added.

### Version 4.0.4

`escape`, `html_id` and `wraptag` attributes added.
