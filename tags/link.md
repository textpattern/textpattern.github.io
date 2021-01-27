---
layout: document
category: Tags
published: true
title: Link
description: The link tag is a single tag which is used to return an HTML hyperlink defined in the Links panel.
tags:
  - Link tags
---

# Link

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link />
~~~

The **link** tag is a *single* tag which is used to return an HTML hyperlink defined in the Links panel. It uses the 'Title' field as the link's text.

This tag is used in 'links' type forms or inside the [linklist](/tags/linklist) container tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`id="integer"` <span class="footnote warning">v4.6.0+</span>
: Specifies the `id`, assigned at creation of the link, to display. Can be found on the Links panel. If both `name` and `id` are specified, `name` is used while `id` is ignored.

`name="link name"` <span class="footnote warning">v4.6.0+</span>
: Specifies which link to display by its link `name` as shown on the Links panel.

`rel="relation"`
: [HTML rel attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Link_types) to be applied to link.
: **Default:** unset.

## Examples

### Example 1: Display a link and its description

~~~ html
<p>
    <txp:link />:
    <txp:link_description />
</p>
~~~

Other tags used: [link_description](/tags/link_description).

## Genealogy

### Version 4.6.0

`id` and `name` attributes added.
