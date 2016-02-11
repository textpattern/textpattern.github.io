---
layout: document
category: tags
published: true
title: "If last file"
tags:
  - Conditional tags
  - File tags
  - Structural tags
---

# If last file

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:if_last_file>
```

The *if_last_file* tag is a _conditional_ tag and always used as an opening and closing pair, like this...

```html
<txp:if_last_file>
    ...conditional statement...
</txp:if_last_file>
```

The tag will execute the contained statements if the displayed file is the last in the currently displayed "file_download_list":file-download-list. The tag supports "else":else.

h3(#sec2). Attributes

This tag has no attributes.

## Examples

### Example 1: Identify last file in a file list

[todo:pw]

Other tags used:

## Genealogy

### Version 4.6.0

Tag support added.
