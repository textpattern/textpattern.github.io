---
layout: document
category: Tags
published: true
title: If article author
description: The if_article_author tag will execute the contained statement if the author name associated with a particular article matches.
tags:
  - Article tags
  - Conditional tags
---

# If article author

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_article_author>
~~~

The **if_article_author** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_article_author>
    …conditional statement…
</txp:if_article_author>
~~~

The tag will execute the contained statement if the author name associated with a particular article matches the value of the `name` attribute. Should be used in an 'article' type form.

Note: The `name` attribute requires an author's login name **not** their real name.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`name="author"`
: Comma-separated list of author names.
: **Default:** unset (i.e. any author at all).

## Examples

### Example 1: Display some text dependent on an article's author

~~~ html
<p>
    <txp:author />
    <txp:if_article_author name="admin">
        (Administrator)
    </txp:if_article_author>
</p>
~~~

Displays article author name, then displays the text "(Administrator)" if the article was written (posted) by the author `admin`.
