---
layout: document
category: Tags
published: true
title: If article category
description: The if_article_category tag will execute the contained statement if the category name associated with a particular article matches.
tags:
  - Article tags
  - Conditional tags
---

# If article category

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_article_category>
~~~

The **if_article_category** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_article_category>
    …conditional statement…
</txp:if_article_category>
~~~

It will execute the contained statement if the category name associated with a particular article (Category1 or Category2) matches the values of the name and number attributes. Should be used in 'article' type Textpattern [Form templates](/themes/form-templates-explained).

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`name="category"`
: Comma-separated list of category names (not titles) to match. Note the category name is specified in lower case regardless of how you typed its title in the [Categories panel](/administration/categories-panel). Also note that if you had called your category 'My Category Name' it becomes `my-category-name` when used in tags.
: **Default:** unset.

`number="number"`
: Match category in Category1 or Category2 (or both).
: **Values:** `1` or `2`.
: **Default:** unset, causing both categories to be matched against the specified name.

## Examples

### Example 1: Display matched category

~~~ html
<txp:if_article_category name="prose" number="1">
    <p>
        <txp:category1 />
    </p>
</txp:if_article_category>
~~~

If the Category1 assigned to the article is 'Prose', the category is displayed. Note that the category **name** is used in this tag, which may be different to its displayed category **Title**. When categories are created, Textpattern converts them to lowercase and replaces spaces with hyphens. So, for example, 'My Category' has a name `my-category`.

Other tags used: [category1](/tags/category1).

### Example 2: Using the tag with else

~~~ html
<txp:if_article_category name="algebra" number="1">
    <p>Fun with algebra</p>
<txp:else />
    <p>
        <a href="/">Home</a>
    </p>
</txp:if_article_category>
~~~

Displays the welcome text if the category and category number match the given values, or shows a default link otherwise.

Other tags used: [else](/tags/else).

### Example 3: Display a list of matching links

In an article form, put the following set of conditionals for each category you want to look for:

~~~ html
<txp:if_article_category name="yourcategory" number="1">
    <txp:article_custom category="yourcategory" sort="Posted asc" wraptag="ul" break="li">
        <txp:permlink>
            <txp:title />
        </txp:permlink>
    </txp:article_custom>
</txp:if_article_category>
~~~

Lists articles of the same category as the current article's Category1.

Other tags used: [article_custom](/tags/article_custom), [else](/tags/else), [title](/tags/title), [permlink](/tags/permlink).
