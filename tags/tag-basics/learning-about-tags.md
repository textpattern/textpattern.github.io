---
layout: document
category: Tags and attributes
published: true
title: Learning about tags
description: Textpattern tags are shorthand method for calling functions defined inside Textpattern core. Modelled after standard HTML tag syntax, Textpattern’s native tags are easy to learn and work interchangeably with HTML.
---

# Learning about tags

Textpattern tags are an indispensible feature of Textpattern. They provide a markup-like approach to working with Textpattern's core functionality without having to know any PHP. The functions themselves represent content components, their sources, and a means of displaying them.

The tags may be added to Page and/or Form templates in a variety of ways, depending on what you are trying to achieve. The tags act as placeholders for content, which is replaced with the dynamic content output they fetch, as users move from one page to another in your site.

Below are a series of tag fundamentals, which will get you up and running with Textpattern tags. The entire list of current tags, syntax and examples can be in the [tags reference](/tags/).

**On this page**:

* Table of contents
{:toc}

## The two types of tag

Like their HTML/XML counterparts, Textpattern tags come in two flavours: *self-closed* and *container*. Some may act as both, depending on how you wish to use them.

### Self-closed tags

A self-closed tag is the most basic form of a Textpattern tag. Its structure is similar to that of a self-closed tag in HTML (e.g. `<br />`), most notably the inclusion of the terminating forward slash.

Most Textpattern tags are self-closed tags and have the following syntactic structure:

~~~ html
<txp:tagname_here />
~~~

The tag is replaced by relevant dynamic database contents when Textpattern displays a website page.

Self-closed tags usually take attributes that are used to configure or alter what is displayed. For example, the following [article](/tags/article) tag demonstrates using the `form` and `limit` attributes:

~~~ html
<txp:article form="form-name" limit="15" />
~~~

### Container tags

Container tags are composed of both an opening and closing tag element, giving them the following syntactic structure:

~~~ html
<txp:tagname_here>
    …content…
</txp:tagname_here>
~~~

The content that is added between container tags may be either text, HTML or other Textpattern tags.

Typical container tags are the **permlink** tag `<txp:permlink></txp:permlink>` and all **conditional tags**. Container tags are used when something has to be *enclosed* by tags instead of being *replaced* by them.

A link is a good example: you have a text string (or a title tag) around which you want to wrap an HTML anchor element:

~~~ html
<txp:permlink>
    <txp:title />
</txp:permlink>
…article content…
<txp:permlink>
    Read more…
</txp:permlink>
~~~

The example above would be rendered into something like so:

~~~ html
<a href="/articles/this-article-title">This article title</a>
…content…
<a href="/articles/this-article-title">Read more…</a>
~~~

### Closing tags correctly

Textpattern tags behave like XML tags insofar as they **must be closed** correctly. Any containing tag must have both an opening tag and a corresponding closing tag (marked with a preceding slash):

~~~ html
<txp:some_tag>
    …content…
</txp:some_tag>
~~~

If the tag is a conditional tag, check to make sure that any [else](/tags/else) tag is employed correctly:

**Right:**

~~~ html
<txp:if_some_condition>
  …true branch…
<txp:else />
  …false branch…
</txp:if_some_condition>
~~~

**Wrong:**

~~~ html
<txp:else>
</txp:else>
</txp:else />
~~~

Single (self-closing) tags must have a single slash at the end:

~~~ html
<txp:some_single_tag with="attributes" />
~~~

Also check that the angle brackets have not been HTML encoded by mistake, e.g.:

~~~ html
&lt;txp:some_tag /&gt;
~~~

TODO:

2. [Conditional tags](/tags/tag-basics/conditional-tags)
3. [Tag nesting](/tags/tag-basics/tag-nesting)
4. [Parsing tag attributes](/tags/tag-basics/parsing-tag-attributes)
5. [Parser and passes](/tags/tag-basics/parser-and-passes)
6. [Incorrect tag contexts](/tags/tag-basics/incorrect-tag-contexts)
7. [Integrated tag notation](/tags/tag-basics/integrated-tag-notation)
8. [Tag escaping](/tags/tag-basics/tag-escaping)
9. [Core short-tags](/tags/tag-basics/core-short-tags)
