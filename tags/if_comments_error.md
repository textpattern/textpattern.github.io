---
layout: document
category: Tags
published: true
title: If comments error
description: The if_comments_error tag will execute the contained statements when an error exists with the comments.
tags:
  - Comment tags
  - Conditional tags
---

# If comments error

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_comments_error>
~~~

The **if_comments_error** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_comments_error>
    …conditional statement…
</txp:if_comments_error>
~~~

The tag will execute the contained statements when an error exists with the comments.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display comments error when an error occurs

~~~ html
<txp:if_comments_error>
    <txp:comments_error />
</txp:if_comments_error>
~~~

Other tags used: [comments_error](/tags/comments_error).
