---
layout: document
category: Tags
published: true
title: Author email
description: The author_email tag is used to return the email address of the author of the currently displayed article.
tags:
  - Article tags
---

# Author email

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:author_email />
~~~

The **author_email** tag is a *single* tag that is used to return the email address of the author of the currently displayed article.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`link="boolean"`
: Make text a `mailto:` link.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

## Examples

### Example 1: Display email address (but don't link)

~~~ html
<p>
    <txp:author_email />
</p>
~~~

### Example 2: Create a mailto: link

~~~ html
<txp:author_email link="1" />
~~~

## Genealogy

### Version 4.5.0

Tag support added.
