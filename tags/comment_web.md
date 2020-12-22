---
layout: document
category: Tags
published: true
title: Comment web
description: The comment_web tag cis used to display (a link to) the commenter's web address.
tags:
  - Comment tags
---

# Comment web

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comment_web>
~~~

The **comment_web** tag can be used as either a *single* or a *container* tag. Thus it may be used as an opening and closing pair:

~~~ html
<txp:comment_web>
    …containing statements…
</txp:comment_web>
~~~

It is used to display (a link to) the commenter's web address, if entered at the time of posting. When used as a container tag, it will turn the contents into a link to that web address. Otherwise, it will return the web address. Should be used in Textpattern 'comment' type [Form templates](/themes/form-templates-explained).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Comments display form with linked website and comment anchor link

~~~ html
<txp:comment_message />
<p>
    By <txp:comment_name /> at <txp:comment_time />,
    <a href="<txp:comment_web />">Visit their website</a>
</p>
~~~

Other tags used: [comment_message](/tags/comment_message), [comment_name](/tags/comment_name), [comment_time](/tags/comment_time).

### Example 2: Container example

~~~ html
<txp:comment_web>Website</txp:comment_web>
~~~
