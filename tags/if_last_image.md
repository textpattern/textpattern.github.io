---
layout: document
category: Tags
published: true
title: "If last image"
description: The if_last_image tag will execute the contained statements if the displayed image is the last in the currently displayed images list.
tags:
  - Conditional tags
  - Image tags
  - Structural tags
---

# If last image

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:if_last_image>
~~~

The **if_last_image** tag is a *conditional* tag and always used as an opening and closing pair, like this...

~~~ html
<txp:if_last_image>
    ...conditional statement...
</txp:if_last_image>
~~~

The tag will execute the contained statements if the displayed image is the last in the currently displayed [images](images) list. The tag supports [else](else).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Identify last image in an image list

~~~ html
<txp:images break="" wraptag="ul" sort="date desc">
    <txp:if_last_image>
        <li class="earliest">
            <txp:image /> (Earliest photo)
        </li>
    <txp:else />
        <li>
            <txp:image />
        </li>
    </txp:if_last_image>
</txp:images>
~~~

Other tags used: [else](else), [image](image), [images](images).

Other tags used:

## Genealogy

### Version 4.6.0

Tag support added.
