---
layout: document
category: tags
published: true
title: "Author email"
description: The author_email tag is used to return the email address of the author of the currently displayed article.
tags:
  - Article tags
---

# Author email

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:author_email />
```

The **author_email** tag is a __single__ tag that is used to return the email address of the author of the currently displayed article.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `escape="html"`
Escape HTML entities such as `<`, `>` and `&`.
Values: `html` or unset.
Default: `html`.
* `link="boolean"`
Make text a `mailto:` link.
Values: `0` (no) or `1` (yes).
Default: `0`.

## Examples

### Example 1: Display email address (but don't link)

```html
<p>
    <txp:author_email />
</p>
```

### Example 2: Create a mailto: link

```html
<txp:author_email link="1" />
```

## Genealogy

### Version 4.5.0

Tag support added.
