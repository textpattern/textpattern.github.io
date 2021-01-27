---
layout: document
category: Tags
published: true
title: File download created
description: The file_download_created tag will replace with the upload date of the file to download.
tags:
  - File tags
---

# File download created

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:file_download_created />
~~~

The **file_download_created** tag is a *single* tag that Textpattern will replace with the upload date of the file to download. Should be used in Textpattern 'file' type [Form templates](/themes/form-templates-explained).

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`format="format string"`
: Override the default date format set in the Preferences panel.
: **Values:** any valid [strftime](https://secure.php.net/strftime) string values, `since`, `iso8601` ([ISO 8601 reference](https://en.wikipedia.org/wiki/ISO_8601)), `w3cdtf` ([W3CDTF reference](https://www.w3.org/TR/NOTE-datetime)), or `rfc822` ([RFC 822 reference](https://www.w3.org/Protocols/rfc822/#z28)).
: **Default:** the 'Archive date format' set in preferences.

## Examples

### Example 1: Display formated file upload date

~~~ html
<p>
    File created:
    <txp:file_download_created format="%D" />
</p>
~~~

Returns the file creation date in the format `mm/dd/yy`.
