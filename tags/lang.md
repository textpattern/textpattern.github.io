---
layout: document
category: tags
published: true
title: "Lang"
tags:
  - Language tags
  - Markup tags
---

# Lang

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

~~~ html
<txp:lang />
~~~

The **lang** tag is a __single__ tag. Textpattern will replace this tag with the 2-letter code of the language which is set as the site's language preference in the [Languages administration panel](../administration/languages-panel), according to [RFC 1766](https://www.ietf.org/rfc/rfc1766.txt).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Define a document's language

~~~ html
<!DOCTYPE html>
<html lang="<txp:lang />" dir="<txp:text item="lang_dir" />">
<head>
    <meta charset="utf-8">
    <title>
        <txp:page_title />
    </title>
</head>
~~~

Why you might do this? When declaring a DTD, namespace and language that a site is served, the `lang` attribute is useful for ensuring translators, search engines and content parsers handle the document in the correct manner.

Other tags used: [page_title](page-title), [text](text).
