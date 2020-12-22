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

* On individual article [Page templates](/themes/page-templates-explained).
* In 'article' type [Form templates](/themes/form-templates-explained) that have been displayed using a `<txp:article … />` or `<txp:article_custom … />` tag.
* On list [Page templates](/themes/page-templates-explained) if the tags are wrapped in `<txp:if_individual_article>…</txp:if_individual_article>`.

Article context tags will not work directly in article list [Page templates](/themes/page-templates-explained), because list pages are not associated with any single article.

Similarly, 'Comment' form tags may only be used in the form that is used to display each individual comment (usually named `comments`); 'File' form and 'Link' form tags operate likewise.

The following contexts are recognised by Textpattern:

<div class="tabular-data" tabindex="0" aria-labelledby="table1-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table1-caption" itemprop="about">List of Textpattern contexts.</caption>
        <thead>
            <tr>
                <th class="t25" scope="col">Context</th>
                <th scope="col">Notes</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">Article</th>
                <td>Any individual article.</td>
            </tr>
            <tr>
                <th scope="row">Author</th>
                <td>Any URL of the type <code>example.org/author/Author+Name</code>.</td>
            </tr>
            <tr>
                <th scope="row">Category</th>
                <td>Any URL of the type <code>example.org/category/category-name</code> or inside a <code>&lt;txp:category_list&gt;…&lt;/txp:category_list&gt;</code> container.</td>
            </tr>
            <tr>
                <th scope="row">Category asset</th>
                <td>Any URL of the type: <code>example.org/category/article/category-name</code>, <code>example.org/category/image/category-name</code>, <code>example.org/category/file/category-name</code>, <code>example.org/category/link/category-name</code>.</td>
            </tr>
            <tr>
                <th scope="row">Comment</th>
                <td>Comments areas within an article.</td>
            </tr>
            <tr>
                <th scope="row">Image</th>
                <td>Any individual image when using an <code>id</code> attribute, or inside a <code>&lt;txp:images&gt;…&lt;/txp:images&gt;</code> container.</td>
            </tr>
            <tr>
                <th scope="row">File</th>
                <td>Any individual file when using an <code>id</code> attribute, or inside a <code>&lt;txp:file_download_list&gt;…&lt;/txp:file_download_list&gt;</code> container.</td>
            </tr>
            <tr>
                <th scope="row">Link</th>
                <td>Any individual link when using an <code>id</code> attribute, or inside a <code>&lt;txp:linklist&gt;…&lt;/txp:linklist&gt;</code> container.</td>
            </tr>
            <tr>
                <th scope="row">Section</th>
                <td>Any individual section when using a <code>name</code> attribute, or inside a <code>&lt;txp:section_list&gt;…&lt;/txp:section_list&gt;</code> container.</td>
            </tr>
        </tbody>
    </table>
</div>

[Next: Integrated tag notation](/tags/tag-basics/integrated-tag-notation)
