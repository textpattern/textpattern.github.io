---
layout: document
category: Tags
published: true
title: File download name
description: The file_download_name tag will replace with the name of the file to download.
tags:
  - File tags
---

# File download name

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:file_download_name />
~~~

The **file_download_name** tag is a *single* tag that Textpattern will replace with the name of the file to download. Should be used in Textpattern 'file' type [Form templates](/themes/form-templates-explained) or within a [file_download_link](/tags/file_download_link) tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`title="boolean"` <span class="footnote warning">v4.3.0+</span>
: Whether to display the file download name or its title.
: **Values:** `0` (name), or `1` (title).
: **Default:** `0`.

## Examples

### Example 1: Display the name of a file, linked to download

~~~ html
<txp:file_download_link filename="my-presentation.pdf">
    <txp:file_download_name />
    [<txp:file_download_size format="mb" decimals="2" />]
</txp:file_download_link>
~~~

Other tags used: [file_download_link](/tags/file_download_link), [file_download_size](/tags/file_download_size).

## Genealogy

### Version 4.3.0

`title` attribute added.
