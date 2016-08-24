---
layout: document
category: tags
published: true
title: "File download modified"
Description: The file_download_modified tag will replace with the last modified date of the file to download.
tags:
  - File tags
---

# File download modified

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:file_download_modified />
~~~

The **file_download_modified** tag is a *single* tag that Textpattern will replace with the last modified date of the file to download. Should be used in a Textpattern 'file' type @@Form template@@.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`format="format string"`
: Override the default date format set in the [Preferences administration panel](../administration/preferences-panel).
: Values: any valid [strftime](http://php.net/strftime) string values, `since`, `iso8601` ([ISO 8601 reference](http://en.wikipedia.org/wiki/ISO_8601)), `w3cdtf` ([W3CDTF reference](http://www.w3.org/TR/NOTE-datetime)), or `rfc822` ([RFC 822 reference](http://www.w3.org/Protocols/rfc822/#z28)).
: Default: the 'Archive date format' set in preferences.

## Examples

### Example 1: Display formated file modified date

~~~ html
<p>
    File last modified:
    <txp:file_download_modified format="%D" />
</p>
~~~

Returns the file creation date in the format `mm/dd/yy`.
