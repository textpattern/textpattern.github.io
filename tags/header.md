---
layout: document
category: Tags
published: true
title: Header
description: TODO.
tags:
  - Future tags
---

# Header

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:header />
~~~

The **header** tag is a *single* tag that is used to set [HTTP headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`name="string"`
: Headers name.
: **Default:** `Content-Type`.

`replace="boolean"`
: Whether an existing header must be replaced with this one.
: **Default:** `true`.

`value="string"`
: Headers value.
: **Default:** `text/html; charset=utf-8`.

## Examples

### Example 1: Do not cache dynamic articles

Suppose that you don't want some article to be cached by the browser. Then the corresponding article form could contain
```
<txp:header name="Cache-Control" value="no-cache, no-store, must-revalidate" />
```

### Example 2: Output articles in JSON format

 Suppose that you need to output the articles from some section as JSON document. The corresponding page form could be:
```
<txp:header value="application/json; charset=utf-8" />
[<txp:article break=",">
{
    "title" : "<txp:title escape="json" />",
    "body" : "<txp:body escape="json" />"
}
</txp:article>]
```
The served page will then be interpreted by browsers as JSON application.

## Genealogy

### Version 4.7.0

Tag support added.
