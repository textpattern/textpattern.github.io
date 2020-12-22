---
layout: document
category: Tags
published: true
title: If excerpt
description: The if_excerpt tag will execute the contained statements if an excerpt is associated with the article being displayed.
tags:
  - Article tags
  - Conditional tags
---

# If excerpt

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_excerpt>
~~~

The **if_excerpt** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_excerpt>
    …conditional statement…
</txp:if_excerpt>
~~~

The tag will execute the contained statements if an excerpt is associated with the article being displayed.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display the excerpt if it exists

~~~ html
<txp:if_excerpt>
    <txp:excerpt />
</txp:if_excerpt>
~~~

Other tags used: [excerpt](/tags/excerpt).
