---
layout: document
category: Tags reference
published: true
title: Modified
description: The modified tag is a single tag which is used to return the modification date of the article being displayed.
tags:
  - Article tags
---

# Modified

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:modified />
~~~

The **modified** tag is a *single* tag which is used to return the modification date of the article being displayed. The default format is determined by the settings specified in the Date Format, or Archive Date Format, fields in the Preferences panel. It can be overridden with the `format` attribute.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`calendar="calendar string"`
: Set the calendar (for example, `chinese`).
: **Values:** any valid ICU calendar string.
: **Default:** unset.

`format="format string"`
: Override the default date format set in the Preferences panel.
: **Values:** any valid [strftime](https://secure.php.net/strftime) string values.
: **Default:** the 'Archive date format' set in preferences.

`gmt="boolean"`
: Return either local time (according to the set time zone preferences) or GMT.
: **Values:** `0` (local time) or `1` (GMT).
: **Default:** `0`.

`lang="ISO language code"`
: Format time string suitable for the specified language (locale).
: **Values:** locales adhere to [ISO-639](https://en.wikipedia.org/wiki/ISO_639-2).
: **Default:** unset (time format set in the Preferences panel.

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

`class` and `wraptag` attributes added.

### Version 4.0.7

Tag support added.
