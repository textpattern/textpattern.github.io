---
layout: document
category: Tags
published: true
title: Page title
description: The page_title tag is a single tag that displays title text depending on the context it is used.
tags:
  - Markup tags
---

# Page title

**Contents**

* Table of contents
{:toc}


## Syntax

~~~ html
<txp:page_title />
~~~

The **page_title** tag is a *single* tag that displays title text depending on the context it is used. Its primary purpose is for outputting information suitable for the HTML `<title>` tag.

Results appear as follows:

* Article list: `Your site name`.
* Articles by category: `Category title | Your site name`.
* Search results page: `Search results: Search term | Your site name`.
* Single article page: `Article name | Your site name`.
* Comments display: `Comments on: Article name`.

Page numbers are included in paginated pages (e.g. search results extending to >1 page).

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`separator="character(s)"`
: The character sequence you want between each piece of information.
: **Default:** `|` (a pipe).

## Examples

### Example 1: Show page titles with custom separator

~~~ html
<title>
    <txp:page_title separator=" &raquo; " />
</title>
~~~

## Genealogy

### Version 4.7.0

`separator` attribute changed to a pipe (was colon).
