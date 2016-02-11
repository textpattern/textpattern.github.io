---
layout: document
category: tags
published: true
title: "Search result count"
tags:
  - Search tags
---

# Search result count

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:search_result_count />
```

The *search_result_count* tag is a __single__ tag that returns the number of articles returned by an article tag. Use "if_search":http://docs.textpattern.io/tags/if-search to count search results or use in regular page after the "article":http://docs.textpattern.io/tags/article tag. If you need the results' count _before_ the list of results, use the article tag in conjunction with @pgonly="1"@ (see example 3).

p(alert-block information). Note: The "if_search":http://docs.textpattern.io/tags/if-search conditional tag is required to recognize actual search results, without them the number of articles is returned by default.

## Attributes

Tag will accept the following attributes (*case-sensitive*):

* @text="text"@
Text to display with the number of matches.
Default: @articles found@.

## Examples

### Example 1: Display a number of matches

```html
<txp:if_search>
    <txp:article />
    <txp:search_result_count />
</txp:if_search>
```

If the visitor is searching for articles, it will show the number of articles that matched the search term (e.g. 5) as follows: @5 articles found@.

Other tags used: "article":http://docs.textpattern.io/tags/article, "if_search":http://docs.textpattern.io/tags/if-search.

### Example 2: Number of matches with custom text

```html
<txp:if_search>
    <txp:search_result_count text="hits" />
</txp:if_search />
```

Displays the number of articles returned (e.g. 5) as follows: @5 hits@.

Other tags used: "if_search":http://docs.textpattern.io/tags/if-search.

### Example 3: Search result count above results

```html
<txp:if_search>
    <txp:article pgonly="1" limit="20" />
    <txp:search_result_count text="hits" />
    <txp:article limit="20" />
</txp:if_search />
```

Displays the number of articles returned (e.g. 5) as follows: @5 hits@ - then displays results as an article listing.

p(alert-block information). Note: The @pgonly@ attribute sets the article tag to return pagination statistics without rendering the article list. Care must be taken to remain consistent with article tag attributes to keep statistics accurate.

Other tags used: "article":http://docs.textpattern.io/tags/article, "if_search":http://docs.textpattern.io/tags/if-search.
