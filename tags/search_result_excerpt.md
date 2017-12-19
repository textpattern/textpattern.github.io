---
layout: document
category: Tags
published: true
title: Search result excerpt
description: The search_result_excerpt tag will show the occurrence of the search term with some surrounding context.
tags:
  - Search tags
---

# Search result excerpt

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:search_result_excerpt />
~~~

The **search_result_excerpt** tag is a *single* tag that will show the occurrence of the search term with some surrounding context.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`break="tag"` <span class="footnote warning">v4.0.6+</span>
: Trailing string.
: **Default:** `...` (ellipsis).

`breakby="integer"` <span class="footnote warning">v4.7.0+</span>
: Used to group list items when separating by `break`. Possible values are lists of integers, like `2` (groups of 2 items) or `1,2` (alternate groups of 1 and 2 items).
: **Default:** `1` (actually unset).

`hilight="tag"`
: HTML tag to be used for search term matches in excerpt text, without brackets.
: **Default:** `strong`.

`limit="integer"`
: Maximum number of search match excerpts per search result.
: **Default:** `5`.

## Examples

### Example 1: Display up to 15 search excerpts with a search results form

~~~ html
<h3>
    <txp:permlink>
        <txp:title />
    </txp:permlink>
</h3>
<p>
    <txp:search_result_excerpt hilight="p" limit="15" /> |
    <txp:permlink>
        <txp:permlink />
    </txp:permlink>
    | <txp:posted />
</p>
~~~

Other tags used: [permlink](permlink), [posted](posted), [title](title).

## Genealogy

### Version 4.7.0

`breakby` attribute added.

### Version 4.0.6

`break` attribute added.
