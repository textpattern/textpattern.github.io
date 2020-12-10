---
layout: document
category: Tags
published: true
title: If status
description: The if_status tag will execute the contained statements depending on the requested page's HTTP status condition.
tags:
  - Conditional tags
  - Error handling tags
---

# If status

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_status>
~~~

The **if_status** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_status>
    …conditional statement…
</txp:if_status>
~~~

The tag will execute the contained statements depending on the requested page's HTTP status condition. Normal pages result in a status code of '200', while missing pages set Textpattern's status to '404'.

This tag provides a method of sharing one page template between common pages and error pages, but including different output depending on the page's HTTP status.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`status="number"`
: Numerical [HTTP status code](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes).
: **Default:** `200` (OK).

## Examples

### Example 1: Conditionally display text on missing pages

~~~ html
<txp:if_status status="404">
    <h2>The page you requested could not be found.</h2>
</txp:if_status>
~~~
