---
layout: document
category: Tag basics
published: true
title: Incorrect tag contexts
description: Certain Textpattern tags are only intended for use in particular places.
---

# Incorrect tag contexts

Certain Textpattern tags are only intended for use in particular places. If you see a message similar to this…

> "Article tags cannot be used outside an article context."

…then Textpattern is telling you that you shouldn't use the named tag where you have placed it.

'Article' form tags only work in an **article context**. They refer to one single article, so they can only be used in a context that identifies one particular article. Specifically, they may be used:

* On individual article [Page templates](https://docs.textpattern.io/themes/page-templates-explained).
* In 'article' type [Form templates](https://docs.textpattern.io/themes/form-templates-explained) that have been displayed using a `<txp:article ... />` or `<txp:article_custom ... />` tag.
* On list [Page templates](https://docs.textpattern.io/themes/page-templates-explained) if the tags are wrapped in `<txp:if_individual_article>...</txp:if_individual_article>`.

Article context tags will not work directly in article list [Page templates](https://docs.textpattern.io/themes/page-templates-explained), because list pages are not associated with any single article.

Similarly, 'Comment' form tags may only be used in the form that is used to display each individual comment (usually named `comments`); 'File' form and 'Link' form tags operate likewise.

The following contexts are recognised by Textpattern:

| Context  | Notes |
| -------- | -------- |
| Article | Any individual article |
| Author | Any URL of the type `example.org/author/Author+Name` |
| Category | Any URL of the type `example.org/categeory/category-name` or inside a `<txp:category_list>...</txp:category_list>` container |
| Category asset | Any URL of the type: <br> `   example.org/category/article/category-name` <br> `   example.org/category/image/category-name` <br> `   example.org/category/file/category-name` <br> `   example.org/category/link/category-name` |
| Comment | Comments areas within an article |
| Image | Any individual image when using an `id` attribute, or inside a `<txp:images>...</txp:images>` container |
| File | Any individual file when using an `id` attribute, or inside a `<txp:file_download_list>...</txp:file_download_list>` container |
| Link | Any individual link when using an `id` attribute, or inside a `<txp:linklist>...</txp:linklist>` container |
| Section | Any individual section when using a `name` attribute, or inside a `<txp:section_list>...</txp:section_list>` container |

[Next: Short-form versus long-form usage](shortform-vs-longform-usage)
