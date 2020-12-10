---
layout: document
category: Tags
published: true
title: If expires
description: The if_expires tag will execute the contained statements, if a particular article has an expiry date set.
tags:
  - Article tags
  - Conditional tags
---

# If expires

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_expires>
~~~

The **if_expires** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_expires>
    …conditional statement…
</txp:if_expires>
~~~

The tag will execute the contained statements, if a particular article has an expiry date set. Should be used in an 'article' type form.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Show when an article is to expire

~~~ html
<txp:if_expires>
    This article expires on <txp:expires />.
</txp:if_expires>
~~~

Other tags used: [expires](/tags/expires).

## Genealogy

### Version 4.0.7

Tag support added.
