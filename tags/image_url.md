---
layout: document
category: Tags
published: true
title: Image url
description: Tag that Textpattern will replace with the URL of the current image in an images list, or a specific image.
tags:
  - Image tags
---

# Image url

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:image_url />
~~~

The **image_url** tag is a *single* or a *container* tag that Textpattern will replace with the URL of the current image in an [images](/tags/images) list, or the specific image if given an `id` or `name`.

If used as a container, it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:image_url>
    …link contents…
</txp:image_url>
~~~

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`id="integer"`
: An `id` assigned at upload of an image to display. The IDs can be found on the [Images panel](/administration/images-panel).
: **Default:** unset.

`link="link type"`
: Whether to hyperlink the URL or not.
: **Values:** \\
`1`: hyperlink the URL (if used as a single tag) or the container content. \\
`0`: don't hyperlink the URL/container. \\
`auto`: only apply the hyperlink if the tag is used as a container.
: **Default:** `auto`.

`name="image name"`
: An image to display, given by its image name as shown on the [Images panel](/administration/images-panel). If both `name` and `id` are specified, the `id` takes precedence.
: **Default:** unset.

`thumbnail="boolean"`
: Display the link to the image's thumbnail instead of the full size image.
: **Values:** `0` (display the full size image) or `1` (display the thumbnail).
: **Default:** `0`.

## Examples

### Example 1: Directly link gallery thumbs to main image

Used as a single tag:

~~~ html
<txp:images category="mammals">
    <a href="<txp:image_url />">
        <txp:thumbnail />
    </a>
</txp:images>
~~~

Used as a container:

~~~ html
<txp:images category="mammals">
    <txp:image_url>
        <txp:thumbnail />
    </txp:image_url>
</txp:images>
~~~

Other tags used: [images](/tags/images), [thumbnail](/tags/thumbnail).

### Example 2: Usage outside of image list context (directly via image ID)

~~~ html
<img alt="<txp:image_info id="21" type="alt" />"
    src="<txp:image_url id="21" link="0" />"
    srcset="<txp:image_url id="22" link="0" /> 2x,
            <txp:image_url id="21" link="0" /> 1x">
~~~

Other tags used: [image_info](/tags/image_info).

## Genealogy

### Version 4.3.0

Tag support added.
