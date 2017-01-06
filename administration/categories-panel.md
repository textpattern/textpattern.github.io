---
layout: document
category: Administration
published: true
title: Categories panel
description: In the Categories administration panel you define categories for your articles, links, images and files.
---

# Categories panel

In the Categories administration panel you define categories for your articles, links, images and files.

Categorising things makes it easier for both you and your visitors to keep track of different kinds of content. You might, for example, have a category 'software' in which you write about your experiments with the latest programs and another category 'pets' in which you post stories about your cats.

## Article categories

Article categories allow **organization of articles by their subject
matter**. Once categories are assigned, lists of articles belonging to
particular categories can be browsed. It's similar with link~~, image~~,
and file categories: you **group things together by their type or
subject** in order to make it easier to organize them or to display them
in a way that makes sense to your readers.

#### Create a new category {#create_a_new_category}

To **create a category** you simply **type its name** in the textfield
at the top and click **“create”**. Textpattern then adds the new
category to the list.

Some **changes might occur** if you've chosen a name that has more than
one word or if your language is not English: **special characters** such
as umlauts (Ã¤, Ã¶, Ã¼) are **converted** into replacement characters
(e.g. ae, oe, ue, respectively) and **individual words are linked with
hypens**. Category names are also converted to lower case letters.

**For example**, *persÃ¶nlich* will become *persoenlich* and *about me*
will become *about-me*.

The reason for these changes is that **category names can be part of
URLs** and Textpattern makes sure that a category name contains only
characters that are allowed in URLs.

#### Edit an existing category and category details {#edit_an_existing_category_and_category_details}

However, **Texpattern keeps the original names**. Just click on a
category name and you get to a new screen with three fields:

1.  **category name**
2.  **parent category**
3.  **category title**

The **category name** is the one used in URLs and other technical
purposes. It contains no special characters and no spaces.

**Parent category** can be defined to create a hierarchical category
structure although, as of this writing, there's little use for them
because there is no native way to filter or display them in their
hierarchical structure. There are, however, some
[plugins](http://textpattern.org/plugins) that take advantage of nested
category lists.

The **category title** is your original title with special characters,
spaces and all. This is the title that **will appear on your pages** if
you use tags such as

    <txp:category1 />, <txp:category2 /> or <txp:category_list />

.

These fields exist for all four kinds of content (articles, links,
images, files) and exactly as just described for the article categories.
However, the tags mentioned above (

    <txp:category1 />, <txp:category2 /> or <txp:category_list />

) are only for article categories. For links, images and files there are
other tags or tag attributes. See the tag section for details.

#### Delete one or more categories {#delete_one_or_more_categories}

Let's go **back to the category list in the organize tab**.

There's **one more function there**: you can **select each category** by
clicking the checkbox next to it and with the widget at the bottom of
each list you can **delete** the category/categories.

## Categories for links, images and files

The remaining three sets of categories for links, images and files work just as article categories described above.

[Next: Comments panel](http://docs.textpattern.io/administration/comments-panel)
