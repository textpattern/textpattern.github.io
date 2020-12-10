---
layout: document
category: Tags
published: true
title: Link id
description: The link_id tag is a single tag which returns the numerical ID of the link.
tags:
  - Link tags
---

# Link id

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_id />
~~~

The **link_id** tag is a *single* tag which returns the numerical ID of the link. This tag is used in a 'links' type form or inside the [linklist](/tags/linklist) container tag to show information about the current link in the list.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display link information

~~~ html
<txp:linklist category="dogs">
    Link:
    <a href="<txp:link_url />">
        <txp:link_name />
    </a>
    (id: <txp:link_id /> | category: <txp:link_category />)
</txp:linklist>
~~~

Other tags used: [linklist](/tags/linklist), [link_name](/tags/link_name), [link_category](/tags/link_category).

## Genealogy

### Version 4.2.0

Tag support added.
