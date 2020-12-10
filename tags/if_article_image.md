---
layout: document
category: Tags
published: true
title: If article image
description: The if_article_image tag will execute the contained statements if an image is associated with the article being displayed.
tags:
  - Article tags
  - Conditional tags
  - Image tags
---

# If article image

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_article_image>
~~~

The **if_article_image** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_article_image>
    …conditional statement…
</txp:if_article_image>
~~~

The tag will execute the contained statements if an image is associated (through the [Write panel](/administration/write-panel) 'Article image' field) with the article being displayed.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display default image if no article image exists

~~~ html
<txp:if_article_image>
    <p>
        <txp:article_image />
    </p>
<txp:else />
    <p>
        <txp:image id="5" />
    </p>
</txp:if_article_image>
~~~

Other tags used: [article_image](/tags/article_image), [else](/tags/else), [image](/tags/image).

### Example 2: Integration with third-party PHP resizing script (TimThumb)

[TimThumb](https://www.binarymoon.co.uk/projects/timthumb/) is a simple, flexible, PHP script that resizes images directly on your web server. [Read the TimThumb documentation](https://www.binarymoon.co.uk/2010/08/timthumb/) for basic installation instructions (also requires the GD image library). Then, for example, you can use the following:

~~~ html
<txp:if_article_image>
    <p>
        <txp:images limit="1">
            <img src="<txp:site_url />timthumb.php?src=<txp:image_url />&amp;w=640" alt="<txp:image_info type='alt' />">
        </txp:images>
    </p>
</txp:if_article_image>
~~~

Checks an article image exists, then uses `<txp:images>` with `limit="1"` to display that image (because the `<txp:images>` tag takes the article image as a first priority). Uses the TimThumb script to proportionately resize a 640px wide version of the image automatically, and keep a cached version of the resized image for future visitors.

Other tags used: [images](/tags/images), [image_info](/tags/image_info), [image_url](/tags/image_url), [site_url](/tags/site_url).

## Genealogy

## Version 4.2.0

Tag support added.
