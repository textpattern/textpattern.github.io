---
layout: document
category: tags
published: true
title: "File download downloads"
description: The file_download_downloads tag will replace with the number of times the current file has been downloaded.
tags:
  - File tags
---

# File download downloads

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:file_download_downloads />
~~~

The **file_download_downloads** tag is a *single* tag that Textpattern will replace with the number of times the current file has been downloaded. Should be used in a Textpattern 'file' type @@Form template@@.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display the number of downloads

~~~ html
<p>
    Downloads:
    <txp:file_download_downloads />
</p>
