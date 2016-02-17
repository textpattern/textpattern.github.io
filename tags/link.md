---
layout: document
category: tags
published: true
title: "Link"
tags:
  - Link tags
---

# Link

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

~~~ html
<txp:link />
~~~

The **link** tag is a *single* tag which is used to return an HTML hyperlink defined in the [Links administration panel](../administration/links-panel). It uses the 'Title' field as the link's text.

This tag is used in 'links' type forms or inside the [linklist](linklist) container tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `id="integer"`
Specifies the `id`, assigned at creation of the link, to display. Can be found on the [Links administration panel](../administration/links-panel). If both `name` and `id` are specified, `name` is used while `id` is ignored.
* `name="link name"`
Specifies which link to display by its link `name` as shown on the [Links administration panel](../administration/links-panel).
* `rel="relation"`
[HTML rel attribute](https://developer.mozilla.org/en-US/docs/Web/HTML/Link_types) to be applied to link.
Default: unset.

## Examples

### Example 1: Display a link and its description

~~~ html
<p>
    <txp:link />:
    <txp:link_description />
</p>
~~~

Other tags used: [link_description](link-description).

## Genealogy

### Version 4.6.0

`id` and `name` attributes added.
