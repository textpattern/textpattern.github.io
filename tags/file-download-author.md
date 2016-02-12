---
layout: document
category: tags
published: true
title: "File download author"
tags:
  - File tags
---

# File download author

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

~~~ html
<txp:file_download_author />
~~~

The **file_download_author** tag is a __single__ tag that Textpattern will replace with the author's name associated with the current download in a [file_download](file-download). Can **only** be used inside `<txp:file_download />`.

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
If set to `1`, the linked author name will direct users to an author list in the current section, otherwise author list from all sections is displayed.
Values: `0` (no, all sections) or `1` (yes, this section only).
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
* `wraptag="tag"`
HTML tag (specified without brackets) to wrap around the author name (e.g. `wraptag="p"`).
Default: unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Display and link the file author

~~~ html
<p>
    File author:
    <txp:file_download_author link="1" />
</p>
~~~

## Genealogy

### Version 4.3.0

Tag support added.
