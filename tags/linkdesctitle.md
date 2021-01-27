---
layout: document
category: Tags
published: true
title: Linkdesctitle
description: The linkdesctitle tag is a single tag which is used to return an HTML hyperlink, defined within the Links panel.
tags:
  - Link tags
---

# Linkdesctitle

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:linkdesctitle />
~~~

The **linkdesctitle** tag is a *single* tag which is used to return an HTML hyperlink, defined within the Links panel.

It uses the 'Title' field as the link's text; the 'Description' field contents will be displayed as an anchor `title` attribute. This tag is used in a link form or inside the [linklist](/tags/linklist) container tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`rel="relation"`
: [HTML rel attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Link_types) to be applied to link.
: **Default:** unset.

## Examples

### Example 1: Display a link and its 'Title' field contents

~~~ html
<p>
    <txp:linkdesctitle />
</p>
~~~
