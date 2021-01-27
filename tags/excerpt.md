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

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:excerpt />
~~~

The **excerpt** tag is a *single* tag which is used to return the excerpt text, if any, associated with the article being displayed.

The conditional tag [if_excerpt](/tags/if_excerpt) can be used to check if there is an excerpt.

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

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

Other tags used: [body](/tags/body), [else](/tags/else), [if_article_list](/tags/if_article_list), [if_excerpt](/tags/if_excerpt), [permlink](/tags/permlink), [title](/tags/title).

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

Other tags used: [else](/tags/else), [if_excerpt](/tags/if_excerpt), [section](/tags/section).

## Example 3: Automatically extract the excerpt from body text

From Textpattern 4.8.0, use the following within an article form to:

* strip HTML tags form the body text
* limit the excerpt to the first 35 words
* append ellipses to the trimmed content

Adjust the 35 to suit your application.

~~~ html
<txp:body escape="tags" trim="/^\W*((?:\w+\W+){35})\w.*$/s" replace="$1&hellip;" />
~~~

Other tags used: [body](/tags/body).

## Example 4: trim paragraphs tags from the excerpt

From Textpattern 4.7.0, tags can use [global attributes](/tags/learning/#global-attributes). In this example any paragraph tags within the excerpt are excluded (escaped):

~~~ html
<txp:excerpt escape="p" />
~~~
