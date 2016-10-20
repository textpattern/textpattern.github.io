---
layout: document
category: tags
published: true
title: "Modified"
tags:
  - Article tags
---

# Modified

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:modified />
~~~

The **modified** tag is a *single* tag which is used to return the modification date of the article being displayed. The format is determined by the settings specified in the Date Format, or Archive Date Format, fields in the [Preferences administration panel](../administration/preferences-panel).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`format="format string"`
: Override the default date format set in the [Preferences administration panel](../administration/preferences-panel).
: **Values:** any valid [strftime](http://php.net/strftime) string values.
: **Default:** the 'Archive date format' set in preferences.

`gmt="boolean"`
: Return either local time (according to the set time zone preferences) or GMT.
: **Values:** `0` (local time) or `1` (GMT).
: **Default:** `0`.

`lang="ISO language code"`
: Format time string suitable for the specified language (locale).
: **Values:** locales adhere to [ISO-639](http://en.wikipedia.org/wiki/ISO_639-2).
: **Default:** unset (time format set in the [Preferences administration panel](../administration/preferences-panel).

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see @@class cross-reference@@).

`wraptag="element"`
: HTML tag to wrap around output, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Display 'since' format date setting

~~~ html
<p>
    Modified:
    <txp:modified format="since" />
</p>
~~~

This would result in the following HTML output:

~~~ html
<p>Modified: 29 days ago</p>
~~~

### Example 2: Display custom date format

~~~ html
<p>
    Modified:
    <txp:modified format="%b %d, %Y" />
</p>
~~~

This would result in the following HTML output:

~~~ html
<p>modified: May 28, 2005</p>
~~~

## Genealogy

### Version 4.5.0

`wraptag` and `class` attributes added.

### Version 4.0.7

Tag support added.
