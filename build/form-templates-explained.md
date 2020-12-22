---
layout: document
category: Themes
published: true
title: Form templates
description: Textpattern form templates define discrete packages of information that can be inserted into page templates and other forms.
---

# Form templates

Textpattern **Form templates** are akin to snippets, includes, partials, and the like that define discrete *packages* of information that can be inserted into page templates, or nested into other forms that are in turn *pulled* into page templates. They are not files, *per se*, but similar in concept to files, having their own name (ID) and content. The content in a form can be any combination of text, HTML markup, Textpattern tags, or tags for third-party [Plugins](/administration/plugins-panel) you might use.

**Contents**

* Table of contents
{:toc}

## Content and scope of use

The content can be a single word, to the HTML framework of an entire web page template, to everything in between or something different altogether. But forms are generally most practical when scoped to repeatable, semantic regions of a page template (header, main area, side column, footer, etc.) or to functional blocks within those regions (navigation menu, sign-up form, widget, footer list, etc.). There's no right or wrong way to design forms, but as you get more familiar with Textpattern, you'll discover the optimal patterns to use, as well as how to name forms so they aren't confusing when you have many. Don't be surprised to adjust your architecture over time as you learn.

Form templates are one of the six 'building blocks' described in the [Textpattern semantic model](/faqs/textpattern-semantic-model). Form templates are predefined portions of text, Textpattern Tags and/or HTML which collectively define how content should be formatted and displayed. Textpattern Form templates are easily created in the Forms panel and are used by the Textpattern Tags that call them, via the `form=""` attribute.

Once you have a good grasp of Textpattern Tags, form templates, and the relationship between, you'll begin to realize the seeming endless possibilities of how to customize your website's architecture and content.

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

As you can see, this 'article' type Form template is composed of three different tags: [title](/tags/title), [posted](/tags/posted) and [body](/tags/body). If this Form template was used to output an article, it would result in something like the following HTML:

~~~ html
<article>
    <h1>My article title</h1>
    <p class="published">4 May 2016</p>
    <p>The full body of the article text.</p>
</article>
~~~

## Form types

When creating a form, it must be assigned to a 'Type', which is available via a drop-down selection box alongside the 'Name' field. There are currently seven form types: *article*, *category*, *comment*, *file*, *link*, *misc* (miscellaneous), and *section*.

Form template types have almost no inherent semantic meaning, but aid solely as a means of organization for the designer/user. One notable exception: *article* type forms are the only ones listed in the [Override form](/administraiton/write-panel#override-form) drop-down on the Write panel.

The category and section types are intended to be used in conjunction with [category_list](/tags/category_list) and [section_list](/tags/section_list), respectively, as a value to the `form` attribute, along the lines of `<txp:section_list form="foo" />`. They serve the same use case as the `form` attributes for articles do.

## Out-of-the-box forms

Several forms come with Textpattern out-of-the-box, only enough to provide the minimal publishing functionality needed in the default installation. The default Form templates, and presumably those you end up creating, are organized by type to help keep them straight.[^1] The type groupings used to organize forms are: **Article**, **Miscellaneous**, **Comment**, **Category**, **File**, **Links**, and **Section**. You'll only see a given type in the panel when there's at least one Form template assigned to it.

[^1]: The form naming convention you adopt will also help with form organization within a given form type list.

## Custom form types

In addition to the standard form template types (article, file, misc, etc.), Publishers can define custom types. The purpose of custom form template types is twofold: easier form template classification and custom asset definitions.

The format of the preference is [INI](https://en.wikipedia.org/wiki/INI_file), with each section corresponding to a form template type.

To define a custom form type (e.g. `js`) one must append (on a separate line) a `[js]` section. A default title can be set via a `title="Javascript"` entry in the corresponding section. If needed, localized titles can be appended too (e.g. `ru="Скрипт"`).

Additionally, a form template media type (formerly known as a MIME type) can be specified, e.g. `mediatype="application/javascript"`. This turns form templates of this type into custom assets that can be served as the set media type, either from the database or from disk (flat files) via the `<txp:output_form />` tag. For example, a form template named `myscript.js` of `[js]` type with a media type of `application/javascript` can be included in your code like so:

~~~ html
<txp:output_form form="myscript.js" format="flat.script" />
~~~

This will generate the following HTML `<script>` tag:

~~~ html
<script src="path/to/flat/myscript.js"></script>
~~~

Only form templates with the name extension corresponding to some media type (e.g. `myscript.js`) can be served as flat files. In this case, they will not be processed by Textpattern at all and are accessible via their URL.

If a form template needs processing (if it contains Textpattern tags), you must serve it from the database. In this case you shouldn't add the extension to the form name - call it just `myscript` (without `.js`) to make it inaccessible via a standard URL - and include it like so:

~~~ html
<txp::myscript format="script" />
~~~
