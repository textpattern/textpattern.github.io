---
layout: document
category: Tags
published: true
title: If thumbnail
description: The if_thumbnail tag will execute the contained statements if the current image has a thumbnail assigned to it.
tags:
  - Conditional tags
  - Image tags
---

# If thumbnail

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_thumbnail>
~~~

The **if_thumbnail** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_thumbnail>
    …conditional statement…
</txp:if_thumbnail>
~~~

The tag will execute the contained statements **if** the current image (from an [images](/tags/images) tag) has a thumbnail assigned to it. Must always be used in an image context.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Only show a thumbnail if one exists

~~~ html
<txp:images author="donald" wraptag="figure" class="author-gallery">
    <txp:if_thumbnail>
        <txp:thumbnail />
        <txp:image_info wraptag="figcaption" />
    <txp:else />
        <p>No thumbnail</p>
    </txp:if_thumbnail>
</txp:images>
~~~

For each image uploaded by author 'donald', display its thumbnail if it has one, or the text 'No thumbnail' if it doesn't. Add a caption beneath the thumbnail using [image_info](/tags/image_info).

Other tags used: [images](/tags/images), [else](/tags/else), [image_info](/tags/image_info), [thumbnail](/tags/thumbnail).

## Genealogy

### Version 4.3.0

Tag support added.
