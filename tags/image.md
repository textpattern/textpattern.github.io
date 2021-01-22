---
layout: document
category: Tags reference
published: true
title: Image
description: Tag that Textpattern will replace with an 'img' HTML tag matching an image uploaded via the Images panel.
tags:
  - Image tags
---

# Image

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:image />
~~~

The **image** tag is a *single* tag that Textpattern will replace with the `<img src="…">` HTML tag matching the image of the numeric `id` assigned by Textpattern when the image was uploaded via the Textpattern Images panel.

The tag outputs the `alt`, `width`, and `height` attributes by default. If you don't need to set image dimensions (e.g. if you use `width: 100%` in your CSS), you can 'turn off' the effect of the `width` and `height` attributes by using `width="0" height="0"`.

The tag is also context-sensitive: if an `id` or `name` attribute is not specified, it can be used inside an [images](/tags/images) tag or form to output an `<img src="…">` HTML tag matching the current image.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"` <span class="footnote warning">v4.0.4+</span>
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&` for the image's `alt` and `title` attributes.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`height="integer"` <span class="footnote warning">v4.3.0+</span>
: Specify an image `height` which overrides the value stored in the database. Use `height="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the height if a width is used).
: **Default:** height of image stored in the database.

`html_id="id"` <span class="footnote warning">v4.0.4+</span>
: The HTML `id` attribute applied to the `wraptag`, if set, otherwise to the `<img>` tag.
: **Default:** unset.

`id="integer"`
: Specifies the `id`, assigned at upload of the image, to display. Can be found on the Images panel. If both `name` and `id` are specified, `name` is used while `id` is ignored. If neither is specified, the tag must be used within an [images](/tags/images) tag or form.

`loading="text"` <span class="footnote warning">v4.8.3+</span>
: [HTML loading attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#attr-loading) to be applied to image. Specifies how a browser should handle loading of the image.
: **Values:** `lazy` (defers loading the image until it reaches a calculated distance from the viewport, as defined by the browser), `eager` (loads the image immediately, regardless of whether or not the image is currently within the visible viewport).
: **Default:** unset.

`name="image name"`
: Specifies which image to display by its image `name` as shown on the Images panel.

`style="style rule"`
: Inline CSS `style` rule. It's recommended that you assign CSS rules via the `class` attribute instead.
: **Default:** unset.

`thumbnail="boolean"` <span class="footnote warning">v4.8.0+</span>
: Whether to display the full-size (0) or thumbnail-size (1) image.
: **Default:** 0.

`title="boolean|title text"` <span class="footnote warning">v4.8.0+</span>
: Adds the given text as an HTML 'title' attribute to the image. If used as a valueless attribute, will use the caption as text.

`width="integer"` <span class="footnote warning">v4.3.0+</span>
: Specify an image `width` which overrides the value stored in the database. Use `width="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the width if a height is used).
: **Default:** width of image stored in the database.

{% include atts-global.html %}

## Examples

### Example 1: Display the given image

~~~ html
<txp:image id="42" />
~~~

Displays the image uploaded as ID #42.

### Example 2: Apply a CSS class

~~~ html
<txp:image name="chickens.jpg" class="promoted" />
~~~

Displays the image named `chickens.jpg` and assigns a `class="promoted"` attribute/value to the `<img>` tag.

Had the `wraptag` attribute been used, the `class="promoted"` attribute/value would have been applied to that instead of directly to the image tag.

### Example 3: Use within images tag

~~~ html
<txp:images>
    <txp:image />
</txp:images>
~~~

Displays full-size images for all images found by the [images](/tags/images) tag.

## Genealogy

### Version 4.8.3

`loading` attribute added.

### Version 4.8.0

`title` attribute added. \\
`thumbnail` attribute may be used instead of the dedicated [thumbnail](/tags/thumbnail) tag.

### Version 4.3.0

`height` and `width` attributes added. \\
Added context sensitivity within [images](/tags/images) tag.

### Version 4.2.0

`align` attribute deprecated.

### Version 4.0.7

Default value for `escape` attribute changed from 'unset' to `html`.

### Version 4.0.4

`escape`, `html_id` and `wraptag` attributes added.
