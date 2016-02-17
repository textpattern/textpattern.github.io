---
layout: document
category: tags
published: true
title: "Search result excerpt"
tags:
  - Search tags
---

# Search result excerpt

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

~~~ html
<txp:search_result_excerpt />
~~~

The **search_result_excerpt** tag is a *single* tag. The tag will show the occurrence of the search term with some surrounding context.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `break="tag"`
Trailing string.
Default: `…` (ellipsis).
* `hilight="tag"`
HTML tag to be used for search term matches in excerpt text, without brackets.
Default: `strong`.
* `limit="integer"`
Maximum number of search match excerpts per search result.
Default: `5`.

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

### Version 4.0.6

`break` attribute added.
