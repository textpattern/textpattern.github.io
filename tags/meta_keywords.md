---
layout: document
category: Tags reference
published: true
title: Meta keywords
description: The meta_keywords tag is a single tag used in a variety of ways to display keyword data.
tags:
  - Article tags
  - Markup tags
---

# Meta keywords

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:meta_keywords />
~~~

The **meta_keywords** tag is a *single* tag used in one of two ways. One is to output keyword data as the content of a standard HTML `<meta>` tag in the `<head>` of a page template:

~~~ html
<meta name="keywords" content="{your article's Keywords}" />
~~~

The other is to output raw keyword text anywhere else:

~~~
{your article keywords}
~~~

Context of use must be within a single article (as opposed to an article list). The tag can be added directly in [page templates](/build/site-structures#page-templates), or as part of 'article' type [form templates](/build/site-structures#form-templates). Either way, you may also place it in a given article tag.

Note: The corresponding keywords field has a 255 character limit by default, which includes spaces and commas. This is the MySQL database default. You can edit the default using [phpMyAdmin](https://www.phpmyadmin.net), for example.
{: .alert-block .information}

## Attributes

`escape="html"` <span class="footnote warning">v4.6.0+</span>
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`format="value"` <span class="footnote warning">v4.6.0+</span>
: Display as `<meta>` tag or as raw value.
: **Values:** `meta` or unset.
: **Default:** `meta` (display as a `<meta>` tag).

`separator="value"` <span class="footnote warning">v4.6.0+</span>
: Character to be used as the keywords separator.
: **Default:** unset.

## Examples

### Example 1: Use article's keywords for meta tag content

~~~ html
<txp:meta_keywords />
~~~

The **meta_keywords** tag returns an HTML `meta` tag, populated with an article's keywords. The tag should always be placed in your template's 'head' section, between the opening and closing HTML `<head>` tags.

The above will output keywords metadata with `content="` populated with the list of keywords set in the article's 'Keywords' field (the tag returns nothing if no keywords are set for an article). For example, if your article's 'Keywords' field contains `sauce, caramel, sugar`, the tag will output the following:

~~~ html
<meta name="keywords" content="sauce,caramel,sugar" />
~~~

### Example 2: Display keywords in context of an article form

~~~ html
<h1>
    <txp:permlink>
        <txp:title />
    </txp:permlink>
</h1>
<p>
    Date:
    <txp:posted />
</p>
<p>
    Keywords:
    <txp:meta_keywords format="" separator=", " />
</p>
<txp:excerpt />
<txp:body />
~~~

In this example, keywords are used in a Textpattern 'article' type Form template along with other article components. The keywords themselves are used like a list of topical 'tags', e.g. like you would use for more granular searching. The keywords would be presented above the article's excerpt.

Other tags used: [permlink](/tags/permlink), [title](/tags/title), [posted](/tags/posted), [excerpt](/tags/excerpt), [body](/tags/body).

## Genealogy

### Version 4.6.0

`escape`, `format` and `separator` attributes added.
