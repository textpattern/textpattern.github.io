---
layout: document
category: Tags
published: true
title: Comments
description: The comments tag is used to display the comments associated with a particular article.
tags:
  - Comment tags
---

# Comments

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comments />
~~~

The **comments** tag can be used as a *single* tag or a *container* tag and is used to display the comments associated with a particular article. Comments will be displayed for the present individual article as a default, or to the article set by the `id` attribute.

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
: How to sort the resulting comment list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively.
: **Values:** \\
`discussid` (comment ID). \\
`email`. \\
`ip` ([IP address](https://en.wikipedia.org/wiki/IP_address)). \\
`message`. \\
`name`. \\
`parentid` (article ID). \\
`posted`. \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
`web`.
: **Default:** `posted asc`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** `li` or `div`, depends upon [Preferences panel](/administration/preferences-panel) setting for 'Present comments as a numbered list?'.

`breakby="integer"` <span class="footnote warning">v4.7.0+</span>
: Used to group list items when separating by `break`. Possible values are lists of integers, like `2` (groups of 2 items) or `1,2` (alternate groups of 1 and 2 items).
: **Default:** `1` (actually unset).

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** `comments` (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** `ol` or unset, depends upon [Preferences panel](/administration/preferences-panel) setting for 'Present comments as a numbered list?'.

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

Other tags used: [comments_form](/tags/comments_form), [else](/tags/else), [if_comments_allowed](/tags/if_comments_allowed).

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

Other tags used: [comment_email](/tags/comment_email), [comments_form](/tags/comments_form), [comment_id](/tags/comment_id), [comment_permlink](/tags/comment_permlink), [if_comments_allowed](/tags/if_comments_allowed).

## Genealogy

### Version 4.7.0

`breakby` attribute added.

### Version 4.6.0

Can be used as a container tag. \\
`breakclass` attribute deprecated.
