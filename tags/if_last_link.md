---
layout: document
category: Tags
published: true
title: "If last link"
description: The if_last_link tag will execute the contained statements if the displayed link is the last in the currently displayed link list.
tags:
  - Conditional tags
  - Link tags
  - Structural tags
---

# If last link

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:if_last_link>
~~~

The **if_last_link** tag is a *conditional* tag and always used as an opening and closing pair, like this...

~~~ html
<txp:if_last_link>
    ...conditional statement...
</txp:if_last_link>
~~~

The tag will execute the contained statements if the displayed link is the last in the currently displayed [linklist](linklist). The tag supports [else](else).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Identify last link in an link list

~~~ html
<txp:linklist break="" wraptag="ul" sort="date desc">
    <txp:if_last_link>
        <li class="earliest">
            <txp:link /> (My first link)
        </li>
    <txp:else />
        <li>
            <txp:link />
        </li>
    </txp:if_last_link>
</txp:linklist>
~~~

Other tags used: [else](else), [link](link), [linklist](linklist).

## Genealogy

### Version 4.6.0

Tag support added.
