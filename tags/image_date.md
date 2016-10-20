---
layout: document
category: tags
published: true
title: "Image date"
tags:
  - Image tags
---

# Image date

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:image_date />
~~~

The **image_date** tag is a *single* tag that Textpattern will replace with the uploaded date of the current (or given) image. Should usually be used in an @@image form@@, although it may be used on its own providing you specify an `id` or `name`.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`id="integer"`
: An `id` assigned at upload of an image to display. The IDs can be found on the [Images administration panel](../administration/images-panel).
: **Default:** unset.

`format="format string"`
: Override the default date format set in the [Preferences administration panel](../administration/preferences-panel).
: **Values:** any valid [strftime](http://php.net/strftime) string values, `since`, `iso8601` ([ISO 8601 reference](http://en.wikipedia.org/wiki/ISO_8601)), `w3cdtf` ([W3CDTF reference](http://www.w3.org/TR/NOTE-datetime)), or `rfc822` ([RFC 822 reference](http://www.w3.org/Protocols/rfc822/#z28)).
: **Default:** the 'Archive date format' set in preferences.

`name="image name"`
: An image to display, given by its image name as shown on the [Images administration panel](../administration/images-panel). If both `name` and `id` are specified, the `id` takes precedence.
: **Default:** unset.

## Examples

### Example 1: Display additional image information

~~~ html
<txp:images category="mammals">
    <a href="<txp:image_url />">
        <txp:thumbnail />
    </a>
    <div class="img-info">
        <txp:image_info type="caption, author" break=" by " />
        <txp:image_date format="%e %b %Y" />
    </div>
</txp:images>
~~~

Other tags used: [images](images), [image_url](image-url), [image_info](image-info), [thumbnail](thumbnail).

## Genealogy

### Version 4.3.0

Tag support added.
