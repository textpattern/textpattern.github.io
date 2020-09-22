---
layout: document
category: Tags reference
published: true
title: Meta description
description: The meta_description tag is a single tag used in a variety of ways to display meta description content.
tags:
  - Article tags
  - Markup tags
---

# Meta description

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:meta_description />
~~~

The **meta_description** tag is a *single* tag used in a variety of ways to display meta description content. One is to output description text as the content of a standard HTML `<meta>` tag in the `<head>` of a page template:

~~~ html
<meta name="description" content="{your description}" />
~~~

The other is to output raw description text anywhere else:

~~~
{your description}
~~~

The tag is context aware, in that it will use article descriptions (if available) on individual article pages, and use section and category descriptions (again, if available) on listing pages. The tag can be added directly in [page templates](/build/site-structures#page-templates) or as part of 'article' type [form templates](/build/site-structures#form-templates). Either way, you may also use it in a given article tag.

Note: The corresponding description field has a 255 character limit by default, which includes spaces and punctuation. This is the MySQL database default. You can edit the default using [phpMyAdmin](https://www.phpmyadmin.net), for example.
{: .alert-block .information}

## Attributes

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`format="value"`
: Display as `<meta>` tag or as raw value.
: **Values:** `meta` or unset.
: **Default:** `meta` (display as a `<meta>` tag).

`type="value"`
: The context from which to display meta information.
: **Values:** `article`, `section`, or `category`. The `category` may also be augmented to include its type, e.g. `category.image` or `category.file` to display description information from the nominated category type.
: **Default:** empty (i.e. automatic, depending on where the tag is used).

## Examples

### Example 1: Use article or section's description for meta tag content

~~~ html
<head>
  <title>Example 3 page</title>
  <txp:meta_description />
</head>
~~~

The **meta_description** tag returns an HTML `meta` tag, populated with an article's description if the visitor is viewing an individual article. If viewing an article list (landing) page, the tag will return the description from the Section instead.

The tag should normally be placed in your template's 'head' section, between the opening and closing HTML `<head>` tags.

The above will output description metadata with `content="` populated with the text set in the article or section's 'Description' field (the tag returns nothing if no description is set for either).

### Example 2: Use article's description for Twitter Card description (without meta tag)

~~~ html
<txp:if_individual_article>
    <meta name="twitter:description" content="<txp:meta_description format="" />" />
</txp:if_individual_article>
~~~

The above will output the description as a raw value (not enclosed in a `<meta>` tag) populated with the text set in the article's 'Description' field.

Other tags used: [if_individual_article](/tags/if_individual_article).

### Example 3: Display section meta description as tooltip in section list

~~~ html
<txp:section_list>
    <a href="/<txp:section />" title="<txp:meta_description format="" />">
        <txp:section title="1" />
    </a>
</txp:section_list>
~~~

Other tags used: [section_list](/tags/section_list), [section](/tags/section).

### Example 4: Override automatic type

~~~ html
<head>
    <txp:meta_description />
</head>
…
<h1>
    Section:
    <txp:section title="1" />
</h1>
<txp:if_article_list>
    <h2>Introduction</h2>
    <p>
        <txp:meta_description type="section" format="" />
    </p>
</txp:if_article_list>
<txp:article />
~~~

The first time the tag is used in the `<head>`, the section meta description will be output as a `<meta>` tag if viewing the section landing page, or the article meta description if viewing an individual article.

The second instance is only shown if on a landing page, and will force the display of the section meta description as an introductory paragraph.

Other tags used: [section](/tags/section), [if_article_list](/tags/if_article_list), [article](/tags/article).

## Genealogy

### Version 4.6.0

Tag support added.
