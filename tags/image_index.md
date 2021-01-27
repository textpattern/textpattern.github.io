---
layout: document
category: Tags
published: true
title: Image index (Deprecated)
description: The 'image_index' tag is deprecated - use 'images' tag instead.
tags:
  - Deprecated tags
---

# Image index

**Deprecated in Textpattern 4.7.0** (use the [images](/tags/images) tag instead)
{: .alert-block .error}

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:image_index />
~~~

The **image_index** tag is a *single* tag that is intended to be used in tandem with [image_display](/tags/image_display). It renders thumbnails of all images contained in an image category. This category can be specified as an attribute to the tag and defaults to the current site category as given in the page's URL.

The thumbnail images are linked to an address which will pass the image ID plus the active category on to the tandem [image_display](/tags/image_display) tag. It is up to the user to include this tandem tag at an appropriate place inside the page template.

Note: As the image category is passed into [image_display](/tags/image_display), it requires to either place the 'receiving' image_display on an article independent portion of the page (i.e. outside of the article form), or otherwise both the article used for display and the images have to share a 'common' category.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`category="category name"`
: Category of images to display.
: **Values:** (comma separated list of) category name(s).
: **Default:** presently viewed category.

`limit="integer"`
: The number of images to display.
: **Default:** `0` (no limit).

`offset="integer"`
: The number of images to skip.
: **Default:** `0`.

`sort="sort value(s)"`
: How to sort the resulting image list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively.
: **Values:** \\
`alt` (image alt text). \\
`author`. \\
`caption` (image caption text). \\
`category` (image category). \\
`date` (date posted). \\
`ext` (image extension). \\
`h` (image height). \\
`id` (image id#). \\
`name` (image name). \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
`thumbnail`. \\
`w` (image width). \\
Each field in the `txp_image` database table can be used as a sort key.
: **Default:** `name asc`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** `br` (but see [break cross-reference](/tags/tag-attributes-cross-reference#break) for exceptions).

`breakby="integer"` <span class="footnote warning">v4.7.0+</span>
: Used to group list items when separating by `break`. Possible values are lists of integers, like `2` (groups of 2 items) or `1,2` (alternate groups of 1 and 2 items).
: **Default:** `1` (actually unset).

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](/tags/tag-attributes-cross-reference#label) for exceptions).

`labeltag="element"`
: HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
: **Default:** unset.

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Create a list of images in a category

~~~ html
<txp:image_index category="personal" wraptag="ol" break="li" />
<txp:image_display />
~~~

Shows the thumbnail images from the category 'personal'.

Other tags used: [image_display](/tags/image_display).

## Genealogy

### Version 4.7.0

`breakby` attribute added. \\
Tag support removed - use [images](/tags/images) tag instead.

### Version 4.3.0

`c` attribute deprecated and renamed `category`.
