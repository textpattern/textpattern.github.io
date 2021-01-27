---
layout: document
category: Tags
published: true
title: If first article
description: The if_first_article tag will execute the contained statements if the displayed article is the first in the list.
tags:
  - Article tags
  - Conditional tags
---

# If first article

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_first_article>
~~~

The **if_first_article** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_first_article>
    …conditional statement…
</txp:if_first_article>
~~~

The tag will execute the contained statements if the displayed article is the first in the currently displayed list. It will display in both single article and article list modes. Should be used in Textpattern 'article' type [Form templates](/themes/form-templates-explained).

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Add a linked section by title

~~~ html
<h3>
    <txp:permlink>
        <txp:title />
    </txp:permlink>
    |
    <txp:posted />
    by
    <txp:author />
    <txp:if_first_article>
        | Section:
        <txp:section link="1" title="1" />
    </txp:if_first_article>
</h3>
<txp:body />
<txp:comments_invite wraptag="p" />
~~~

Displays a link to the header of the first article in an article list.

Other tags used: [permlink](/tags/permlink), [title](/tags/title), [author](/tags/author), [posted](/tags/posted), [section](/tags/section), [body](/tags/body), [comments_invite](/tags/comments_invite).

### Example 2: Add a class to a list item

~~~ html
<li<txp:if_first_article> class="first"</txp:if_first_article>>
    <txp:permlink>
        <txp:title />
    </txp:permlink>
</li>
~~~

Adds a CSS class to the first article in an article list.

Other tags used: [permlink](/tags/permlink), [title](/tags/title).
