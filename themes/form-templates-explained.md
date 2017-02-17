---
layout: document
category: Themes
published: true
title: Form templates explained
description: Textpattern Form templates define discrete packages of information that can be inserted into Page templates.
---

# Form templates explained

Textpattern **Form templates** are akin to snippets, includes, partials, and the like that define discrete *packages* of information that can be inserted into [Page templates](https://docs.textpattern.io/themes/page-templates-explained), or nested into other forms that are in turn *pulled* into Page templates. They are not files, *per se*, but similar in concept to files, having their own name (ID) and content. The content in a form can be any combination of text, HTML markup, Textpattern tags, or tags for third-party [Plugins](https://docs.textpattern.io/administration/plugins-panel) you might use.

The content can be a single word, to the HTML framework of an entire web page template, to everything in between or something different altogether. But forms are generally most practical when scoped to repeatable, semantic regions of a page template (header, main area, side column, footer, etc.) or to functional blocks within those regions (navigation menu, sign-up form, widget, footer list, etc.). There's no right or wrong way to design forms, but as you get more familiar with Textpattern, you'll discover the optimal patterns to use, as well as how to name forms so they aren't confusing when you have many. Don't be surprised to adjust your architecture over time as you learn.

Form templates are one of the six 'building blocks' described in [the Textpattern semantic model](https://docs.textpattern.io/administraiton/textpattern-semantic-model). Textpattern Form templates are predefined portions of text, Textpattern Tags and/or HTML which collectively define how content should be formatted and displayed. Textpattern Form templates are easily created in the Forms administration panel and are used by the Textpattern Tags that call them, via the `form=""` attribute.

Once you have a good grasp of Textpattern Tags, Form templates, and the relationship between, you'll begin to realize the seeming endless possibilities of how to customize your website's architecture and content.

## An Example

~~~ html
<txp:article form="single-article-template" listform="multiple-articles-template" />
~~~

This snippet dictates that the article should be displayed with the 'multiple-articles-template' Form template when the section is displaying a list of articles, but will use the 'single-article-template' Form template when displaying the individual article. You may modify these Form template to your own liking, or simply create a new one of your own.

The contents of 'single-article-template':

~~~ html
<article>
    <h1>
        <txp:title />
    </h1>
    <p class="published">
        <txp:posted />
    </p>
    <txp:body />
</article>
~~~

As you can see, this 'article' type Form template is composed of three different tags: [title](https://docs.textpattern.io/tags/title), [posted](https://docs.textpattern.io/tags/posted) and [body](https://docs.textpattern.io/tags/body). If this Form template was used to output an article, it would result in something like the following HTML:

~~~ html
<article>
    <h1>My article title</h1>
    <p class="published">4 May 2016</p>
    <p>The full body of the article text.</p>
</article>
~~~

## Form template types explained

When creating a form, it must be assigned to a 'Type', which is available via a dropdown selection box alongside the 'Name' field. There are currently seven form types: *article*, *category*, *comment*, *file*, *link*, *misc* (miscellaneous), and *section*.

Form template types have almost no inherent semantic meaning, but aid solely as a means of organization for the designer/user. One notable exception: *article* type forms are the only ones listed in the [Override form](https://docs.textpattern.io/administraiton/write-panel#override-form) dropdown on the Write administration panel.

The category and section types are intended to be used in conjunction with [category_list](https://docs.textpattern.io/tags/category_list) and [section_list](https://docs.textpattern.io/tags/section_list), respectively, as a value to the `form` attribute, along the lines of `<txp:section_list form="foo" />`. They serve the same use case as the `form` attributes for articles do.

## Out-of-the-box forms

Several forms come with Textpattern out-of-the-box, only enough to provide the minimal publishing functionality needed in the default installation. The default Form templates, and presumably those you end up creating, are organized by type to help keep them straight.[^1] The type groupings used to organize forms are: **Article**, **Miscellaneous**, **Comment**, **Category**, **File**, **Links**, and **Section**. You'll only see a given type in the panel when there's at least one Form template assigned to it.

[^1]: The form naming convention you adopt will also help with form organization within a given form type list.
