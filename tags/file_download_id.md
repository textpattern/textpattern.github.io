---
layout: document
category: Tags
published: true
title: "File download id"
description: The file_download_id tag will replace with the internal ID number of the file to be downloaded.
tags:
  - File tags
---

# File download id

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:file_download_id />
~~~

The **file_download_id** tag is a *single* tag that Textpattern will replace with the internal ID number of the file to be downloaded. Should be used in Textpattern 'file' type [Form templates](http://docs.textpattern.io/themes/form-templates-explained).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display a file id

~~~ html
<p>
    File ID number:
    <txp:file_download_id />
</p>
~~~
