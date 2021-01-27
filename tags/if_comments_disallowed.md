---
layout: document
category: Tags
published: true
title: If comments disallowed
description: The if_comments_disallowed tag will execute the contained statements if comments are disallowed for a given article.
tags:
  - Comment tags
  - Conditional tags
---

# If comments disallowed

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_comments_disallowed>
~~~

The **if_comments_disallowed** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_comments_disallowed>
    …conditional statement…
</txp:if_comments_disallowed>
~~~

The tag will execute the contained statements if comments are disallowed for a given article.

The **if_comments_disallowed** tag can be used in pages, and in article and comment forms. When used in a page template, it will test the article identified by the attribute for status and act, or not, according to that status. It will not pass the `id` attribute to the contained statement, such as [comments](/tags/comments) or [comments_form](/tags/comments_form); they must be added as attributes to the contained tag.

Although you can use an `id` attribute in a comment form, the default behaviour (no attribute) will ensure consistency in comment/article matching when viewing an individual article.

This tag is mainly used in combination with [if_comments_allowed](/tags/if_comments_allowed).

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

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

### Example 2: List of comment links

~~~ html
<txp:if_comments_disallowed>
    <txp:comments form="lineitem" break="li" wraptag="ul" />
</txp:if_comments_disallowed>
~~~

And the form 'lineitem' (type: comment):

~~~ html
<txp:comment_permlink>
    <txp:comment_id />
</txp:comment_permlink>
~~~

Displays a list of links to comments for the current article, using the comment `id` as text, but only if comments are currently **not allowed**.

Other tags used: [comments](/tags/comments), [comment_permlink](/tags/comment_permlink), [comment_id](/tags/comment_id).
