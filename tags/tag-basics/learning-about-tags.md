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

## The types of tag

Like their HTML/XML counterparts, Textpattern tags come in two main flavours: **self-closed** and **container**. Some may act as both, depending on how you wish to use them. A third type, related to the container, is a **conditional** which allows you to take action if certain conditions are met or not.

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

### Conditional tags

Container tags are great for making lists and you can use conditional tags to help. Before introducing this type of tag, it is worth noting that your visitors are in one of two *views*, or *contexts* in Textpattern parlance:

1. an **individual** (single article) context
2. a **list** (or landing page) context

You don't need to worry about managing which is which, because Textpattern takes care of that for you, but you can decide what action you are going to take when a visitor views your site in either state. That is where conditional tags come in. Syntactically, they take the same form as a container:

~~~ html
<txp:if_condition>
…content if condition is met…
</txp:if_condition>
~~~~

If you require to take action if the condition is _not met_ you use the `<txp:else />` tag too:

~~~ html
<txp:if_condition>
…content if condition is met…
<txp:else />
…content if condition is not met…
</txp:if_condition>
~~~~

There are a host of [conditional tags](/tags/conditional-tags) that help you take action on many different types of situation or context your visitors may find themselves as they navigate your site.

### Tag example: displaying category lists

The power of these tag types can be weaved together in your page template to create some complicated logic in very simple and readable sets of tags.

When you show visitors an article, you can opt to make the categories to which it belongs hyperlinkable. If a visitor selects one of these links, they are taken to a category list showing other articles in the same category. Textpattern automatically switches from *individual article* to *list* context so your single page template can handle both situations fairly simply with containers and conditionals.

On your default article page you might see something like this:

~~~ html
<txp:if_category>
    <!-- Category landing page (list context) -->
    <h2>
        <!-- Display category title -->
        <txp:category title />
    </h2>
    <!-- Display up to 5 hyperlinked article titles plus each
         article's excerpt beneath, all wrapped in a div -->
    <txp:article limit="5" wraptag="div">
        <h3>
            <txp:permlink>
                <txp:title />
            </txp:permlink>
        </h3>
        <txp:excerpt />
    </txp:article>
<txp:else />
    <!-- Individual article context: show one article -->
    <txp:article wraptag="div" />
</txp:if_category>
~~~

Taking this block by block we see that the conditional [if_category"](/tags/if_category) determines if the visitor has selected a category hyperlink. If they have, we are in the **list** context. If they have not, the [else](/tags/else) portion is executed.

In this example, the [article](/tags/article) in the *else* portion is treated as an individual article, by virtue of it not being a category list. In more complex pages it may be part of a larger nested structure and therefore could be a different type of list (e.g. search results), but for now we'll take it at face value and assume it is an individual article.

Since the only attribute in use in this `<txp:article />` tag is `wraptag`, the tag will use the *default* form to render the article, and wrap the entire contents in HTML `<div>` tags. If you had specified your own `form` attribute, the article contents would be rendered by your chosen form instead.

The interesting part is if the visitor is viewing a list. In this case, the first thing that happens is to display the [category](/tags/category) title inside HTML `<h2>` tags.

Next, we call the standard article tag but instead of using the **default** form to render its contents, we use the tag as a container.

Since we are in a **list** context, we have told the article tag to `limit` its output and only show a maximum of 5 articles per page. Again, we are wrapping the article list in HTML `<div>` tags.

The tags inside the *article* container dictate how we will render each article in the list. In this example, we will show each article's title wrapped in `<h3>` tags, permalinked to its individual article contents. Beneath each title is the corresponding article's excerpt.

So, in just a few simple tags you have automatically rendered a list of articles. The tags have:

1. Determined if the visitor is browsing a category list or not.
2. Displayed a list of 5 article titles and excerpts if they are.
3. Displayed a single article if they are viewing an individual article.

That is the fundamental building block of how container and conditional tags can make building lists of things easy.

One thing to note: containers are great for simple content like this but if you find yourself repeating the same contained content over and over in Page templates or across a series of pages, you can make it easier to maintain by using Form templates instead. You then just write the container content once and use the `form="my-contained-stuff"` attribute in self-closing [article](/tags/article) tags to use it, as many times as you need.

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


3. [Tag nesting](/tags/tag-basics/tag-nesting)
4. [Parsing tag attributes](/tags/tag-basics/parsing-tag-attributes)
5. [Parser and passes](/tags/tag-basics/parser-and-passes)
6. [Incorrect tag contexts](/tags/tag-basics/incorrect-tag-contexts)
7. [Integrated tag notation](/tags/tag-basics/integrated-tag-notation)
8. [Tag escaping](/tags/tag-basics/tag-escaping)
9. [Core short-tags](/tags/tag-basics/core-short-tags)
