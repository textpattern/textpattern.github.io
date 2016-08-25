---
layout: document
category: tags
published: true
title: "If comments"
description: The if_comments tag will execute the contained statements if there are comments associated with a particular article.
tags:
  - Comment tags
  - Conditional tags
---

# If comments

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:if_comments>
~~~

The **if_comments** tag is a *conditional* tag and always used as an opening and closing pair, like this...

~~~ html
<txp:if_comments>
    ...conditional statement...
</txp:if_comments>
~~~

The tag will execute the contained statements if there are one or more comments associated with a particular article. Should be used in an 'article' type form.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Number of comments associated with an article

~~~ html
<txp:if_comments>
    <p>
        Comments:
        <txp:comments_count />
    <p>
<txp:else />
    <p>No comments.</p>
</txp:if_comments>
~~~

Displays the number of comments written against the current article, otherwise display text to indicate there are no comments.

Other tags used: [comments_count](comments-count), [else](else).
