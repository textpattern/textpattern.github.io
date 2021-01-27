---
layout: document
category: Tags
published: true
title: Link date
description: The link_date tag is a single tag which returns the date the link was created as text.
tags:
  - Link tags
---

# Link date

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:link_date />
~~~

The **link_date** tag is a *single* tag which returns the date the link was created as text. This tag is used in a 'links' type form or inside the [linklist](/tags/linklist) container tag to display information about the current link.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`format="format string"`
: Override the default date format set in the Preferences panel.
: **Values:** any valid [strftime](https://secure.php.net/strftime) string values, `since`, `iso8601` ([ISO 8601 reference](https://en.wikipedia.org/wiki/ISO_8601)), `w3cdtf` ([W3CDTF reference](https://www.w3.org/TR/NOTE-datetime)), or `rfc822` ([RFC 822 reference](https://www.w3.org/Protocols/rfc822/#z28)).
: **Default:** the 'Date format' set in preferences.

`gmt="boolean"`
: Return either local time (according to the set time zone preferences) or GMT.
: **Values:** `0` (local time) or `1` (GMT).
: **Default:** `0`.

`lang="ISO language code"`
: Format time string suitable for the specified language (locale).
: **Values:** locales adhere to [ISO-639](https://en.wikipedia.org/wiki/ISO_639-2).
: **Default:** unset (time format set in the Preferences panel.

## Examples

### Example 1: Display a link with date and a class attribute

~~~ html
<a class="awesome-links" href="<txp:link_url />">
    <txp:link_name escape="html" />:
</a>
(<txp:link_date />)
~~~

Other tags used: [link_name](/tags/link_name), [link_url](/tags/link_url).
