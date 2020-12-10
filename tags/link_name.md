---
layout: document
category: Tags
published: true
title: Link name
description: The link_name tag is a single tag which returns the name of the link as assigned on the links pane as text.
tags:
  - Link tags
---

# Link name

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_name />
~~~

The **link_name** tag is a *single* tag which returns the name of the link as assigned on the links pane as text. This tag is used in a 'links' type form or inside the [linklist](/tags/linklist) container tag to display information about the current link.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

## Examples

### Example 1: Display a link with class attribute

~~~ html
<a class="awesome-links" href="<txp:link_url />">
    <txp:link_name />
</a>
~~~

Other tags used: [link_url](/tags/link_url).

## Genealogy

### Version 4.0.7

Default value for `escape` attribute changed from 'unset' to `html`.
