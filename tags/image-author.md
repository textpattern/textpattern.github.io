---
layout: document
category: tags
published: true
title: "Image author"
tags:
  - Image tags
---

# Image author

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

~~~ html
<txp:image_author />
~~~

The **image_author** tag is a __single__ tag that Textpattern will replace with the author's name associated with the current image in an [images](images) list. It can **only** be used inside `<txp:images />`.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `link="link type (boolean)"`
Whether to hyperlink the author or not.
Values: `0` (no) or `1` (yes).
Default: `0`.
* `section="section name"`
Direct any linked author name to the nominated section instead of to the default (front) page.
Default: unset.
* `this_section="boolean"`
If set to 1, the linked author name will direct users to an author list in the current section.
Values: `0` (all sections) or `1` (this section only).
Default: `0`.
* `title="boolean"`
Whether to display the author's real name or login name.
Values: `0` (login name) or `1` (real name).
Default: `1`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

* `class="class name"`
HTML `class` to apply to the `wraptag` attribute value.
Default: unset (see @@class cross-reference@@).
* `wraptag="element"`
HTML element to wrap around the author name, specified without brackets (e.g. `wraptag="p"`).
Default: unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Add image author to gallery

bc. txp:images category="mammals">
    <a href="<txp:image_url />">
        <txp:thumbnail />
    </a>
    <div class="img-info">
        by <txp:image_author />
    </div>
</txp:images>
~~~

Other tags used: [images](images), [thumbnail](thumbnail).

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

Other tags used: [images](images), [thumbnail](thumbnail).

## Genealogy

### Version 4.3.0

Tag support added.
