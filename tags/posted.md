---
layout: document
category: Tags
published: true
title: Posted
description: The posted tag is a single tag which is used to return the publish date of the article being displayed.
tags:
  - Article tags
---

# Posted

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:posted />
~~~

The **posted** tag is a *single* tag which is used to return the publish date of the article being displayed. The format is determined by the settings specified in the 'Date format' or 'Archive date format' fields in the [Preferences panel](/administration/preferences-panel).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`format="format string"`
: Override the default date format set in the [Preferences panel](/administration/preferences-panel).
: **Values:** any valid [strftime](https://secure.php.net/strftime) string values, `since`, `iso8601` ([ISO 8601 reference](https://en.wikipedia.org/wiki/ISO_8601)), `w3cdtf` ([W3CDTF reference](https://www.w3.org/TR/NOTE-datetime)), or `rfc822` ([RFC 822 reference](https://www.w3.org/Protocols/rfc822/#z28)).
: **Default:** the 'Date format' set in preferences.

`gmt="boolean"`
: Return either local time (according to the set time zone preferences) or GMT.
: **Values:** `0` (local time) or `1` (GMT).
: **Default:** `0`.

`lang="ISO language code"`
: Format time string suitable for the specified language (locale).
: **Values:** locales adhere to [ISO-639](https://en.wikipedia.org/wiki/ISO_639-2).
: **Default:** unset (time format set in the [Preferences panel](/administration/preferences-panel).

### Common presentational attributes

`class="class name"` <span class="footnote warning">v4.0.4+</span>
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="element"` <span class="footnote warning">v4.0.4+</span>
: HTML element to wrap (markup) the posted date, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: 'since' format date setting

~~~ html
<p>
    Posted:
    <txp:posted format="since" />
</p>
~~~

This would result in the following HTML output:

~~~ html
<p>Posted: 29 days ago</p>
~~~

### Example 2: Custom format date setting

~~~ html
<p>
    Posted:
    <txp:posted format="%b %d, %Y" />
</p>
~~~

This would result in the following HTML output:

~~~ html
<p>Posted: Feb 03, 2014</p>
~~~

### Example 3: Extended custom format date setting

~~~ html
<p>
    Posted:
    <time datetime="<txp:posted format="iso8601" />">
        <txp:posted class="time-day" wraptag="span" format="%d" />
        <txp:posted class="time-month" wraptag="span" format="%b" />
        <txp:posted class="time-year" wraptag="span" format="%Y" />
    </time>
</p>
~~~

This would result in the following HTML output:

~~~ html
<p>
    Posted:
    <time datetime="2014-02-03T10:43:39Z">
        <span class="time-day">03</span>
        <span class="time-month">Feb</span>
        <span class="time-year">2014</span>
    </time>
</p>
~~~

This provides styling hooks for each date part.

## Genealogy

### Version 4.0.4

`class` and `wraptag` attributes added.
