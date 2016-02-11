---
layout: document
category: tags
published: true
title: "Linkdesctitle"
tags:
  - Link tags
---

# Linkdesctitle

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:linkdesctitle />
```

The *linkdesctitle* tag is a __single__ tag which is used to return an HTML hyperlink, defined within the "Links administration panel":../administration/links-panel.

It uses the 'Title' field as the link's text; the 'Description' field contents will be displayed as an anchor @title@ attribute. This tag is used in a link form or inside the "linklist":linklist container tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* @rel="relation"@
"HTML rel attribute":https://developer.mozilla.org/en-US/docs/Web/HTML/Link_types to be applied to link.
Default: unset.

## Examples

### Example 1: Display a link and its 'Title' field contents

```html
<p>
    <txp:linkdesctitle />
</p>
