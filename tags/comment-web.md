---
layout: document
category: tags
published: true
title: "Comment web"
Description: The comment_web tag cis used to display (a link to) the commenter's web address.
tags:
  - Comment tags
---

# Comment web

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:comment_web>
```

The **comment_web** tag can be used as either a __single__ or a __container__ tag. Thus it may be used as an opening and closing pair:

```html
<txp:comment_web>
    ...containing statements...
</txp:comment_web>
```

It is used to display (a link to) the commenter's web address, if entered at the time of posting. When used as a container tag, it will turn the contents into a link to that web address. Otherwise, it will return the web address. Should be used in a Textpattern 'comment' type @@Form template@@.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Comments display form with linked website and comment anchor link

```html
<txp:comment_message />
<p>
    By <txp:comment_name /> at <txp:comment_time />,
    <a href="<txp:comment_web />">Visit their website</a>
</p>
```

Other tags used: [comment_message](comment-message), [comment_name](comment-name), [comment_time](comment-time).

### Example 2: Container example

```html
<txp:comment_web>Website</txp:comment_web>
