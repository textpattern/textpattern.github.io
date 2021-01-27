---
layout: document
category: Tags
published: true
title: If category
description: The if_category tag will execute the contained statements if the 'name' attribute matches a category search value, or the list is an article list by category.
tags:
  - Conditional tags
---

# If category

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_category>
~~~

The **if_category** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_category>
    …conditional statement…
</txp:if_category>
~~~

The tag will execute the contained statements if the `name` attribute matches a category search value, or the list is an article list by category.

Should be used in a page template; if checking the category in an article form, use [if_article_category](/tags/if_article_category).

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`category="category"` <span class="footnote warning">v4.7.0+</span>
: Category name. Note the category name is specified in lower case regardless of how you typed its title in the Categories panel. Also note that if you had called your category 'My Category Name' it becomes 'my-category-name' when used in tags.
: **Default:** the current listing category, if any.

`name="category"`
: Comma-separated list of category names.
: **Default:** unset, which determines whether ''any'' category listing is being viewed.

`parent="category or integer"` <span class="footnote warning">v4.7.0+</span>
: Comma-separated list of category names or an integer. In the first case, the tag will check if `category` or some of its ancestors belong to the `parent` list. In the second case, the tag will check if `category`'s ancestor of this generation belongs to the `name` list.
: **Default:** unset.

`type="context"` <span class="footnote warning">v4.3.0+</span>
: Textpattern context to check against. You can choose from the following contexts (set to empty to include all contexts): \\
`article` is this an article category list? \\
`image` is this an image category list? \\
`file` is this a file category list? \\
`link` is this a link category list?
: **Default:** `article`.

## Examples

### Example 1: Display info depending on list category

~~~ html
<txp:if_category name="prose">
    <p><txp:author /></p>
</txp:if_category>
~~~

Displays the author's name if the article list is of category `prose`.

Other tags used: [author](/tags/author).

### Example 2: Use tag with else

~~~ html
<txp:if_category name="prose">
    <p><txp:category /></p>
<txp:else />
    <h3><txp:site_name /></h3>
</txp:if_category>
~~~

Displays the category name if the article list is of category `prose`, otherwise show the site's name.

Other tags used: [category](/tags/category), [else](/tags/else), [site_name](/tags/site_name).

### Example 3: Display an appropriate heading

~~~ html
<txp:if_category>
   <h3>Articles in category <txp:category title="1" /></h3>
<txp:else />
   <h3>All articles</h3>
</txp:if_category>
~~~

Displays an appropriate heading for both category and non-category pages.

Other tags used: [category](/tags/category), [else](/tags/else).

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

Other tags used: [category_list](/tags/category_list), [recent_articles](/tags/recent_articles).

### Example 5: Check if 'cat' is descendant of 'animal'

~~~ html
<txp:if_category category="cat" parent="animal">
    <p>Cat is an animal.</p>
</txp:if_category>
~~~

### Example 6: Check if 'anakin' is the father of 'luke'

~~~ html
<txp:if_category category="luke" parent="1" name="anakin">
    <p>The test is positive - I am your father!</p>
</txp:if_category>
~~~

## Genealogy

### Version 4.7.0

`category` and `parent` attributes added.

### Version 4.3.0

`type` attribute added.
