---
layout: document
category: Tags
published: true
title: Article image
description: The article_image tag is used to create an img HTML tag matching the numeric ID or URL assigned when the article is posted.
tags:
  - Article tags
  - Image tags
---

# Article image

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:article_image />
~~~

The **article_image** tag is a *single* tag. Textpattern will replace this tag with the `<img src="…">` HTML tag matching the numeric ID or URL assigned when the article is posted.

The image to be associated with the tag is set in the [Write panel](/administration/write-panel). In the 'Article image' field enter either the URL of the image, or the Textpattern ID (a number set by Textpattern at upload) - most of the time you will use the image ID here. Note that although the 'Article image' field can accept a comma separated list of image IDs, you can only assign a single image to each article using this tag (the [images](/tags/images) tag allows greater flexibility for multiple article images).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"` <span class="footnote warning">v4.0.4+</span>
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&` for the image's `alt` and `title` attributes.
: **Values:** See the [tag escaping](/tags/tag-basics/tag-escaping) documentation for all possible values.
: **Default:** `html`.

`height="integer"` <span class="footnote warning">v4.3.0+</span>
: Specify an image `height` which overrides the value stored in the database. Use `height="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the height if a width is used).
: **Default:** height of image stored in the database.

`html_id="id"` <span class="footnote warning">v4.0.4+</span>
: The HTML `id` attribute assigned to the image (or to the `wraptag`, if set).
: **Default:** unset.

`loading="text"` <span class="footnote warning">v4.8.3+</span>
: [HTML loading attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img#attr-loading) to be applied to image. Specifies how a browser should handle loading of the image.
: **Values:** `lazy` (defers loading the image until it reaches a calculated distance from the viewport, as defined by the browser), `eager` (loads the image immediately, regardless of whether or not the image is currently within the visible viewport).
: **Default:** unset.

`thumbnail="boolean"` <span class="footnote warning">v4.0.4+</span>
: Use the thumbnail rather than full-size image.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`width="integer"` <span class="footnote warning">v4.3.0+</span>
: Specify an image `width` which overrides the value stored in the database. Use `width="0"` to turn off the output of a width attribute in the `<img>` tag (thus the browser will scale the width if a height is used).
: **Default:** width of image stored in the database.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"` <span class="footnote warning">v4.0.4+</span>
: CSS `class` attribute to apply to the image (or to the `wraptag`, if set).
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`style="style rule"`
: Inline CSS `style` rule. It's recommended that you assign CSS rules via `class` attribute instead.
: **Default:** unset.

`wraptag="tag"` <span class="footnote warning">v4.0.4+</span>
: HTML tag to be used to wrap the `<img>` tag, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Use wraptag and class for styling

~~~ html
<txp:article_image wraptag="p" class="article_image" />
~~~

This will wrap the image in paragraph tags, applying the `class` to the paragraph:

~~~ html
<p class="article_image">
    <img src="…">
</p>
~~~

It gives you full control over the image appearance using CSS. Note: Without the wraptag, the class is applied directly to the `<img>` tag.

### Example 2: Link thumbnail to the article

Used in an article list form, this will display an article list consisting of hyperlinked article images' thumbnails:

~~~ html
<txp:permlink>
    <txp:article_image thumbnail="1" />
</txp:permlink>
~~~

Other tags used: [permlink](/tags/permlink).

## Genealogy

### Version 4.8.3

`loading` attribute added.

### Version 4.3.0

`height` and `width` attributes added.

### Version 4.2.0

`align` attribute deprecated.

### Version 4.0.7

Default value for `escape` attribute changed from 'unset' to `html`.

### Version 4.0.4

`class`, `escape`, `html_id`, `thumbnail` and `wraptag` attributes added.
