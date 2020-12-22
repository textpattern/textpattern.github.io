---
layout: document
category: Tags
published: true
title: Header
description: The header tag is a single tag that is used to set HTTP headers.
tags:
  - Structural tags
---

# Header

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:header />
~~~

The **header** tag is a *single* tag that is used to set [HTTP headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers).

Note: Usage of this tag assumes you have a good working knowledge of [HTTP headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers). Headers may break your site if incorrectly configured.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`name="string"`
: Header name/type.
: **Default:** `Content-Type`.

`replace="boolean"`
: Whether the existing HTTP header must be replaced entirely, or added to.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `1`.

`value="string"`
: Header value.
: **Default:** `text/html; charset=utf-8`.

## Examples

### Example 1: Do not cache dynamic articles

If you don't want an article to be cached by the browser, then the corresponding 'article' type form template could contain:

~~~ html
<txp:header name="Cache-Control" value="no-cache, no-store, must-revalidate" />
~~~

### Example 2: Output articles in JSON format

If you need to output the articles from a section as a JSON document, the corresponding page template could be:

~~~ html
<txp:header value="application/json; charset=utf-8" />
[<txp:article break=",">
{
  "title": "<txp:title escape="json" />",
  "body": "<txp:body escape="json" />"
}
</txp:article>]
~~~

The served page will be interpreted by browsers as a JSON application.

Other tags used: [article](/tags/article), [title](/tags/title).

## Genealogy

### Version 4.7.0

Tag support added.
