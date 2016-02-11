---
layout: document
category: tags
published: true
title: "Page title"
tags:
  - Markup tags
---

# Page title

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:page_title />
```

The **page_title** tag is a __single__ tag that displays text depending on the context it is used. Its primary purpose is for outputting information suitable for the HTML `<title>` tag.

Results appear as follows:

# Article list: `Your site name`.
# Articles by category: `Your site name : Category title`.
# Search results page: `Your site name : Search results: Search term`.
# Single article page: `Your site name : Article name`.
# Comments display: `Comments on: Article name`.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `separator="character(s)"`
The character sequence you want between each piece of information.
Default: `:` (a colon).

## Examples

### Example 1: Show page titles with custom separator

<title>
    <txp:page_title separator=" &raquo; " />
</title>
