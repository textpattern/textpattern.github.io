---
layout: document
category: tags
published: true
title: "Body"
description: The body tag is used to return the text, or content, of the article being displayed (the article itself).
tags:
  - Article tags
---

# Body

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

~~~ html
<txp:body />
~~~

The **body** tag is a __single__ tag which is used to return the text, or content, of the article being displayed (the article itself). The tag can be used in a Textpattern 'article' type @@Form template@@, or within a @@Page template@@, either wrapped within a given article tag, or directly in the template itself so long as the context is with a single article (as opposed to an article list).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display the article text

~~~ html
<h1>
    <txp:title />
</h1>
<p>
    <txp:author /> at <txp:posted />
</p>
<txp:body />
~~~

When used as part of your article form, this displays the article title, author and posted date, then the body text beneath that.

Other tags used: [author](author), [posted](posted), [title](title).
