---
layout: document
category: Tags
published: true
title: If comments allowed
description: The if_comments_allowed tag will test the article identified by the attribute for status and act, or not, according to that status.
tags:
  - Comment tags
  - Conditional tags
---

# If comments allowed

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_comments_allowed>
~~~

The **if_comments_allowed** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_comments_allowed>
    …conditional statement…
</txp:if_comments_allowed>
~~~

The tag will execute the contained statements if comments are allowed for a given article.

This tag can be used in pages, or in article or comment forms; though it will allow you to use an `id` attribute in a comment form, the default behaviour (no attribute) will ensure consistency in comment/article matching when viewing an individual article.

When used in a page template, it will test the article identified by the attribute for status and act, or not, according to that status. It will not pass the `id` attribute to the contained statement, such as [comments](/tags/comments) or [comments_form](/tags/comments_form), they must be added as attributes to the contained tag.

This tag is mainly used in combination with [if_comments_disallowed](/tags/if_comments_disallowed).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Give an indication of comments status

~~~ html
<txp:if_comments_allowed>
    <txp:comments_form />
</txp:if_comments_allowed>

<txp:if_comments_disallowed>
    <p>Comments are turned off for this article.</p>
</txp:if_comments_disallowed>
~~~

Comments for articles can be turned off or on at the author's discretion for any article that is published; by using the following scheme in an article form, you can still have the on/off control over comments while also giving an indication of the comment status.

Other tags used: [comments_form](/tags/comments_form), [if_comments_disallowed](/tags/if_comments_disallowed).

### Example 2: Display a list of IDs

~~~ html
<txp:if_comments_allowed>
    <txp:comments form="lineitem" break="li" wraptag="ul" />
<txp:else />
    <p>Comments closed.</p>
</txp:if_comments_allowed>
~~~

And the form 'lineitem' (type: comment):

~~~ html
<txp:comment_id />
~~~

Displays a list of id numbers for comments on the current article, if comments are currently allowed.

Other tags used: [comments](/tags/comments), [else](/tags/else), [comment_id](/tags/comment_id).
