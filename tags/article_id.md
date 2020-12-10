---
layout: document
category: Tags
published: true
title: Article id
description: The article_id tag returns the numeric ID of the article being displayed.
tags:
  - Article tags
---

# Article id

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:article_id />
~~~

The `article_id` tag is a *single* tag which returns the numeric ID of the article being displayed. This number will also be reflected as a part of the article permanent URL if it has been chosen as the 'Article URL pattern' in the [Preferences panel](/administration/preferences-panel#article-url-pattern).

## Attributes

This tag has no attributes.

## Examples

### Example 1: Hyperlinked to the article

~~~ html
<txp:permlink>
    <txp:article_id />
</txp:permlink>
~~~

Other tags used: [permlink](/tags/permlink).

### Example 2: Conditional use

This will only display the hyperlinked article ID when on an individual article page.

~~~ html
<txp:if_individual_article>
    Article ID:
    <txp:permlink>
        <txp:article_id />
    </txp:permlink>
</txp:if_individual_article>
~~~

Other tags used: [if_individual_article](/tags/if_individual_article), [permlink](/tags/permlink).
