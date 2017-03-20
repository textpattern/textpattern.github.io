---
layout: document
category: Tags
published: true
title: If different
description: The if_different tag will execute the contained statement when the value of the contained statement differs from the preceding value.
tags:
  - Conditional tags
---

# If different

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:if_different>
~~~

The **if_different** tag is a *conditional* tag and always used as an opening and closing pair, like this...

~~~ html
<txp:if_different>
    ...contained statements...
</txp:if_different>
~~~

The tag will execute the contained statement when the value of the contained statement differs from the preceding value for that contained statement. Can be used in Textpattern 'article', 'link', 'comment', and 'file' type [Form templates](https://docs.textpattern.io/themes/form-templates-explained).

Note: `if_different` can contain several HTML tags but only **one** Textpattern tag.
{: .alert-block .information}

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display posting time per article once per day

~~~ html
<txp:if_different>
    <h3>
        <txp:posted format="%d %B %Y" />
    </h3>
</txp:if_different>
~~~

To be used inside Textpattern 'article' type [Form templates](https://docs.textpattern.io/themes/form-templates-explained) or an article tag container (such as [article](article) or [article_custom](article_custom)).

Other tags used: [posted](posted).

### Example 2: Build an indented list of article titles grouped by section

Intention:

* Display a list of all articles' titles grouped by sections and ordered by article title.
* Add headings from section titles to designate an article's context.
* Sort alphabetically by section name, then by article title.

Desired result:

* about (section title)
* 1st Article from about section
* 2nd Article from about section
* ...another article
* family (section title)
* 1st Article from family section
* 2nd Article from family section
* ...another article
* people (section title)
* 1st Article from people section
* 2nd Article from people section
* ...another article

In Textpattern [Page templates](https://docs.textpattern.io/themes/page-templates-explained), add this tag to loop through all articles from all sections:

~~~ html
<txp:article_custom sort="Section asc, Title asc">
    <txp:if_different>
        <h2>
            <txp:section title="1" />
        </h2>
    </txp:if_different>
    <h3>
        <txp:title />
    </h3>
</txp:article_custom>
~~~

The snippet above lists all article titles and renders an intermittent heading element whenever a **different** section is encountered while the articles loop through.

Other tags used: [article_custom](article_custom), [section](section), [title](title).
