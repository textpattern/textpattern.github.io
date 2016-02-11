---
layout: document
category: tags
published: true
title: "If last category"
tags:
  - Conditional tags
  - Structural tags
---

# If last category

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:if_last_category>
```

The **if_last_category** tag is a __conditional__ tag and always used as an opening and closing pair, like this...

```html
<txp:if_last_category>
    ...conditional statements...
</txp:if_last_category>
```

The tag will execute the contained statements if the current category (usually one inside the container or form of a [category_list](category-list)) is the last in the currently displayed list.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Identify last category in a category list

```html
<txp:category_list parent="group-1" children="0">
    <txp:if_last_category>
        <h3>
            <txp:category />
        </h3>
    <txp:else />
        <txp:category link="1" />
    </txp:if_last_category>
</txp:category_list>
```

Prevents the last category in the list from being hyperlinked to a category page. Why you might do it? If you nest categories under a 'header' category you might want to show the header of the group but not allow people to link to its category page.

Other tags used: [category](category), [category_list](category-list), [else](else).

## Genealogy

### Version 4.0.7

Tag support added.
