---
layout: document
category: Tags
published: true
title: If article id
description: The if_article_id tag will execute the contained statement if the article id associated with a particular article matches.
tags:
  - Article tags
  - Conditional tags
---

# If article id

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_article_id>
~~~

The **if_article_id** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_article_id>
    …conditional statement…
</txp:if_article_id>
~~~

The tag will execute the contained statement if the article id associated with a particular article matches the id attribute. Should be used in an article form/container. The `id` attribute **must** be used in an **article list context** (when producing a page that displays more than one article) or the tag will do nothing.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`id="integer"`
: Comma delimited integer article ID list.
: **Default:** current article's ID if available (i.e. on a page that displays a single article).

## Examples

### Example 1: Display info if the article id matches

~~~ html
<txp:if_article_id id="33">
    <p>
        <txp:title />
    </p>
</txp:if_article_id>
~~~

Displays the article title if the id of the current article is 33.

Other tags used: [title](/tags/title).

### Example 2: Display a list of articles omitting current article

~~~ html
<txp:article_custom label="related" labeltag="h4" section="<txp:section />" wraptag="ul">
    <txp:if_article_id>
    <txp:else />
        <li>
            <txp:permlink>
                <txp:title />
            </txp:permlink>
        </li>
    </txp:if_article_id>
</txp:article_custom>
~~~

Displays an unordered linked list of articles from the same section omitting the article currently viewed.

Other tags used: [article_custom](/tags/article_custom), [section](/tags/section), [else](/tags/else), [permlink](/tags/permlink), [title](/tags/title).

## Genealogy

### Version 4.0.7

Defaults to the current article's ID.
