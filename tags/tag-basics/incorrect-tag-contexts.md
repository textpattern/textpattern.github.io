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

'Article' form tags only work in an **article context**. They refer to one single article so they can only be used in a context that identifies one particular article. Specifically, they may be used on individual article [Page templates](https://docs.textpattern.io/themes/page-templates-explained), or in 'article' type [Form templates](https://docs.textpattern.io/themes/form-templates-explained) that have been displayed using a `<txp:article ... />` or `<txp:article_custom ... />` tag.

Article context tags will not work in article list [Page templates](https://docs.textpattern.io/themes/page-templates-explained), because list pages are not associated with any single article.

Similarly, 'Comment' form tags may only be used in the form that is used to display each individual comment (usually named `comments`); 'File' form and 'Link' form tags operate likewise.
