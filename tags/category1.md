---
layout: document
category: Tags
published: true
title: Category1
description: The category1 tag will display the category as defined by 'Category 1' in the article being displayed.
tags:
  - Article tags
  - Navigation tags
---

# Category1

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:category1 />
~~~

The **category1** tag can be used as either a *single* tag or *container* tag. It will display the category as defined by **Category 1** in the article being displayed. When used as a container tag, it will turn the contents into a link to that category. Otherwise, it will return plain text.

This tag may be used within either an article form, or in a page, wrapped in an [if_individual_article](/tags/if_individual_article) conditional tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`link="boolean"`
: Whether to link to articles from the same category. Works only in the *single* tag.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`section="section name"` <span class="footnote warning">v4.0.4+</span>
: Restrict to articles from specified section(s).
: **Values:** (comma separated list of) section name(s).
: **Default:** unset, retrieves from all sections.

`title="boolean"`
: Whether to output category title, rather than name.
: **Values:** `0` (no, use name) or `1` (yes, use title).
: **Default:** `0`.

`this_section="boolean"` <span class="footnote warning">v4.0.4+</span>
: Whether to only link to articles from the section containing the current article.
: **Values:** `0` (no, allow from any section) or `1` (yes).
: **Default:** `0`.

## Examples

### Example 1: Category name in plain text

~~~ html
<p>
    <txp:category1 />
</p>
~~~

### Example 2: Hyperlinked category title

~~~ html
<p>
    <txp:category1 link title />
</p>
~~~

If **category1** is defined with a title 'Dogs', this tag will display the words 'Dogs' as a hyperlink to a list of articles in the same category.

### Example 3: Category link using custom container content

~~~ html
<txp:category1 wraptag="p">Other articles in category:
<txp:category1 title /></txp:category1>
~~~

Might display this HTML:

~~~ html
<p>
    <a rel="tag" href="https://example.com/category/dogs/">
        Other articles in category: Dogs
    </a>
<p>
~~~

### Example 4: Category 1 and 2

~~~ html
<p>
    Filed in: <txp:category1 link title />
    <txp:if_article_category number="2">
        and <txp:category2 link title />
    </txp:if_article_category>
</p>
~~~

Shows a hyperlinked category 1, and also hyperlinked category 2 but only if it is used.

Other tags used: [category2](/tags/category2), [if_article_category](/tags/if_article_category).

## Genealogy

### Version 4.0.4

`class`, `section`, `this_section` and `wraptag` attributes added.
