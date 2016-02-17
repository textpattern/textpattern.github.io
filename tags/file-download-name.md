---
layout: document
category: tags
published: true
title: "File download name"
tags:
  - File tags
---

# File download name

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

~~~ html
<txp:file_download_name />
~~~

The **file_download_name** tag is a *single* tag that Textpattern will replace with the name of the file to download. Should be used in a Textpattern 'file' type @@Form template@@. or within a [file_download_link](file-download-link) tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `title="boolean"`
Whether to display the file download name or its title.
Values: `0` (name), or `1` (title).
Default: `0`.

## Examples

### Example 1: Display the name of a file, linked to download

~~~ html
<txp:file_download_link filename="my-presentation.pdf">
    <txp:file_download_name />
    [<txp:file_download_size format="mb" decimals="2" />]
</txp:file_download_link>
~~~

Other tags used: [file_download_link](file-download-link), [file_download_size](file-download-size).

## Genealogy

### Version 4.3.0

`title` attribute added.
