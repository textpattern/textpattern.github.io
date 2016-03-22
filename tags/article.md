---
layout: document
category: tags
published: true
title: "Article"
description: The basic article tag is used to output one or more articles depending on the attributes used.
tags:
  - Article tags
---

# Article

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:article />
~~~

The basic **article** tag can be used as either a *single* tag or *container* tag and used to output one or more articles depending on the attributes used. Default attributes will be used when nothing specific is assigned.

It may be used as a *container* tag, in which case it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:article>
    ...contained statements...
</txp:article>
~~~

This is equivalent to putting the contained statements into a form named `my_form` and using `<txp:article form="my_form" />`.

The tag is context-sensitive, which means it will grab articles from the currently viewed section/category/author, etc.

When used on the front page, article's context will include articles from all sections set to display via 'Section appears on front page?' settings (see the [Sections administration panel](../administration/sections-panel) for more information).

Note: `<txp:article />` is **not** the same as `<txp:article_custom />` - you can [check out the differences of that tag](article-custom) if you're unsure of the differences!</p>
{: .alert-block .information}

## Attributes

Tag will accept content/behaviour and presentation attributes (**case-sensitive**):

### Content/behaviour attributes

* `allowoverride="boolean"`
Whether to use override forms for the generated article list.
Values: `0` (no) or `1` (yes).
Default: `1`.
* `customfieldname="value"`
Restrict to articles with specified value for specified custom field name. Replace `customfieldname` with the actual name of the custom field.
Important: Using dashes `-` or spaces may cause errors or render this feature ineffectual. Underscores in both custom field names and values are confirmed to work.
* `form="form name"`
Use specified form template to process each article.
Default: `default`.
* `keywords="keyword(s)"`
Restrict to articles with specified keyword(s).
* `limit="integer"`
The number of articles to display.
Default: `10`.
* `listform="form name"`
Use specified form when page is displaying an article list.
Default: `article_listing`.
* `offset="integer"`
The number of articles to skip.
Default: `0`.
* `pageby="integer"`
The number of articles to jump forward or back when an older or newer link is clicked. Allows you to call the article tag several times on a page without messing up older/newer links.
Default: value matches the value assigned to `limit`.
* `pgonly="boolean"`
Do the article count, but do not display anything. Used when you want to show a search result count, or article navigation tags **before** the list of articles. Just make sure that, other than `pgonly`, both article tags are identical (form-related attributes are the exception, they do not need to be assigned).
Values: `0` (no) or `1` (yes).
Default: `0`.
* `searchall="boolean"`
When outputting search results, include only those articles with 'Include in site search' set on the [Sections administration panel](../administration/sections-panel). If set to `0`, only articles in the current section are displayed. See @@Fixing search results@@ for more.
Values: `0` (no) or `1` (yes).
Default: `1`.
* `searchform="form name"`
The form to be used for your customized search results output.
Default: `search_results`.
* `searchsticky="boolean"`
When outputting search results, include articles with status `sticky`.
Values: `0` (no) or `1` (yes).
Default: `0`.
* `sort="sort value(s)"`
How to sort resulting list.
Values:
`authorid` (author name).
`category1`.
`category2`.
`comments_count`.
`custom_n` where `n` is the number of your custom field - for numeric values use `(custom_n+0)`.
`expires` (expiry date).
`id` (article id#).
`image` (article image id#).
`keywords`.
`lastmod` (date last modified).
`lastmodid` (author name of last modification).
`posted` (date posted).
`rand()` ([random](http://dev.mysql.com/doc/refman/5.0/en/mathematical-functions.html#function_rand)).
`section`.
`status`.
`title`.
`url_title`.
Each field in the `textpattern` database table can be used as a sort key.
When viewing a search results list, `score` (how well the search terms match the article) is available as an additional value.
Default: `posted desc` (`score desc` for search results).
* `status="status"`
Restrict to articles with the specified `status`.
Values: `live` or `sticky`.
Default: `live`.
* `time="time"`
Restrict to articles posted within specified timeframe.
Values: `past`, `future` or `any` (both `past` and `future`).
Default: `past`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

* `break="value"`
Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
Default: `br` (but see @@break cross-reference@@ for exceptions).
* `class="class name"`
HTML `class` to apply to the `wraptag` attribute value.
Default: tag name or unset (see @@class cross-reference@@).
* `label="text"`
Label prepended to item.
Default: unset (but see @@label cross-reference@@ for exceptions).
* `labeltag="element"`
HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
Default: unset.
* `wraptag="element"`
HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
Default: unset (but see @@wraptag cross-reference@@ for exceptions).

### Note on 'article list' vs. 'individual article' context

The **article** tag is context-sensitive. It will produce different results depending on whether the page being viewed is an article list or an individual article. Article-list context includes the default (home) page, section front pages, and category pages. Individual-article context applies on an article page (i.e. a page with a URL like `http://example.com/archives/24/my-article`).

## Examples

### Example 1: Basic use as single tag

Here is the **article** tag responsible for the main content of the home page on a new Textpattern installation:

~~~ html
<txp:article limit="5" />
~~~

Calls the `default` article form, which may contain any variation of article output you want to create. The `default` form cannot be deleted; it is the form you see on first viewing the [Forms administration panel](../administration/forms-panel).

Uses the `limit` attribute to specify the maximum number of articles displayed in article list context (if not specified, this defaults to `10`).

### Example 2: Specifying a form

Expanding on **Example 1**, here is the `article` tag responsible for showing lists of articles by category in the default page of a new Textpattern installation:

~~~ html
<txp:article form="article_listing" limit="5" />
~~~

In article list context, the form named `article_listing` will be processed and displayed for each article in the list. In individual article context, the `default` form would be used.

To see this in action, on a new Textpattern install, from the home page click on one of the category links near the bottom (right above the Comment link). Note the URL, similar to `http://example.com/category/meaningful-labor`. The `category` in the URL means this is a listing of articles by category. Here you see only the article title, posting date and article information (not the full article itself), because that is what is contained in the form named `article_listing`. Now click on the article title. Note the URL, similar to `http://example.com/articles/1/welcome-to-your-site`. This is an individual article page. Once again you can see the full article, this time with comments showing (if comments are enabled).

### Example 3: Offsetting article display

Continuing from the previous examples:

~~~ html
<txp:article listform="article_listing" limit="5" offset="2" />
~~~

Here we include the `offset` attribute to offset article display by `2` articles. This means the five articles that will be displayed (i.e. `limit="5"`) in article list context will begin with the third most recent article published in the site (the offset will not be applied in individual article context).

Why might you do it? Offsetting articles is useful in situations where the most recent article(s) are already accessible in some way and you don't want them appearing again in normal article flow.

### Example 4: Using pageby to split article output on a page

~~~ html
<div class="first">
    <txp:article limit="1" pageby="10" />
</div>
<div class="middle">
    <txp:article limit="8" offset="1" pageby="10" />
</div>
<div class="last">
    <txp:article limit="1" offset="9" pageby="10" />
</div>
~~~

Another:

~~~ html
<txp:article limit="5" pageby="10" />
<!-- google ad -->
<txp:article limit="5" offset="5" pageby="10" />
~~~

The `pageby` number should be the total number of articles displayed on the page. Without `pageby`, each article tag would page independently based on its own `limit`, as if it was the only article tag.

### Example 5: Combined with custom fields

~~~ html
<txp:article colour="red" />
~~~

This code will display articles that have a custom field named `colour` with a value `red`.

### Example 6: Article sorting

~~~ html
<txp:article sort="AuthorID asc, Posted desc" />
~~~

Uses the `sort` attribute to define values by which to order article output. In this case two values are declared. `AuthorID asc` first orders articles alphabetically by author names, then `Posted desc` orders them by date published (`desc` meaning newest to oldest).

Why might you do it? Sorting is a powerful way to group articles (e.g. by author), and/or give priority to articles most recently published (typically better for your website visitors).

## Genealogy

### Version 4.0.7

Can be used as a container.
`wraptag` and `break` attributes added.

### Version 4.0.4

`sort` attribute added (replaces `sortby` and `sortdir`) attributes.
`sortby` and `sortdir` attributes deprecated.

### Version 4.0.2

`pageby` attribute added.
