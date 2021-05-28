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

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_different>
~~~

The **if_different** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_different>
    …contained statements…
</txp:if_different>
~~~

The tag will output the contained statement when the value of the contained statement differs from the preceding value for that contained statement. Can be used in Textpattern 'article', 'link', 'comment', and 'file' type [Form templates](/themes/form-templates-explained).

Note: `if_different` can contain several HTML and Textpattern tag.
{: .alert-block .information}

## Attributes

`id="string"` <span class="footnote warning">v4.8.6+</span>
: An identifier for the contained statement value storage.
: **Values:** any string.
: **Default:** unset (the contained statement hash).

`test="value"` <span class="footnote warning">v4.7.2+</span>
: If set, the contained statement will be output when the value of `test` changes.
: **Values:** generally a combination of Textpattern tags.
: **Default:** unset (watch for changes the contained statement itself).

## Examples

### Example 1: Display posting time per article once per day

~~~ html
<txp:if_different>
    <h3>
        <txp:posted format="%d %B %Y" />
    </h3>
</txp:if_different>
~~~

To be used inside Textpattern 'article' type [Form templates](/themes/form-templates-explained) or an article tag container (such as [article](/tags/article) or [article_custom](/tags/article_custom)).

Other tags used: [posted](/tags/posted).

### Example 2: Build an indented list of article titles grouped by section

Intention:

* Display a list of all articles' titles grouped by sections and ordered by article title.
* Add headings from section titles to designate an article's context.
* Sort alphabetically by section name, then by article title.

Desired result:

* about (section title)
* 1st Article from about section
* 2nd Article from about section
* …another article
* family (section title)
* 1st Article from family section
* 2nd Article from family section
* …another article
* people (section title)
* 1st Article from people section
* 2nd Article from people section
* …another article

In Textpattern [Page templates](/themes/page-templates-explained), add this tag to loop through all articles from all sections:

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

Other tags used: [article_custom](/tags/article_custom), [section](/tags/section), [title](/tags/title).

### Example 3: Build a `<hr />`-separated list of article titles grouped by section

Desired result:

* 1st Article from 1rst section
* 2nd Article from 1rst section
* …another article
* Horizontal rule
* 1st Article from 2nd section
* 2nd Article from 2nd section
* …another article
* Horizontal rule
* 1st Article from 3rd section
* 2nd Article from 3rd section
* …another article

In Textpattern [Page templates](/themes/page-templates-explained), add this tag to loop through all articles from all sections:

~~~ html
<txp:article_custom sort="Section asc, Title asc">
    <txp:if_different test='<txp:section />'>
        <txp:if_first_article not>
            <hr />
        </txp:if_first_article>
    </txp:if_different>
    <h3>
        <txp:title />
    </h3>
</txp:article_custom>
~~~

Other tags used: [article_custom](/tags/article_custom), [if_first_article](/tags/if_first_article), [section](/tags/section), [title](/tags/title).

## Genealogy

### Version 4.7.2

`test` attribute added.

### Version 4.8.6

`id` attribute added.
