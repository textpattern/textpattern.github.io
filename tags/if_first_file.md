---
layout: document
category: Tags
published: true
title: "If first file"
description: The if_first_file tag will execute the contained statements if the displayed file is the first in the currently displayed file download list.
tags:
  - Conditional tags
  - File tags
  - Structural tags
---

# If first file

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:if_first_file>
~~~

The **if_first_file** tag is a *conditional* tag and always used as an opening and closing pair, like this...

~~~ html
<txp:if_first_file>
    ...conditional statement...
</txp:if_first_file>
~~~

The tag will execute the contained statements if the displayed file is the first in the currently displayed [file_download_list](file_download-list). The tag supports [else](else).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Identify first file in a file list

[todo:pw]

Other tags used:

## Genealogy

### Version 4.6.0

Tag support added.
