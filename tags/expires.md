---
layout: document
category: Tags
published: true
title: Expires
description: The expires tag is used to indicate when an article should no longer appear in a site, particularly when the information is date sensitive.
tags:
  - Article tags
---

# Expires

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:expires />
~~~

The **expires** tag is a *single* tag used to indicate when an article should no longer appear in a site, particularly when the information is date sensitive (e.g. events like conferences, meetings and so forth). The tag is defined by expiration date values that are set under the ''Date and time' section of the [Write panel](/administration/write-panel).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`format="format string"`
: Override the default date format set in the [Preferences panel](/administration/preferences-panel).
: **Values:** any valid [strftime](https://secure.php.net/strftime) string values.
: **Default:** the 'Archive date format' set in preferences.

`gmt="boolean"`
: Return either local time (according to the set time zone preferences) or GMT.
: **Values:** `0` (local time) or `1` (GMT).
: **Default:** `0`.

`lang="ISO language code"`
: Format time string suitable for the specified language (locale).
: **Values:** locales adhere to [ISO-639](https://en.wikipedia.org/wiki/ISO_639-2).
: **Default:** unset (time format set in the [Preferences panel](/administration/preferences-panel).

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="element"`
: HTML tag to wrap around output, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Custom format date setting

~~~ html
<p>
    Expires:
    <txp:expires format="%b %d, %Y" />
</p>
~~~

This would result in the following HTML output:

~~~ html
<p<Expires: Feb 03, 2014</p>
~~~

### Example 2: Extended custom format date setting

~~~ html
<p>
    Expires:
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
    Expires:
    <time datetime="2014-02-03T10:43:39Z">
        <span class="time-day">03</span>
        <span class="time-month">Feb</span>
        <span class="time-year">2014</span>
    </time>
</p>
~~~

This provides styling hooks for each date part.

## Genealogy

### Version 4.0.7

Tag support added.
