---
layout: document
category: Tags
published: true
title: Search result date
description: This tag will provide the article posted date as returned by the search function.
tags:
  - Search tags
---

# Search result date

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:search_result_date />
~~~

The **search_result_date** tag is a *single* tag. This tag will provide the article posted date as returned by the search function.

## Attributes

`format="format string"`
: Override the default date format set in the Preferences panel.
: **Values:** any valid [strftime](https://secure.php.net/strftime) string values, `since`, `iso8601` ([ISO 8601 reference](https://en.wikipedia.org/wiki/ISO_8601)), `w3cdtf` ([W3CDTF reference](https://www.w3.org/TR/NOTE-datetime)), or `rfc822` ([RFC 822 reference](https://www.w3.org/Protocols/rfc822/#z28)).
: **Default:** the 'Archive date format' set in preferences.

## Examples

### Example 1: Displays the posting date of an article

~~~ html
<h3>
    <txp:permlink>
        <txp:title />
    </txp:permlink>
</h3>
<p>
    <txp:search_result_date /> | <txp:posted />
</p>
~~~

Used in a search results form, this offers a search result entry comprising a hyperlinked article title, and the date that article was posted.

Other tags used: [title](/tags/title), [permlink](/tags/permlink), [posted](/tags/posted).
