---
layout: document
category: Tags
published: true
title: If individual article
description: The if_individual_article tag will execute the contained statements if an individual article is being displayed.
tags:
  - Article tags
---

# If individual article

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_individual_article>
~~~

The **if_individual_article** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_individual_article>
    …conditional statement…
</txp:if_individual_article>
~~~

The tag will execute the contained statements if an individual article is being displayed (i.e. not an article list).

Note: [article_custom](/tags/article_custom) always displays an article list, even when you set it to display only one article. Thus the **if_individual_article** tag will not work with article_custom, you'll have to use the [article](/tags/article) tag instead.
{: .alert-block .information}

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Select next-prev or older-newer navigation

~~~ html
<txp:article />

<txp:if_individual_article>
    <p>
        <txp:link_to_prev>
            <txp:prev_title />
        </txp:link_to_prev>
        <txp:link_to_next>
            <txp:next_title />
        </txp:link_to_next>
    </p>
</txp:if_individual_article>

<txp:if_article_list>
    <p>
        <txp:olde>
            Previous
        </txp:older>
        <txp:newer>
            Next
        </txp:newer>
    </p>
</txp:if_article_list>
~~~

Shows links to the next/previous article if the current page is an article, or shows links to the next/previous page of results if the current page is an article list.

Other tags used: [link_to_prev](/tags/link_to_prev), [link_to_next](/tags/link_to_next), [next_title](/tags/next_title), [prev_title](/tags/prev_title), [if_article_list](/tags/if_article_list), [older](/tags/older), [newer](/tags/newer).

### Example 2: Use the tag with else

~~~ html
<txp:if_individual_article>
    <p>
        <txp:site_name />
    </p>
<txp:else />
    <p>
        <img src="https://example.com/logo.png" alt="Logo">
    </p>
</txp:if_individual_article>
~~~

Displays the site's name when showing a single article, and a logo when **not** displaying a single article.

Other tags used: [else](/tags/else), [site_name](/tags/site_name).
