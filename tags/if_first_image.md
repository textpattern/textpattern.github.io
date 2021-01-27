---
layout: document
category: Tags
published: true
title: If first image
description: The if_first_image tag will execute the contained statements if the displayed image is the first in the currently displayed images list.
tags:
  - Conditional tags
  - Image tags
  - Structural tags
---

# If first image

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_first_image>
~~~

The **if_first_image** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_first_image>
    …conditional statement…
</txp:if_first_image>
~~~

The tag will execute the contained statements if the displayed image is the first in the currently displayed [images](/tags/images) list. The tag supports [else](/tags/else).

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Identify first image in an image list

~~~ html
<txp:images break="" wraptag="ul" sort="date desc">
    <txp:if_first_image>
        <li class="latest">
            <txp:image /> (Latest photo)
        </li>
    <txp:else />
        <li>
            <txp:image />
        </li>
    </txp:if_first_image>
</txp:images>
~~~

Other tags used: [else](/tags/else), [image](/tags/image), [images](/tags/images).

## Genealogy

### Version 4.6.0

Tag support added.
