---
layout: document
category: tags
published: true
title: "Link name"
tags:
  - Link tags
---

# Link name

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:link_name />
```

The **link_name** tag is a __single__ tag which returns the name of the link as assigned on the links pane as text. This tag is used in a 'links' type form or inside the [linklist](linklist) container tag to display information about the current link.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `escape="html"`
Escape HTML entities such as `<`, `>` and `&`.
Values: `html` or unset.
Default: `html`;

## Examples

### Example 1: Display a link with class attribute

```html
<a class="awesome-links" href="<txp:link_url />">
    <txp:link_name />
</a>
```

Other tags used: [link_url](link-url).

## Genealogy

### Version 4.0.7

Default value for `escape` attribute changed from unset to `html`.
