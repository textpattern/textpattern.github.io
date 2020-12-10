---
layout: document
category: Tags
published: true
title: If search
description: The if_search tag will execute the contained statements if the called page is the result of a search.
tags:
  - Conditional tags
  - Search tags
---

# If search

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_search>
~~~

The **if_search** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_search>
    …conditional statement…
</txp:if_search>
~~~

The tag will execute the contained statements if the called page is the result of a search.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Select a different stylesheet during search

~~~ html
<txp:if_search>
    <link rel="stylesheet" href="<txp:css name="search" />">
<txp:else />
    <link rel="stylesheet" href="<txp:css />">
</txp:if_search>
~~~

Selects a stylesheet named 'search' when search results are being displayed, or a stylesheet determined by the active section for normal page display.

Other tags used: [else](/tags/else), [css](/tags/css).
