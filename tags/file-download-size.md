---
layout: document
category: tags
published: true
title: "File download size"
Description: The file_download_size tag will replace with the formatted file size of the file to be downloaded.
tags:
  - File tags
---

# File download size

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:file_download_size />
~~~

The **file_download_size** tag is a *single* tag which Textpattern will replace with the formatted file size of the file to be downloaded. Should be used in a Textpattern 'file' type @@Form template@@.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`decimals="places"`
: Number of decimal places to format the value to.
: Default: `2`.

`format="numbering style"`
: The way to represent the number, based on the file's expected size.
: Values: \\
`b` (bytes). \\
`k` (kilobytes). \\
`m` (megabytes). \\
`g` (gigabytes). \\
`t` (terabytes). \\
`p` (petabytes). \\
`e` (exabytes). \\
`z` (zettabytes). \\
`y` (yottabytes).
: Default: unset (i.e.,the most appropriate units based on the file size).

## Examples

### Example 1: Display formatted file size in kilobytes

~~~ html
<txp:file_download_size format="k" />
