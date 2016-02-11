---
layout: document
category: tags
published: true
title: "File download category"
tags:
  - File tags
---

# File download category

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:file_download_category />
```

The *file_download_category* tag is a __single__ tag that Textpattern will replace with the category of the file to download. Should be used in a Textpattern 'file' type @@Form template@@.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* @title="boolean"@
Whether to display the category name or its title.
Values: `0` (name), or `1` (title).
Default: `0`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

* @class="class name"@
HTML @class@ to apply to the @wraptag@ attribute value.
Default: unset (see @@class cross-reference@@).
* @wraptag="element"@
HTML tag to wrap around category text, specified without brackets (e.g. @wraptag="p"@).
Default: unset.

## Examples

### Example 1: Display a file category name

```html
<p>
    File category:
    <txp:file_download_category />
</p>
