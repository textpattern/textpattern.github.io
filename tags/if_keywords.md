---
layout: document
category: Tags
published: true
title: If keywords
description: The if_keywords tag will execute the contained statement if the current article's 'Keywords' field has one or more entries.
tags:
  - Article tags
---

# If keywords

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_keywords>
~~~

The **if_keywords** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_keywords>
    …conditional statement…
</txp:if_keywords>
~~~

The tag will execute the contained statement if the current article's 'Keywords' field has one or more entries.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`keywords="keywords"`
: Comma-separated list of keywords.
: **Default:** unset, which determines whether any keywords are assigned to the article.

## Examples

### Example 1: Supply meta tag if keywords exist

~~~ html
<head>
    ….
    <txp:if_individual_article>
        <txp:if_keywords>
            <txp:meta_keywords />
        <txp:else />
            <meta name="keywords" content="Apple, Orange, Pear, Foo, Bar" />
        </txp:if_keywords>

    <txp:else />
        <meta name="keywords" content="Apple, Orange, Pear, Foo, Bar" />
    </txp:if_individual_article>
    ….
</head>
~~~

Other tags used: [meta_keywords](/tags/meta_keywords), [if_individual_article](/tags/if_individual_article), [else](/tags/else).

## Genealogy

### Version 4.0.7

Tag support added
