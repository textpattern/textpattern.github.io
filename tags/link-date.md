---
layout: document
category: tags
published: true
title: "Link date"
tags:
  - Link tags
---

# Link date

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:link_date />
```

The **link_date** tag is a __single__ tag which returns the date the link was created as text. This tag is used in a 'links' type form or inside the [linklist](linklist) container tag to display information about the current link.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `format="format string"`
Override the default date format set in the [Preferences administration panel](../administration/preferences-panel).
Values: any valid [strftime](http://php.net/strftime) string values, `since`, `iso8601` ("ISO 8601 reference":http://en.wikipedia.org/wiki/ISO_8601), `w3cdtf` ("W3CDTF reference":http://www.w3.org/TR/NOTE-datetime), or `rfc822` ("RFC 822 reference":http://www.w3.org/Protocols/rfc822/#z28).
Default: the 'Date format' set in preferences.
* `gmt="boolean"`
Return either local time (according to the set time zone preferences) or GMT.
Values: `0` (local time) or `1` (GMT).
Default: `0`.
* `lang="ISO language code"`
Format time string suitable for the specified language (locale).
Values: locales adhere to [ISO-639](http://en.wikipedia.org/wiki/ISO_639-2).
Default: unset (time format set in the [Preferences administration panel](../administration/preferences-panel).

## Examples

### Example 1: Display a link with date and a class attribute

```html
<a class="awesome-links" href="<txp:link_url />">
    <txp:link_name escape="html" />:
</a>
(<txp:link_date />)

Other tags used: "link_name":link-name, "link_url":link-url.
