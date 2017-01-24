---
layout: document
category: Administration
published: true
title: Categories panel
description: In the Categories administration panel you define categories for your content (articles, images, files and links).
---

# Categories panel

In the Categories administration panel you define categories for your content (articles, images, files and links).

Categorizing things makes it easier for both you and your visitors to keep track of different kinds of content. You might, for example, have a category 'software' in which you write about your experiments with the latest apps and another category 'pets' in which you post stories about your cats.

On this page:

* [Articles, images, files and links category contexts](#articles-images-files-and-links-category-contexts)
* [Create a new category](#create-a-new-category)
* [Edit an existing category and category details](#edit-an-existing-category-and-category-details)
* [Delete one or more categories](#delete-one-or-more-categories)

## Articles, images, files and links category contexts

Article categories allow organization of articles by their subject matter. Once categories are assigned, lists of articles belonging to particular categories can be browsed. It's similar with link, image and file categories: you group things together by their type or subject in order to make it easier to organize them or to display them in a way that makes sense to your readers.

## Create a new category

To create a category you simply type its name in the textfield at the top and click 'Create' - Textpattern then adds the new category to the list. You can also assign a new category to an existing 'parent' category when you create it (i.e. making it a 'subcategory' of an existing 'category').

Some **changes might occur** if you've chosen a name that has more than one word or if your language is not English: **special characters** such as umlauts (ä, ö, ü) are **converted** into replacement characters (e.g. ae, oe, ue, respectively) and **individual words are linked with hypens**. Category names are also converted to lower case letters.

**For example:** `persönlich` will become `persoenlich` and `about me` will become `about-me`.

The reason for these changes is that **category names can be part of URLs** and Textpattern makes sure that a category name contains only characters that are allowed in URLs. **Note:** The category `title` retains any special characters and/or spaces - it is only category `name` that is affected.

## Edit an existing category and category details

Click on a category name from the list of existing categories and you get to a new panel with four fields:

1. Category name
2. Parent category
3. Category title
4. Category description

The **category name** is the one used in URLs and other technical purposes. It contains no special characters and no spaces, as outlined above.

A **parent category** can be defined to create a hierarchical category structure for visual grouping. There are also some plugins that take advantage of nested category lists. The option of appending to a parent is only available if other categories in this context already exist.

The **category title** is your original title with special characters, spaces and all. This is the title that **will appear on your pages by default** if you use article tags such as `<txp:category1 />`, `<txp:category2 />` or `<txp:category_list />` (although this can be overrode within tag attributes, if you so wish).

The **category description** can be harnessed, for example, as meta data when you display a article category listing page.

These fields exist for all four kinds of content (articles, images, files and links). However, the tags mentioned above (`<txp:category1 />`, `<txp:category2 />` and `<txp:category_list />`) are only for article categories. For images, files and links there are other tags or tag attributes. See the [tag section](http://docs.textpattern.io/tags) for further details.

Once you have finished editng your category details, press 'Save' to store the changes and return to the main Categories administration panel.

## Delete one or more categories

You can **select one or more categories** within a context list using the checkbox next to it, and with the widget at the bottom of each context list you can then **delete** the category/categories or **change parent**.

[Next: Comments panel](http://docs.textpattern.io/administration/comments-panel)
