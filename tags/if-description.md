---
layout: document
category: tags
published: true
title: "If description"
tags:
  - Article tags
  - Conditional tags
---

# If description

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:if_description>
```

The **if_description** tag is a __conditional__ tag and always used as an opening and closing pair, like this...

```html
<txp:if_description>
    ...conditional statement...
</txp:if_description>
```

The tag will execute the contained statement if the current article/section/cateogry's 'Description' field has an entry.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Supply meta tag if description exists

```html
<head>
    ....
    <txp:if_description>
        <txp:meta_description />
    <txp:else />
        <meta name="description" content="A generic description fallback, possibly about bacon." />
    </txp:if_description>
    ....
</head>
```

Other tags used: [meta_description](meta-description).

## Genealogy

### Version 4.6.0

Tag support added
