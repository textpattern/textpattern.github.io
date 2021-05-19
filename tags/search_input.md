---
layout: document
category: Tags
published: true
title: Search input
description: This tag will provide a text entry field for search parameters and an optional button to initiate the search.
tags:
  - Search tags
---

# Search input

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:search_input />
~~~

The **search_input** tag can be used as either a *single* or *container* tag. This tag will provide a text entry field for search parameters and an optional button to initiate the search.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`aria_label="text"` <span class="footnote warning">v4.7.2+</span>
: HTML `aria-label` attribute to be applied to search `input` field.
: **Default:** unset.

`button="text"`
: Creates and labels a button to initiate the search.
: **Default:** unset (no button is created).

`form="form name"`
: Use the specified form template to build a customized HTML form.
: **Default:** `search_input` (if no form template is specified and no other attributes are used), otherwise unset (uses a built-in HTML `<form>`).

`match="match type"` <span class="footnote warning">v4.3.0+</span>
: Set the search mode. Choose from: \\
`exact`: search terms must exactly match the words in the article in the order given. This mode is also automatically selected if the search term is surrounded with double quotes. \\
`any`: any of the search terms in an article will cause it to show up in the results. \\
`all`: all of the search terms in the article must exist (in any order) for the article to be included in the results.
: Default `exact`.

`placeholder="text"` <span class="footnote warning">v4.7.2+</span>
: HTML `placeholder` attribute to be applied to the search `input` field.
: **Default:** unset.

`section="section name"`
: Use the specified section as the destination page that will display the search results.
: **Default:** unset (use the front page).

`size="integer"`
: Sets the `size` attribute of the search `input` field.
: **Default:** `15`.

## Examples

### Example 1: Display a search input form

~~~ html
<txp:search_input label="Search" button="Search" size="20" wraptag="div" />
~~~

### Example 2: Elements required for building a customized HTML search form

Build your own custom search form by specifying `form="your-form-name"` inside the `<txp:search_input />` tag:

~~~ html
<txp:search_input form="search_box" />
~~~

You would then need to build your Form called `search_box`. It could contain any fields and markup you wish to suit your site. The absolute minimum Textpattern tags and attributes required would be:

~~~ html
<form action="<txp:site_url />">
    <input name="q" type="search" />
</form>
~~~

When using a customized form template, Textpattern doesn't automatically wrap the HTML form output with `<form>` tags, thus you need the opening and closing `<form>` tag pair. The `name="q"` attribute and value is **required** to initiate a search query.

Other tags used: [site_url](/tags/site_url).

Note: When displaying search results, Textpattern will use the form named `search_results`, unless another form is nominated/defined via the `form` attribute or the tag's container.
{: .alert-block .information}

### Example 3: Minimal search input form without label or button (yet still accessible)

~~~ html
<txp:search_input aria_label="Search" placeholder="Search…" />
~~~

## Genealogy

### Version 4.7.2

Can be used as a container tag. \\
`aria_label` and `placeholder` attributes added.

### Version 4.3.0

`match` attribute added.

### Version 4.0.7

`html_id` attribute added.
