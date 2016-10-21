---
layout: document
category: tags
published: true
title: "Comments"
description: The comments tag is used to display the comments associated with a particular article.
tags:
  - Comment tags
---

# Comments

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:comments />
~~~

The **comments** tag is a *single* tag which is used to display the comments associated with a particular article. Comments will be displayed for the present individual article as a default, or to the article set by the `id` attribute.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`form="form name"`
: Use specified form template to process each comment.
: **Default:** `comments`.

`limit="integer"`
: The number of comments to display.
: **Default:** `0` (no limit).

`offset="integer"`
: The number of comments to skip.
: **Default:** `0`.

`sort="sort value(s)"`
: How to sort the resulting list.
: **Values:** \\
`discussid` (comment ID). \\
`email`. \\
`ip` ([IP address](http://en.wikipedia.org/wiki/IP_address)). \\
`message`. \\
`name`. \\
`parentid` (article ID). \\
`posted`. \\
`rand()` ([random](http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html#function_rand)). \\
`web`.
: **Default:** `posted asc`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** `li` or `div`, depends upon [Preferences administration panel](../administration/preferences-panel) setting for 'Present comments as a numbered list?'.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** `comments` (see @@class cross-reference@@).

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** `ol` or unset, depends upon [Preferences administration panel](../administration/preferences-panel) setting for 'Present comments as a numbered list?'.

## Examples

### Example 1: Display comments and give an indication of comments status

~~~ html
<txp:comments />
<txp:if_comments_allowed>
    <txp:comments_form />
<txp:else />
    <p>Comments are turned off for this article.</p>
</txp:if_comments_allowed>
~~~

Comments for articles can be turned on or off at the author's discretion for any article that is published; by using the scheme above in an 'article' type form, you can still have the on/off control over comments while still giving users indication of comment status.

Other tags used: [comments_form](comments_form), [else](else), [if_comments_allowed](if_comments-allowed).

### Example 2: Conditional comments

~~~ html
<txp:if_comments_allowed>
    <txp:comments form="comments" break="li" wraptag="ul" />
    <txp:comments_form />
</txp:if_comments_allowed>
~~~

And the `comments` form (which is a 'comment' type form):

~~~ html
<txp:comment_message />
<p class="footnote">
    <a href="mailto:<txp:comment_email />">Email</a> |
    <txp:comment_permlink>
        <txp:comment_id />
    </txp:comment_permlink>
</p>
~~~

For the article, list id numbers and a comment input form; but only if comments are currently allowed.

Other tags used: [comment_email](comment_email), [comments_form](comments_form), [comment_id](comment_id), [comment_permlink](comment_permlink), [if_comments_allowed](if_comments-allowed).

## Genealogy

### Version 4.6.0

`breakclass` attribute deprecated.
