---
layout: document
category: Tags
published: true
title: Image
description: Tag that Textpattern will replace with an 'img' HTML tag matching an image uploaded via the Images administration panel.
tags:
  - Image tags
---

# Image

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:image />
~~~

The **image** tag is a *single* tag that Textpattern will replace with the `<img src="...">` HTML tag matching the image of the numeric `id` assigned by Textpattern when the image was uploaded via the Textpattern [Images administration panel](https://docs.textpattern.io/administration/images-panel).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape HTML entities such as `<`, `>` and `&` for the image's `alt` and `title` attributes.
: **Values:** `html` or unset.
: **Default:** `html`.

`height="integer"`
: Specify an image `height` which overrides the value stored in the database. Use `height="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the height if a width is used).
: **Default:** height of image stored in the database.

`html_id="id"`
: The HTML `id` attribute applied to the `wraptag`, if set, otherwise to the `<img>` tag.
: **Default:** unset.

`id="integer"`
: Specifies the `id`, assigned at upload of the image, to display. Can be found on the [Images administration panel](https://docs.textpattern.io/administration/images-panel). If both `name` and `id` are specified, `name` is used while `id` is ignored.

`name="image name"`
: Specifies which image to display by its image `name` as shown on the [Images administration panel](https://docs.textpattern.io/administration/images-panel).

`width="integer"`
: Specify an image `width` which overrides the value stored in the database. Use `width="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the width if a height is used).
: **Default:** width of image stored in the database.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value, if set, otherwise to the `<img>` tag.
: **Default:** unset (see [class cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#class)).

`style="style rule"`
: Inline CSS `style` rule. It's recommended that you assign CSS rules via `class` attribute instead.
: **Default:** unset.

`wraptag="element"`
: HTML tag to be used to wrap the `<img>` tag, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](https://docs.textpattern.io/tags/tag-attributes-cross-reference#wraptag) for exceptions).

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

## Genealogy

### Version 4.3.0

`width` and `heigh` attributes added.

### Version 4.2.0

`align` attribute deprecated.

### Version 4.0.7

Default value for `escape` attribute changed from 'unset' to `html`.

### Version 4.0.4

`html_id`, `escape` and `wraptag` attributes added.
