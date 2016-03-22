---
layout: document
category: tags
published: true
title: "If category"
tags:
  - Conditional tags
---

# If category

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:if_category>
~~~

The **if_category** tag is a *conditional* tag and always used as an opening and closing pair, like this...

~~~ html
<txp:if_category>
    ...conditional statement...
</txp:if_category>
~~~

The tag will execute the contained statements if the `name` attribute matches a category search value, or the list is an article list by category.

Should be used in a page template; if checking the category in an article form, use [if_article_category](if-article-category).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `name="category"`
Comma-separated list of category names. Note the category name is specified in lower case regardless of how you typed its title in the [Categories administration panel](../administration/categories-panel). Also note that if you had called your category 'My Category Name' it becomes 'my-category-name' when used in tags.
Default: unset, which determines whether ''any'' category listing is being viewed.
* `type="context"`
Textpattern context to check against. You can choose from the following contexts (set to empty to include all contexts):
`article` is this an article category list?
`image` is this an image category list?
`file` is this a file category list?
`link` is this a link category list?
Default: `article`.

## Examples

### Example 1: Display info depending on list category

~~~ html
<txp:if_category name="prose">
    <p><txp:author /></p>
</txp:if_category>
~~~

Displays the author's name if the article list is of category `prose`.

Other tags used: [author](author).

### Example 2: Use tag with else

~~~ html
<txp:if_category name="prose">
    <p><txp:category /></p>
<txp:else />
    <h3><txp:site_name /></h3>
</txp:if_category>
~~~

Displays the category name if the article list is of category `prose`, otherwise show the site's name.

Other tags used: [category](category), [else](else), [site_name](site-name).

### Example 3: Display an appropriate heading

~~~ html
<;txp:if_category>
   <h3>Articles in category <txp:category title="1" /></h3>
<txp:else />
   <h3>All articles</h3>
</txp:if_category>
~~~

Displays an appropriate heading for both category and non-category pages.

Other tags used: [category](category), [else](else).

### Example 4: Display a category/article list

Given the defined article categories: `prose`, `poetry`, and `opinions`.

~~~ html
<txp:category_list label="Category Navigation" wraptag="p" />

<txp:if_category name="prose">
    <txp:recent_articles limit="25" break="li" wraptag="ol" label="Prose" category="prose" />
</txp:if_category>

<txp:if_category name="poetry">
    <txp:recent_articles limit="25" break="li" wraptag="ol" label="Poetry" category="poetry" />
</txp:if_category>

<txp:if_category name="opinions">
    <txp:recent_articles limit="25" break="li" wraptag="ol" label="Opinions" category="opinions" />
</txp:if_category>
~~~

Shows a category list and, underneath it, a list of related articles in the currently selected category. Changing the category using the list changes the related articles underneath.

Other tags used: [category_list](category-list), [recent_articles](recent-articles).

## Genealogy

### Version 4.3.0

`type` attribute added.
