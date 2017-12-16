---
layout: document
category: Tags
published: true
title: Page url
description: The page_url tag is a single tag that is used to return a particular component of the URL from the current page being displayed.
tags:
  - Markup tags
---

# Page url

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:page_url />
~~~

The **page_url** tag is a *single* tag that is used to return a particular component of the URL from the current page being displayed.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`default="value"` <span class="footnote warning">v4.7.0+</span>
: The default value if no component of the current page's URL matches the `type` attribute.
: **Default:** unset.

`type="type"`
: Specifies which component of the current page's URL will be returned.
: **Values:** \\
`request_uri`: current article's URL-title including any query string. \\
`id`: current article's id on a single article page. \\
`s`: current page's section. \\
`c`: current page's category. \\
`q`: search query string. \\
`pg`: current page number in article list mode. \\
`month`: current page's month on time based article lists. \\
`author`: current page's author on article lists filtered by author. \\
`status`: HTTP error response (200, 404). \\
`css`: current style sheet name. \\
`page`: current page template name.
: **Default:** `request_uri`.

Any other `type` value will return the matching URL component or the `default` value that will always be **sanitized**. <span class="footnote warning">v4.7.0+</span>

## Examples

### Example 1: Show the current article's ID, HTTP status and section

~~~ html
<p>
    Article ID:
    <txp:page_url type="id" />,
    From section:
    <txp:page_url type="s" />
    (Result: <txp:page_url type="status" />)
</p>
~~~

This would result in the following, for example:

~~~ html
<p>
    Article ID:
    88,
    From section:
    Tasty pea recipes
    (Result: 200)
</p>
~~~

### Example 2: Return the sanitized value of some URL component

~~~ html
<txp:page_url type="lang" default="en" />
~~~

## Genealogy

### Version 4.7.0

`type` attribute behaviour changes (value will always be sanitized). \\
`default` attribute added.
