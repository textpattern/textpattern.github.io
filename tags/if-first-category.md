---
layout: document
category: tags
published: true
title: "If first category"
tags:
  - Conditional tags
  - Structural tags
---

# If first category

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

~~~ html
<txp:if_first_category>
~~~

The **if_first_category** tag is a __conditional__ tag and always used as an opening and closing pair, like this...

~~~ html
<txp:if_first_category>
    ...conditional statement...
</txp:if_first_category>
~~~

The tag will execute the contained statements if the current category (usually one inside the container or form of a [category_list](category-list)) is the first in the currently displayed list.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Identify first category in a category list

~~~ html
<txp:category_list parent="group-1" children="0">
    <txp:if_first_category>
        <h3>
            <txp:category />
        </h3>
    <txp:else />
        <txp:category link="1" />
    </txp:if_first_category>
</txp:category_list>
~~~

Prevents the first category in the list from being hyperlinked to a category page. Why you might do it? If you nest categories under a 'header' category you might want to show the header of the group but not allow people to link to its category page.

Other tags used: [category](category), [category_list](category-list), [else](else).

## Genealogy

### Version 4.0.7

Tag support added.
