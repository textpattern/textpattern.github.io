---
layout: document
category: Tags
published: true
title: Search result title
description: The search_result_title tag will provide a hyperlinked title to an article as returned by the search function.
tags:
  - Search tags
---

# Search result title

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:search_result_title />
~~~

The **search_result_title** tag is a *single* tag that will provide a hyperlinked title to an article as returned by the search function.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display a hyperlinked title to an article

~~~ html
<h3>
    <txp:search_result_title />
    <txp:search_result_date />
</h3>
~~~

In a search results form, this shows the title of an article that matched the visitor's search results, and its posted date.

Other tags used: [search_result_date](/tags/search_result_date).
