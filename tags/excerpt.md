---
layout: document
category: Tags
published: true
title: Excerpt
description: The excerpt tag is used to return the excerpt text, if any, associated with the article being displayed.
tags:
  - Article tags
---

# Excerpt

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:excerpt />
~~~

The **excerpt** tag is a *single* tag which is used to return the excerpt text, if any, associated with the article being displayed.

The conditional tag [if_excerpt](if_excerpt) can be used to check if there is an excerpt.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Excerpt and 'read more' button

This example explains how you could display the excerpt in an article list, and excerpt + body in an individual article. Use the following in an article form:

~~~ html
<txp:if_article_list>
    <txp:if_excerpt>
        <txp:excerpt />
        <p class="read-more">
            <a href="<txp:permlink />#body" title="<txp:title />">Full article</a>
        </p>
    <txp:else />
        <txp:body />
    </txp:if_excerpt>
<txp:else />
    <txp:if_excerpt>
        <txp:excerpt />
    </txp:if_excerpt>
    <div id="body">
        <txp:body />
    </div>
</txp:if_article_list>
~~~

Other tags used: [body](body), [else](else), [if_article_list](if_article_list), [if_excerpt](if_excerpt), [permlink](permlink), [title](title).

### Example 2: Display the excerpt text or a default link

Use the following within an article form:

~~~ html
<txp:if_excerpt>
    <txp:excerpt />
<txp:else />
    <p>
        Section:
        <txp:section title="1" link="1" />
    </p>
</txp:if_excerpt>
~~~

Other tags used: [else](else), [if_excerpt](if_excerpt), [section](section).
