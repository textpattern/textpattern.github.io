---
layout: document
category: Tags
published: true
title: Image author
description: Tag that Textpattern will replace with the author's name associated with the current image in an images list.
tags:
  - Image tags
---

# Image author

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:image_author />
~~~

The **image_author** tag is a *single* tag that Textpattern will replace with the author's name associated with the current image in an [images](/tags/images) list. It can **only** be used inside `<txp:images />`.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`id="integer"` <span class="footnote warning">v4.7.0+</span>
: Specifies which image to query by its image `id` as shown on the [Images panel](/administration/images-panel). If both `name` and `id` are specified, `name` is used while `id` is ignored.
: **Default:** unset.

`link="link type (boolean)"`
: Whether to hyperlink the author or not.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`name="image name"` <span class="footnote warning">v4.7.0+</span>
: Specifies which image to query by its image `name` as shown on the [Images panel](/administration/images-panel). If both `name` and `id` are specified, `name` is used while `id` is ignored.
: **Default:** unset.

`section="section name"`
: Direct any linked author name to the nominated section instead of to the default (front) page.
: **Default:** unset.

`this_section="boolean"`
: If set to 1, the linked author name will direct users to an author list in the current section.
: **Values:** `0` (all sections) or `1` (this section only).
: **Default:** `0`.

`title="boolean"`
: Whether to display the author's real name or login name.
: **Values:** `0` (login name) or `1` (real name).
: **Default:** `1`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="element"`
: HTML element to wrap around the author name, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Add image author to gallery

~~~ html
<txp:images category="mammals">
    <a href="<txp:image_url />">
        <txp:thumbnail />
    </a>
    <div class="img-info">
        by <txp:image_author />
    </div>
</txp:images>
~~~

Other tags used: [images](/tags/images), [thumbnail](/tags/thumbnail).

### Example 2: Link to author list

~~~ html
<txp:images category"fish">
    <a href="<txp:image_url />">
        <txp:thumbnail />
    </a>
    <div class="img-info">
        by <txp:image_author link="1" />
    </div>
</txp:images>
~~~

Displays thumbnails and author info for each image in the `fish` category. The authors' names are hyperlinked to `example.com/author/image/User+Name`.

Other tags used: [images](/tags/images), [thumbnail](/tags/thumbnail).

## Genealogy

### Version 4.7.0

`id` and `name` attributes added.

### Version 4.3.0

Tag support added.
