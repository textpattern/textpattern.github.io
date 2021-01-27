---
layout: document
category: Tags
published: true
title: If comments preview
description: The if_comments_preview tag will execute the contained statements if a comment is being previewed.
tags:
  - Comment tags
  - Conditional tags
---

# If comments preview

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_comments_preview>
~~~

The **if_comments_preview** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_comments_preview>
    …conditional statement…
</txp:if_comments_preview>
~~~

The tag will execute the contained statements if a comment is being previewed.

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Display text prompt when comment is previewed

~~~ html
<txp:if_comments_preview>
    <p>
        <strong>Please review your comment before submitting.</strong>
    </p>
</txp:if_comments_preview>
~~~
