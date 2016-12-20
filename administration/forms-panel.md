---
layout: document
category: Administration
published: true
title: "Forms panel"
description: The Forms panel is where the Form templates used within a Textpattern website are created and edited.
---

# Forms panel

The **Forms** panel contains an edit field, a list of existing @@Form templates@@ organized by rough categories, and a tag builder to help you construct form content. It's important to note that, like everything else, the Form templates are stored in the database - there is no physical file on the server that contains this Page template.

## What are Form templates?

**Form templates** are akin to snippets, includes, partials, and the like that define discrete *packages* of information that can be inserted into web page templates, or nested into other forms that are in turn *pulled* into web page templates. They are not files, *per se*, but similar in concept to files, having their own name (ID) and content. The content in a form can be any combination of text, HTML markup, Textpattern tags, or tags for third-party [Plugins](http://docs.textpattern.io/administration/plugins-panel) you might use.

The content can be a single word, to the HTML framework of an entire webpage template, to everything in between or something different altogether. But forms are generally most practical when scoped to repeatable, semantic regions of a page template (header, main area, side column, footer, etc.) or to functional blocks within those regions (navigation menu, sign-up form, widget, footer list, etc.). There's no right or wrong way to design forms, but as you get more familiar with Textpattern, you'll discover the optimal patterns to use, as well as how to name forms so they aren't confusing when you have many. Don't be surprised to adjust your architecture over time as you learn.

## Out-of-the-box forms

Several forms come with Textpattern out-of-the-box, only enough to provide the minimal publishing functionality needed in the default installation. The default forms, and presumably those you end up creating, are organized by type to help keep them straight.[^1] The type groupings used to organize forms are: **Article**, **Miscellaneous**, **Comment**, **Category**, **File**, **Links**, and **Section**. You'll only a given type in the panel when there's a form assigned to it.

Form types and the associated default forms are:

Article

, which is inserted into web templates dynamically when the forms are
called for a given web page.

, are known as are one of the six “building blocks” described in the
[textpattern_semantic_model](/home/www/zendstudio/dokuwiki/bin/doku.php?id=textpattern_semantic_model).

Textpattern Forms are predefined portions of text, Textpattern Tags,
and/or HTML, which collectively define how content should be formatted
and displayed. Textpattern forms are easily created in the Forms panel.
Forms are used by the Tags that call them, via the form="" attribute.
Once you have a good grasp of Tags, Forms, and the relationship between,
you'll begin to realize the seeming endless possibilities of how to
customize your website's architecture and content.\
An Example

<txp:article form="single" listform="default" />

This snippet dictates that the article should be displayed with the
"default" form when the section is displaying a list of articles, but
will use the "Single" form when displaying the individual article. You
may modify this Form to your own liking, or keep this one and simply
create a new one of your own.

The default contents of "single":

<h3 class="entry-title">
<txp:permlink><txp:title /></txp:permlink>

</h3>
<p class="published">
<txp:posted />

</p>
<div class="entry-content">
<txp:body />

</div>
As you can see, this Article form is composed of four different tags:
title, permlink, posted and body. If this form was used to output an
article, it would result in something like the following (X)HTML:

<h3 class="entry-title">
<a href="http://your-website.com/article/my-article-title" title="Permanent link to this article">My
Article Title</a>

</h3>
<p class="published">
3 May 2005

</p>
<div class="entry-content">
<p>
The full body of the article text.

</p>
</div>
### Creating a New Form {#creating-a-new-form .sectionedit1#creating_a_new_form}

To create a new Form, click the *Create new form* button at the top of
the right column. The Form editor will be empty. Before working on the
Form content right away, it's best to first give it an unique name,
assign a Form type and save it, all using the controls under the Form
editor.

You can then go back to editing the Form's content, either by hand, or
by pasting in some starter code from an existing Form and editing it as
needed. Be sure to save your changes as you progress to not risk losing
anything.

All Forms need to have unique names and a Form type association before
saving them. should classify it according to the kind of *Form* it will
be. There are seven form types: *article*, *category*, *comment*,
*file*, *link*, *misc* (miscellaneous), and *section*. The form type you
use is not vitally important, the purpose of assigning forms a type is
to allow Textpattern's tag builder to help you easily find the form you
want to use. Once you've named and classified your form, you can begin
building it.

#### Form template types explained

When creating a form, it must be assigned to a 'Type', which is available via a dropdown selection box alongside the 'Name' field. There are currently seven form types: *article*, *category*, *comment*, *file*, *link*, *misc* (miscellaneous), and *section*.

Form template types have almost no inherent semantic but aid solely as a means of organization for the designer/user. One notable exception: *article* type forms are the only ones listed in the *override form* dropdown on the write screen.

The category and section types are intended to be used in conjunction with [category_list](http://docs.textpattern.io/tags/category_list) and [section_list](http://docs.textpattern.io/tags/section_list), respectively, as a value to the form attribute, along the lines of `<txp:section_list form="foo" />`. They serve the same use case as the form attributes for articles do.

[^1]: The form naming convention you adopt will also help with form organization within a given form type list.
