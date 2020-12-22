---
layout: document
category: Tags
published: true
title: Article
description: The basic article tag is used to output one or more articles depending on the attributes used.
tags:
  - Article tags
---

# Article

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:article />
~~~

The basic **article** tag can be used as either a *single* tag or *container* tag and used to output one or more articles depending on the attributes used. Default attributes will be used when nothing specific is assigned.

It may be used as a *container* tag, in which case it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:article>
    …contained statements…
</txp:article>
~~~

This is equivalent to putting the contained statements into a form named `my_form` and using `<txp:article form="my_form" />`.

The tag is context-sensitive, which means it will grab articles from the currently viewed section/category/author, etc.

When used on the front page, article's context will include articles from all sections set to display via 'Section appears on front page?' settings (see the [Sections panel](/administration/sections-panel) for more information).

Note: `<txp:article />` is **not** the same as `<txp:article_custom />` - you can [check out the differences of that tag](/tags/article_custom) if you're unsure of the differences!
{: .alert-block .information}

## Attributes

Tag will accept content/behaviour and presentation attributes (**case-sensitive**):

`allowoverride="boolean"`
: Whether to use override forms for the generated article list.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `1`.

`breakby="integer or string"` <span class="footnote warning">v4.7.2+</span>
: Used to group list items when separating by `break`. If its value is a list of integers, they will be used as groups size. For example, `2` (groups of 2 items) or `1,2` (alternate groups of 1 and 2 items).
: Otherwise, the value is evaluated on each loop and `break` happens as soon as it changes. Note that `string` must be enclosed in *double* quotes (see Example 7).
: **Default:** `1` (actually unset).

`breakform="form name"` <span class="footnote warning">v4.7.2+</span>
: A form to be used as `break`, generally jointly with `breakby` attribute. The special `<+>` pattern in this form will be replaced with the list "chunk" accumulated when break happens (see Example 7).
: **Default:** unset.

`customfieldname="value"`
: Restrict to articles with specified value for specified custom field name. Replace `customfieldname` with the actual name of the custom field.
: Important: Using dashes `-` or spaces may cause errors or render this feature ineffectual. Underscores in both custom field names and values are confirmed to work.

`form="form name"`
: Use specified form template to process each article.
: **Default:** `default`.

`frontpage="boolean"`
: Include only those articles with 'Section appears on front page?' set on the [Sections panel](/administration/sections-panel). If set to `0`, all articles are displayed.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `1`.

`keywords="keyword(s)"`
: Restrict to articles with specified keyword(s).

`limit="integer"`
: The number of articles to display.
: **Default:** `10`.

`listform="form name"`
: Use specified form when page is displaying an article list.
: **Default:** `article_listing`.

`offset="integer"`
: The number of articles to skip.
: **Default:** `0`.

`pageby="integer"` <span class="footnote warning">v4.0.2+</span>
: The number of articles to jump forward or back when an older or newer link is selected. Allows you to call the article tag several times on a page without messing up older/newer links.
: **Default:** value matches the value assigned to `limit`.

`pgonly="boolean"`
: Do the article count, but do not display anything. Used when you want to show a search result count, or article navigation tags **before** the list of articles. Just make sure that, other than `pgonly`, both article tags are identical (form-related attributes are the exception, they do not need to be assigned).
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`searchall="boolean"`
: When outputting search results, include only those articles with 'Include in site search' set on the [Sections panel](/administration/sections-panel). If set to `0`, only articles in the current section are displayed. See @@Fixing search results@@ for more.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `1`.

`searchform="form name"`
: The form to be used for your customized search results output.
: **Default:** `search_results`.

`searchsticky="boolean"`
: When outputting search results, include articles with status `sticky`.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`sort="sort value(s)"` <span class="footnote warning">v4.0.4+</span>
: How to sort the resulting article list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively. **Note:** values are case sensitive on some servers.
: **Values:** \\
`AuthorID` (author name). \\
`Category1`. \\
`Category2`. \\
`comments_count`. \\
`custom_n` where `n` is the number of your custom field - for numeric values use `(custom_n+0)`. \\
`Expires` (expiry date). \\
`ID` (article id#). \\
`Image` (article image id#). \\
`Keywords`. \\
`LastMod` (date last modified). \\
`LastModID` (author name of last modification). \\
`Posted` (date posted). \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
`Section`. \\
`Status`. \\
`Title`. \\
`url_title`. \\
Each field in the `textpattern` database table can be used as a sort key.
: When viewing a search results list, `score` (how well the search terms match the article) is available as an additional value.
: **Default:** `Posted desc` (`score desc` for search results).

`status="status"`
: Restrict to articles with the specified `status`.
: **Values:** `live` or `sticky`.
: **Default:** `live`.

`time="time"` <span class="footnote warning">v4.7.0+</span>
: Restrict to articles posted within specified timeframe.
: **Values:** `past`, `future`, `any` (both `past` and `future`) or a [PHP-compatible date format](https://secure.php.net/manual/en/datetime.formats.php). In the latter case, `time` will be considered as the end date of the interval started by `month` or `expired` attribute.
: **Default:** `past`.

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"` <span class="footnote warning">v4.0.7+</span>
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** `br` (but see [break cross-reference](/tags/tag-attributes-cross-reference#break) for exceptions).

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** tag name or unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](/tags/tag-attributes-cross-reference#label) for exceptions).

`labeltag="element"`
: HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
: **Default:** unset.

`wraptag="element"` <span class="footnote warning">v4.0.7+</span>
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

### Note on 'article list' vs. 'individual article' context

The **article** tag is context-sensitive. It will produce different results depending on whether the page being viewed is an article list or an individual article. Article-list context includes the default (home) page, section front pages, and category pages. Individual-article context applies on an article page (i.e. a page with a URL like `https://example.com/archives/24/my-article`).

## Examples

### Example 1: Basic use as single tag

Here is the **article** tag responsible for the main content of the home page on a new Textpattern installation:

~~~ html
<txp:article limit="5" />
~~~

Calls the `default` article form, which may contain any variation of article output you want to create. The `default` form cannot be deleted; it is the form you see on first viewing the [Forms panel](/administration/forms-panel).

Uses the `limit` attribute to specify the maximum number of articles displayed in article list context (if not specified, this defaults to `10`).

### Example 2: Specifying a form

Expanding on **Example 1**, here is the `article` tag responsible for showing lists of articles by category in the default page of a new Textpattern installation:

~~~ html
<txp:article form="article_listing" limit="5" />
~~~

In article list context, the form named `article_listing` will be processed and displayed for each article in the list. In individual article context, the `default` form would be used.

To see this in action, on a new Textpattern install, from the home page select one of the category links near the bottom (right above the Comment link). Note the URL, similar to `https://example.com/category/meaningful-labor`. The `category` in the URL means this is a listing of articles by category. Here you see only the article title, posting date and article information (not the full article itself), because that is what is contained in the form named `article_listing`. Now select the article title. Note the URL, similar to `https://example.com/articles/1/welcome-to-your-site`. This is an individual article page. Once again you can see the full article, this time with comments showing (if comments are enabled).

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

### Example 7: Build a `<section />`-separated list of article titles grouped by section

Desired result:

* `<section id="about (section name)">`
* About (section title)
* 1st Article from about section
* 2nd Article from about section
* …another article
* `</section>`
* `<section id="family (section name)">`
* Family (section title)
* 1st Article from family section
* 2nd Article from family section
* …another article
* `</txp:section>`
* …and so on

Create the following Form named `sections`:

~~~ html
<section id='<txp:section />'>
    <h2>
        <txp:section title />
    </h2>
    <+>
</section>
~~~

In Textpattern [Page templates](/themes/page-templates-explained), add this tag to loop through all articles from all sections:

~~~ html
<txp:article sort="Section asc, Title asc" breakby="<txp:section />" breakform="sections">
    <h3>
        <txp:title />
    </h3>
</txp:article>
~~~

Other tags used: [section](/tags/section), [title](/tags/title).

## Genealogy

### Version 4.7.2

`breakform` attribute added, `breakby` attribute modified.

### Version 4.7.0

`breakby` attribute added.

### Version 4.0.7

Can be used as a container. \\
`break` and `wraptag` attributes added.

### Version 4.0.4

`sort` attribute added (replaces `sortby` and `sortdir`) attributes. \\
`sortby` and `sortdir` attributes deprecated.

### Version 4.0.2

`pageby` attribute added.
