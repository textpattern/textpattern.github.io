---
layout: document
category: tags
published: true
title: "File download id"
tags:
  - File tags
---

# File download id

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:file_download_id />
```

The *file_download_id* tag is a __single__ tag that Textpattern will replace with the internal ID number of the file to be downloaded. Should be used in a Textpattern 'file' type @@Form template@@.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display a file id

```html
<p>
    File ID number:
    <txp:file_download_id />
</p>
