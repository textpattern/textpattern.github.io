---
layout: document
category: tags
published: true
title: "If expires"
tags:
  - Article tags
  - Conditional tags
---

# If expires

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:if_expires>
```

The *if_expires* tag is a _conditional_ tag and always used as an opening and closing pair, like this...

```html
<txp:if_expires>
    ...conditional statement...
</txp:if_expires>
```

The tag will execute the contained statements, if a particular article has an expiry date set. Should be used in an 'article' type form.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Show when an article is to expire

```html
<txp:if_expires>
    This article expires on <txp:expires />.
</txp:if_expires>
```

Other tags used: "expires":expires.

## Genealogy

### Version 4.0.7

Tag support added.
