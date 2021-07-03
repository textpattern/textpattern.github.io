---
layout: landing
category: Tags and attributes
published: true
title: Learning about tags
description: Textpattern tags are shorthand method for calling functions defined inside Textpattern core. Modelled after standard HTML tag syntax, Textpattern's native tags are easy to learn and work interchangeably with HTML.
---

# Learning about tags

Textpattern tags are an indispensible feature of Textpattern. They provide a markup-like approach to working with Textpattern's core functionality without having to know any PHP. The functions themselves represent content components, their sources, and a means of displaying them.

The tags may be added to page and/or form templates in a variety of ways, depending on what you are trying to achieve. The tags act as placeholders for content, which is replaced with the dynamic content output they fetch, as users move from one page to another in your site.

The tag fundamentals presented on this page will get you up and running with Textpattern tags. If all you're after is a reference, the entire list of current tags, syntax and examples can be found in the [tags reference](/tags/).

**Contents**

* Table of contents
{:toc}

## Anatomy of a tag

Like their HTML/XML counterparts, Textpattern tags come in two main flavours: **self-closed** and **container**. Some may act as both, depending on how you wish to use them. A third type, related to the container, is a **conditional** that allows you to take action if certain conditions are met or not.

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

There are a host of [conditional tags](/tags/types/conditional-tags) that help you take action on many different types of situation or context your visitors may find themselves as they navigate your site.

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

Taking this block by block we see that the conditional [if_category](/tags/if_category) determines if the visitor has selected a category hyperlink. If they have, we are in the **list** context. If they have not, the [else](/tags/else) portion is executed.

In this example, the [article](/tags/article) in the *else* portion is treated as an individual article, by virtue of it not being a category list. In more complex pages it may be part of a larger nested structure and therefore could be a different type of list (e.g. search results), but for now we'll take it at face value and assume it is an individual article.

Since the only attribute in use in this `<txp:article />` tag is `wraptag`, the tag will use the *default* form to render the article, and wrap the entire contents in HTML `<div>` tags. If you had specified your own `form` attribute, the article contents would be rendered by your chosen form instead.

The interesting part is if the visitor is viewing a list. In this case, the first thing that happens is to display the [category](/tags/category) title inside HTML `<h2>` tags.

Next, we call the standard article tag but instead of using the **default** form to render its contents, we use the tag as a container.

Since we are in a **list** context, we have told the article tag to `limit` its output and only show a maximum of 5 articles per page. Again, we are wrapping the article list in HTML `<div>` tags.

The tags inside the *article* container dictate how we will render each article in the list. In this example, we will show each article's title wrapped in `<h3>` tags, permalinked to its individual article contents. Beneath each title is the corresponding article's excerpt.

So, in just a few simple tags you have automatically rendered a list of articles. The tags have:

1. Determined if the visitor is browsing a category list or not.
2. Displayed a list of 5 article titles and associated excerpts.
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

### Tag nesting

Similar to HTML, Textpattern allows you to nest tags within tags, as long as you close them in the correct order (i.e. tag closing cannot overlap).

Indenting is used here to show which tags belong to which bits of contained content. Notice the order in which the tags are opened and closed; it follows standard HTML and XML principles:

~~~ html
<txp:if_section name="archive">
    <txp:if_category>
        Category list within the archive section
    <txp:else />
        Not a category list
    </txp:if_category>
<txp:else />
    Some other section
</txp:if_section>
~~~

There are no limits on nesting depth and you can nest the same tag within itself:

~~~ html
<txp:if_section name="article">
    My Articles
<txp:else />
    <txp:if_section name="about">
        About this website
    <txp:else />
        Erm… something else!
    </txp:if_section>
</txp:if_section>
~~~

### Incorrect tag contexts

Contexts have been touched upon earlier: Textpattern automatically switches context based on the type of URL to which a visitor navigates as they browse your site. Conditional tags may respond to this context to perform actions, but certain Textpattern tags are only intended for use in particular places. What if you use a tag in an incorrect context? In this case, when your site is in *Testing* or *Debugging* mode, Textpattern will usually warn you with a message similar to this:

> "Article tags cannot be used outside an article context."

That tells you that you shouldn't use the named tag where you have placed it.

'Article' form tags only work in an **article context**. They refer to one single article, so they can only be used in a context that identifies one particular article. Specifically, they may be used:

* On individual article page templates.
* In form templates of type 'article' that have been displayed using a `<txp:article … />` or `<txp:article_custom … />` tag.
* On list page templates if the tags are wrapped in `<txp:if_individual_article>…</txp:if_individual_article>`.

Article context tags will not work directly in article list page templates, because list pages are not associated with any single article.

Similarly, 'Comment' form tags may only be used in the form that is used to display each individual comment (usually named `comments`); 'File' form and 'Link' form tags operate likewise.

The following contexts are recognised by Textpattern:

Article
: Any individual article

Author
: Any URL of the type <code>example.org/author/Author+Name</code>

Category
: Any URL of the type <code>example.org/category/category-name</code> or inside a <code>&lt;txp:category_list&gt;…&lt;/txp:category_list&gt;</code> container.

Category asset
: Any URL of the type: <code>example.org/category/article/category-name</code>, <code>example.org/category/image/category-name</code>, <code>example.org/category/file/category-name</code>, <code>example.org/category/link/category-name</code>

Comment
: Comments areas within an article.

Image
: Any individual image when using an <code>id</code> attribute, or inside a <code>&lt;txp:images&gt;…&lt;/txp:images&gt;</code> container.

File
: Any individual file when using an <code>id</code> attribute, or inside a <code>&lt;txp:file_download_list&gt;…&lt;/txp:file_download_list&gt;</code> container

Link
: Any individual link when using an <code>id</code> attribute, or inside a <code>&lt;txp:linklist&gt;…&lt;/txp:linklist&gt;</code> container.

Section
: Any individual section when using a <code>name</code> attribute, or inside a <code>&lt;txp:section_list&gt;…&lt;/txp:section_list&gt;</code> container.

## Attributes

Most Textpattern tags allow you to specify attributes as key/value pairs to override default behaviour. For example:

~~~ html
<txp:tag key="value" />
<txp:category type="image" title />
~~~

Usage of attributes in Textpattern tags is similar to attributes in HTML.

A few important rules to remember:

* Attribute values must always be delimited by double (or single) quotes. Single quotes have special meaning, so use double quotes by default.
* Attribute keys must be lowercase.
* For plugin developers: attribute keys can consist of the letters 'a' through 'z', and underscore (though not as the first or last character).

### Attribute value escaping

Almost any character can be used in an attribute value. Unlike in HTML, there is no need for using escape codes for characters like `>`, `<` and `&`. In fact, attribute values should contain no HTML escape codes at all, because the tag itself should take care of proper escaping.

However, there is one exception: the delimiter character. The attribute value is delimited by a pair of double (or single) quotes and this poses a restriction on using the delimiter character inside the attribute value.

Suppose you wanted to use this as an attribute value:

~~~
Reward for "good" behaviour
~~~

*Incorrect*:

~~~ html
<txp:tag key="Reward for "good" behaviour" />
~~~

For a human, it's easy to understand how this was intended, but for Textpattern the attribute value ends at the double quote before 'good'. The remainder of the attribute value makes it an incorrectly formatted tag (causing it to show up as-is in the resulting HTML code).

If single quotes didn't have special meaning, you could solve this by using single quotes to delimit the attribute value:

~~~ html
<txp:tag key='reward for "good" behaviour' />
~~~

While this works as intended in this case, it doesn't account for attribute values containing both single and double quotes. Textpattern has adopted a convention whereby duplicate delimiter characters used as part of an attribute value are interpreted as a literal character instead of delimiters. For example:

~~~ html
<txp:tag key="reward for ""good"" behaviour" />
<txp:tag key='reward for ''good'' behaviour' />
~~~

If you look closely at the second example, you'll see that in the attribute value, there are two single quotes on each side of the word 'good', not a double quote.

One last example that shows what's possible:

~~~ html
<txp:tag key="let's use ""double"" quotes & <html> here" />
~~~

The only character that needs escaping is the chosen attribute delimiter itself where it occurs inside the attribute value (double quote in this instance).

Note: In Textpattern 4.0.6 and older, delimiter escaping did not exist and the tag parser also failed to handle attribute values containing a `>`.
{: .alert-block .information}

### Parsed attribute values

In most cases, you want attribute values to be treated as just a string of text, but there are situations where it can be useful to let Textpattern parse the attribute value itself.

Double quoted attribute values are not parsed, so if your attribute value contains a value that looks like a tag, but should be treated as literal text, you must always use double quotes. In fact, you should use double quotes to delimit attribute values at all times, unless you want the attribute value parsed. The reason for this is simple: speed. Parsing an attribute value is slower than treating it as plain text.

What does all this mean? Here are some examples, starting with attribute values that are not parsed:

~~~ html
<txp:tag key="plain text" />
<txp:tag key="literal <txp:tag />" />
~~~

In the above examples, the attributes are both treated as plain text; the literal tag is not parsed. If you wanted the tag in the attribute value to be parsed and return the actual result of the tag, you should write it like this, using single quotes (apostrophes) around the attribute value:

~~~ html
<txp:tag key='parsed <txp:tag />' />
~~~

### Parsing tags example

Using an article that has a custom field named 'email' containing an email address `me@example.com` and a custom field 'name' containing 'Donald Swain':

~~~ html
<txp:email
    email='<txp:custom_field name="email" />'
    linktext="Send email"
    title='Send email to <txp:custom_field name="name" />'
/>
~~~

Because the single-quoted attribute values are parsed, after parsing the attribute values, it looks like this:

~~~ html
<txp:email
    email="me@example.com"
    linktext="Send email"
    title="Send email to Donald Swain"
/>
~~~

If it were just one article, you wouldn't need attribute parsing, but if you have many articles with different email addresses in such a custom field, this can be very useful.

Attribute value parsing has no real limitations. Within a parsed attribute value, you can:

* Have an unlimited number of tags.
* Mix plain text with tags.
* Use container tags (yes, even `<txp:php>`), self-closing tags and if/else constructs.
* Even parse the attributes of tags inside an attribute to unlimited depth, provided you use proper attribute value quoting and escaping.

### Nesting quotes in quotes in…

Referring to the last point above, things can become 'a little hairy' if you want to insert a tag into an attribute of a tag that's already an attribute! But keep your wits about you and you can do things like this:

~~~ html
<txp:variable name="file_count" value='<txp:file_download_list form="file_cat" category=''<txp:l10n_get_lang type="short" />'' />' />
<txp:if_variable name="file-count">
    <h3>Some Header</h3>
    <txp:file_download_list category='<txp:l10n_get_lang type="short" />' wraptag="ul" break="li" />
<txp:else />
    <p>No files for this language.</p>
</txp:if_variable>
~~~

In the first statement, notice the pairs of single apostrophes inside the category attribute? They are necessary to **escape** the single quotes so the parser does not see them as the end of the **value** attribute in the `<txp:variable />` tag. At each nested level, the number of single quotes surrounding a tag is usually doubled to maintain the integrity of the statements; this can get mighty interesting unless you keep your wits about you!

In the above example, the `file_cat` form returns some markup (in this case, just a series of links to the relevant files) which is all assigned to the **value** of the [variable](/tags/variable) named 'file_count'.

The upshot is that this variable can be tested with [if_variable](/tags/if_variable) to see if it contains anything at all and - if it does, the file list can be displayed. Conversely, if there are no files for that language then the [else](/tags/else) part of the conditional statement is displayed.

## Global attributes

From Textpattern 4.7.0, some commonly-used attributes are *global*, i.e. they are available to _any_ (core or plugin) tag. It is important to know that global attributes cannot intervene in a tag's internal processing and are applied only to the tag's _output_. For example:

~~~ html
<txp:variable name="test" value="   " />

<txp:if_variable name="test" trim value>
    there is something to test
<txp:else />
    the variable is blank
</txp:if_variable>
~~~

will not work as you might expect, because the global `trim` will be applied to the output of `<txp:if_variable name="test" value />`. Since the value of the 'test' variable (`"   "`) is not empty, the 'true' branch of the conditional returns:
```

    there is something to test

```
The `trim` is applied to that, finally returning: `there is something to test`, i.e. with surrounding space trimmed out.

Note that if a tag already _has_ an attribute with the same name as a global one, the tags _own_ attribute will be processed and the global one will be discarded.

### Global attributes list

The following lists all global attributes that Textpattern can process.

{% include atts-global.html preamble="0" %}

### Tag escaping

A global `escape` attribute is available which applies to all tags (core tags and plugin tags) that don't treat it natively. Its value is a comma-separated list of 'transforms' that will be applied to the content in the given order. For example:

~~~ html
<txp:variable name="hello" escape="trim, textile">
    Hello, _world_!
</txp:variable>

<txp:variable name="hello" escape="html" />
~~~

Will output:

~~~ html
<p>Hello, <em>world</em>!</p>
~~~

#### Available escape values

`escape="html"` (default)
: Encode special HTML characters (`"'&<>`).

`escape="url"`
: URL-encode all characters except `.-_`.

`escape="db"` <span class="footnote warning">v4.8.6+</span>
: Encode the content so it can safely be used as part of a database query.

`escape="json"`
: JSON-encode, without the surrounding `""` quotes.

`escape="quote"`
: Surround the content with `''` apostrophes.

`escape="trim"` (`ltrim`, `rtrim`)
: Remove surrounding (left, right) spaces/newlines from the content.

`escape="tidy"`
: Remove extra spaces/newlines from the content and trigger a more thorough processing mode.

`escape="number"` (`integer`, `float`)
: Format the content as a number of the designated type.

`escape="tidy, number"`
: Remove spaces/newlines and format the content as a stricter number (force to float or fraction first).

`escape="tidy, integer"`
: Remove spaces/newlines and format the content as a stricter integer (ensure it adheres to an integer first).

`escape="trim, integer"`
: Remove zero and invalid values from a list of integers.

`escape="spell"`
: Spell out the numeric content (requires `NumberFormatter` PHP extension).

`escape="ordinal"`
: Format the content as ordinal number (requires `NumberFormatter` PHP extension).

`escape="upper"` (`lower`, `title`)
: Convert the content to upper case, lower case, or sentence (Title) case.

`escape="textile"`
: Pass the content through the Textile parser.

`escape="tidy, textile"`
: Remove spaces/newlines, prepend a single space to remove the surrounding `<p>` tag, then Textile the content.

`escape="tags"`
: Strips all HTML tags and comments from the content leaving you with just the text/data of the content.

`escape="some-tag"`
: Strip any self-closing `<some-tag />`, or unwrap any container `<some-tag>…</some-tag>` in the content.

`escape="tidy, some-tag"`
: Remove spaces/newlines, escape any regex characters, then strip any self-closing `<some-tag />`, or unwrap any container `<some-tag>…</some-tag>` in the content.

#### Example: Extract a number from a variable

~~~ html
<txp:variable name="amount" value="Price: £1 234.78" />

<txp:variable name="amount" escape="number" />
<txp:variable name="amount" escape="tidy, number" />
~~~

Outputs `0` without `tidy` (the variable is not a number) and `1234.78` with `tidy`.

#### Example: Format a variable with Textile

~~~ html
<txp:variable name="test">
*This*
is

a _test_
</txp:variable>

<txp:variable name="test" escape="textile" />
<txp:variable name="test" escape="tidy, textile" />
~~~

Without `tidy` it outputs:

~~~ html
<p><strong>This</strong><br />is</p>
<p>a <em>test</em></p>
~~~

With `tidy` it outputs `<strong>This</strong> is a <em>test</em>`.

#### Example: Remove all images from Excerpt

~~~ html
<txp:excerpt escape="img" />
~~~

#### Example: Required JSON-LD to validate AMP

Create valid [JSON-LD](https://json-ld.org) for the `<head>` section of an [AMP](https://www.ampproject.org) page, by using `escape="json"` on various tags along with the [smd_thumbnail](https://github.com/Bloke/smd_thumbnail) plugin.

~~~ html
<script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "BlogPosting",
    "headline": "<txp:title escape="json" />",
    "mainEntityOfPage": "<txp:permlink />",
    "datePublished": "<txp:posted format="iso8601" />",
    "dateModified": "<txp:modified format="iso8601" />",
    "description": "<txp:meta_description format="" escape="json" />",
    "author": {
      "@type": "Person",
      "name": "<txp:author escape="json" />"
    },
    "publisher": {
      "@type": "Organization",
      "name": "ExampleCorp",
      "logo": {
        "@type": "ImageObject",
        "url": "<txp:site_url />assets/img/amp-publisher-logo.png",
        "width": "320",
        "height": "60"
      }
    },
    "image": {
      "@type": "ImageObject",
      <txp:if_article_image><txp:images limit="1"><txp:smd_if_thumbnail type="amp-696w390h">"url": "<txp:smd_thumbnail type="amp-696w390h" display="url" />",<txp:else />"url": "<txp:site_url />assets/img/amp-article-image-fallback.png",</txp:smd_if_thumbnail></txp:images><txp:else />"url": "<txp:site_url />assets/img/amp-article-image-fallback.png",</txp:if_article_image>
      "width": "696",
      "height": "390"
    }
  }
</script>
~~~

## Integrated vs mixed markup notation

Textpattern and HTML tags can be mixed together to achieve various objectives. While the distinction makes it easier to see the two tag types, it can make for more verbose markup. As you become more famililar with Textpattern tags, you can choose to write markup in a more _integrated_ way, where HTML is defined in Textpattern tag attributes instead of used as separate tags.

A very simple example is one from earlier where the category title was displayed wrapped in HTML `<h2>` tags:

~~~ html
    <h2>
        <txp:category title />
    </h2>
~~~

All textpattern tags may take a `wraptag` attribute which will wrap the dynamic content in the given tag. So you can achieve the same result like this:

~~~ html
    <txp:category title wraptag="h2" />
~~~

Wait, that's 3 characters more to type (excluding spaces) so how can it be better? The answer lies in what happens if the content is empty. In the raw HTML version, if the category tag returned nothing, you are left with an empty `<h2></h2>` on the page. In the integrated version, if there is no content, the wrapped tag is not rendered either.

In this simple example, that's not much of a big deal but this concept can have a big effect in shortening tag structures when things become more complex, as you may not need extra conditional tags.

### Mixed markup example: image and caption

Consider the following block of standard HTML markup, which defines displaying an image as a figure and caption:

~~~ html
<figure>
    <img src="/path/9.jpg">
    <figcaption>content</figcaption>
</figure>
~~~  

That's great, but the reason you're using Textpattern is to automate content output and make things more dynamic. So let's add in some relevant Textpattern tags in a mixed way:

~~~ html
<figure>
    <txp:images id="9">
        <img src="/path/<txp:image_info type="id" /><txp:image_info type="ext" />">
        <figcaption>
            <txp:image_info type="caption" />
        </figcaption>
    </txp:images>
</figure>
~~~

Let's walk through the markup for clarity. Immediately within the HTML `<figure>` tags is a Textpattern [images](/tags/images) container tag:

~~~ html
…
    <txp:images id="9">
        …
    </txp:images>
…
~~~

We need to add this extra tag container to make use of the corresponding [image_info](/tags/image_info) tag functionality. That's the only reason. A lot of Textpattern tags work in relation to one another like that, where a containing parent tag enables certain child tags, or iterates over lists of things.

We first see the `<txp:image_info />` tag used in this line multiple times:

~~~ html
…
    …
        <img src="/path/<txp:image_info type="id" /><txp:image_info type="ext" />">
        …
    …
…
~~~

And again in the block after:

~~~ html
…
    …
        …
        <figcaption>
            <txp:image_info type="caption" />
        </figcaption>
    …
…
~~~

In each instance of `<txp:image_info />`, the tag is pulling a specific data value for the image in context - the one with id 9. The first line returns the image's ID number and file extension. Note there's no `.` added between the ID and extension values because the `ext` value for the `type=""` attribute already includes the required period.

In the second line, `<txp:image_info />` is pulling the image's caption value, which you should _always_ include in the image edit panel area for each image.

While the mixed markup is more functionally dynamic, it's also a bigger block of markup overall because there's no integration of HTML with Textpattern tags. As a frame of reference, the entire block of mixed markup is 182 characters long, not including line-breaks and indentations.

### Integrated markup example: image and caption

Now consider the same functional block of markup above, but this time we _integrate_ HTML into the Textpattern tags where we can. There is no functional difference; it does exactly the same thing as the mixed markup above. It's just written more tightly using the power of Textpattern tag attributes:

~~~ html
<txp:images wraptag="figure">
    <img src="/images/<txp:image_info type="id, ext" />">
    <txp:image_info type="caption" wraptag="figcaption" />
</txp:images>
~~~

Highlighting the key differences:

First, we've removed the image ID attribute from the `<txp:images>` tag. This is not a reflection of integrated notation so much as it's taking advantage of 'article context'. In this case, we can assume the markup block is used in context of an article, and the image ID number has been added to the Article image field for the article in which it's applied. By doing that much, we eliminate having to declare the ID value as an attribute in the `<txp:images>` tag.

Next, which *is* an example of integrated notation, we've added the `wraptag` attribute, which will wrap the entire image in an HTML `<figure>` container. Using this pattern, if there is no image associated with this article, the `<txp:images>` tag will be automatically skipped, and no corresponding `<figure>` wrap will be applied either. So there is no need for a conditional `<txp:if_article_image>` check.

Notice we have also reduced the image file path to a single instance of `<txp:image_info />` by declaring both the image ID and file extension attribute together. You can't do this arbitrarily with all tag attribute parameters, but in this case it is possible, and the shortening result is obvious.

Finally, yet again, we eliminate the explicit use of the HTML `<figcaption>` tags by using Textpattern's presentational `wraptag` attribute in `image_info`. The attribute is one of several global presentational attributes of all Textpattern tags.

The resulting character count of this block of markup, which is functionally identical to the long-form version previously, is 149 characters. Slightly shorter than the mixed markup notation, but with the added benefit of skipping the entire chunk if the image is missing, compared with leaving bits of empty markup in the mixed method. Either way, it's definitely longer than the full HTML version, but that's the price for having dynamic functionality. More signficant gains can be made in more complicated structures.

## Reduce typing with short-tags

Beginning with Textpattern 4.7.0, you can use short tags and shortcut attribute notation to reduce the amount of typing involved when writing Textpattern tags.

To benefit from this facility, you must enable the short-tag functionality in the Preferences panel. It is switched on by default, but is worth checking before you delve any further into this section. The reason it is governed by a setting is because its use introduces a *tiny* performance penalty. Nothing usually worth bothering about - on the order of microseconds due to significant parser optimisations - but if you have very complex page template demands or a limited capacity hosting environment and wish to squeeze every ounce of performance from Textpattern's lean framework, you may wish to disable this feature.

### Short-tag structure

First let's review some Textpattern tag basics, which includes how plugin tags are used too. Textpattern tag names can be single words (i.e. `name`), or compound names with underscores (i.e. `compound_name`). Tags can also be either [self-closing or container tags](#anatomy-of-a-tag).

Short-tag structure only concerns tags (including plugin tags) with compound names, whether self-closing or used as containers.

**Here's the general rule:**
If short-tags are enabled and the tag has a compound name, you can:

1. Remove the `txp:` prefix.
2. Swap the first instance of underscore with double colon `::`.

Thus, a self-closing tag like `<txp:article_id />` becomes `<article::id />`.

Container tags like:

~~~ html
<txp:if_article_id>
    …
<txp:else />
    …
</txp:if_article_id>
~~~

Become:

~~~ html
<if::article_id>
    …
<txp:else />
    …
</if::article_id>
~~~

The same applies to plugin tags. For example this one:

~~~ html
<txp:smd_if>
    …
<txp:else />
    …
</txp:smd_if>
~~~

Becomes:

~~~ html
<smd::if>
    …
<smd::else />
    …
</smd::if>
~~~

Note in the latter example, the plugin prefix can be used for the `else` tag, which is only relevant to plugin tags used as containers.

### Using valueless attributes to reduce typing

Tags interpret attributes without any given value in a special way. You can shortcut 'boolean' (1 or 0) attributes just like you can in HTML. So these two tags are equivalent:

~~~ html
<txp:section link="1" />
<txp:section link />
~~~

Suppose you need to display something if `<txp:variable name="test" />` contains any information, i.e. is not empty. Before Textpattern 4.7.0, you would do it this way:

~~~ html
<txp:if_variable name="test" value="">
<txp:else />
    display something if variable has content
</txp:if_variable>
~~~

From Textpattern 4.7.0, this is more straightforward:

~~~ html
<txp:if_variable name="test" value>
    display something if variable has content
</txp:if_variable>
~~~

In this case, the valueless `value` attribute is interpreted as "some not empty value". For other tags, the meaning of valueless attributes may be different. Generally, they are interpreted in the most "natural" or "useful" way, as above. Plugin developers wishing to treat valueless attributes should just note that internally their parsed value is the Boolean `true`.

### Shortening tag constructs using negation

Also from Textpattern 4.7.0, is the ability to negate a tag using `not`.

~~~ html
<txp:if_section not name="contact, articles">
    <!-- Do something if we're not in the contact or articles section -->
</txp:if_section>
~~~

You may use one of the following methods to test if a variable contains no value:

~~~ html
<txp:if_variable name="test" value="">
    display something if variable is empty
</txp:if_variable>
~~~

~~~ html
<txp:if_variable name="test" not value>
    display something if variable is empty
</txp:if_variable>
~~~

Using `not` negates the result of the entire tag including any combination of attributes it may have. It does not negate individual attributes. This feature also extends to all plugins, natively without any need to do anything by the plugin author.

### Custom short-tags: shortcodes

When [short-tags are enabled](#reduce-typing-with-short-tags) is enabled, you can also generate custom short-tags by creating specific reusable Form templates, which we dub “shortcodes”. You can use any Form type when creating a shortcode form.

A shortcode is like any other partial of code you may develop in a Textpattern Form, but it's designed with the intention of using in relation to an associated custom short-tag. This new functionality is similar in concept to the smd_macro or rah_beacon plugins, both of which are now obsolete against this new custom short-tags/shortcode functionality.

The one difference between the core short-tags and custom short-tags is in relation to the `<txp:output_form>` tag. Whenever you create a Textpattern Form intended as a shortcode form, it automatically makes a custom short-tag available having the same name as the form.

Taking the earlier [image with caption](#integrated-markup-example-image-and-caption) example, a shortcode form might be designed to output the image wrapped up nicely as an HTML `figure`. You might even name the Form, _figure_, if you never needed another type of figure shortcode form. By doing that, you now have a custom short-tag available for use as:

~~~ html
<txp::figure />
~~~

Note the double colon: that's important!

If you named your shortcode Form, _image_figure_, the tag would be usable as:

~~~ html
<txp::image_figure />
~~~

And so on.

Whether or not you opt to disable short-tag functionality in the Preferences panel, you can still use the shortcode Form. This is also true if its name is not purely alphanumeric. In either case, proceed via an `output_form` tag like this:

~~~ html
<txp:output_form form="image_figure" />
<txp:output_form form="my figure" />
~~~

### Using the yield attribute

If needed, the attributes can be defined explicitly in the tag as values of the `yield` attribute:

~~~ html
<txp::figure yield="id, caption" />
~~~

Note that omitting the `class` and `wraptag` attributes in the following example means they will be considered as global attributes and processed accordingly:

~~~ html
<txp::figure yield="id, caption" id="123" wraptag="div" class="picture" />
~~~

The key to creating shortcode Forms is using the Textpattern tags `yield`, `if_yield`, and in relation to the latter, `else`.

The `yield` tag is used to create attributes to process inside your custom tag: `<txp:yield name="your-attribute" />` Add the `default` attribute to it if you want to set a default value in case the attribute is not passed into your form.

The `if_yield` container tag (and the `else` tag) can be used to determine if the attribute has been supplied:

~~~ html
<txp:if_yield name="your-attribute"> … </txp:if_yield>
~~~

That's it!

## The parser and its passes

The Textpattern parser is the workhorse that converts the `<txp:...>` tags into dynamic content when the page is rendered. At heart, it is a linear parser, meaning it goes through your Page template and Forms line by line, tag by tag, the outside tags recursively calling the inside ones.

If you have relatively simple page templates it can do this in one sweep - what we refer to as a *pass*. For more complicated uses - such as in the presence of some tag dependencies - the parser may need more than one pass to convert all tags. It keeps going back over the document as many times as needed to convert all tags, and then renders the final result to the site visitor. Each time it goes over the page, it increase the pass counter by 1: pass 1, pass 2, pass 3, and so on.

Let's take a simple example of a tag that only requires a single pass:

```
<txp:article />
…
<txp:link_to_next>Next article</txp:link_to_next>
```

Upon encountering the second tag, the parser has all the information it needs to fetch the next article, process and replace the `<txp:link_to_next />` tag with the contents ready for display.

### Deferred or delayed output

Now, let's take this a step further. Say you wanted the link to the next article to be displayed _above_ the article:

```
<txp:link_to_next>Next article</txp:link_to_next>
...
<txp:article />
```

This might throw a warning because you are trying to display a link to the next article before Textpattern knows which is the current article.

The parser's multiple passes can be used to your advantage to definitively defer processing until a particular pass is reached. This allows you to control at what stage information is fetched, allowing you to process tags that appear earlier in the page at a later stage.

The `<txp:hide />` tag is used to hide its content from the parser so you can put comments in your templates without fear of them appearing in the rendered output to the visitor. But it has a `process` attribute that allows you to control how 'hidden' the content actually is.

If you supply an integer to the `process` attribute, the content will only be executed when that nominated pass is reached:

```
<txp:hide process="2">
   <txp:link_to_next>Next article</txp:link_to_next>
</txp:hide>
...
<txp:article />
```

After the first pass, the `<txp:article>` tag will have been established so Textpattern knows which article this is. Thus on the second pass, the previously hidden content can safely be executed and the link rendered on the screen _above_ the article content, even though the content was determined afterwards.

Actually, `<txp:link_to_next />` tag "knows" it needs the current article data, so it automatically postpones itself to the next pass if these data are not yet available. Hence you don't need to manually "hide" it in _this_ case, but altering the parsing order might be necessary in more complex structures.

## Options, options… What do I do?

With what's been discussed, it may seem you must learn more advanced ways of working with Textpattern tags. That's not true. There is no right or wrong way, only the way that makes it easier for you to understand. There's nothing wrong with writing mixed markup if that's what makes sense.

The natural tendency for people is to start with a mixed markup approach, then tighten up the their markup over time by leaning more on Textpattern tags. The result is often less markup overall. This can help offset the additional markup from plugin tags, when such functionality is used.

But that's not a given. Sometimes more characters are needed to get really sophisticated things done — real Textpattern wizardry. So take the integrated advantages with a grain of salt.

More important than character count is your understanding of the resulting markup — or that of your client's, if you're building a website and handing it over to a different administrator — regardless of how markup is written. As long as the markup separates content from static constructs and you (or the client) understands it, you're doing well.

In summary, mixed markup is generally easier for new Textpattern users to grasp, until they've become more familiar with the scope of Textpattern tag functionality. Advanced users of Textpattern generally prefer the integrated notation because it saves character space and often delivers more powerful constructs with fewer conditionals. But it doesn't matter either way, as long as the markup is constructed correctly in relation to how Textpattern functions.

## Tags reference index

Now you know all there is to know about tags, attributes, the parser, context and how these components interact, you can dive into the [complete tag reference](/tags) to discover the many tags that Textpattern offers to help take dynamic content from your database and display it to site visitors.

Each tag document indicates:

* The type of tag it is (single, container, or conditional).
* A description of what it does.
* A list of attributes it accepts, and their default values.
* A list of common presentational attributes the tag accepts, that usually function the same, regardless of tag.
* Examples of how the tag is used in context, sometimes in tandem with other tags that are linked for quick navigation.
* A genealogy of the tag so its development history and capabilities can be discovered.

If you simply wish to know which attributes are used by which tags, the [attribute cross-reference](/tags/tag-attributes-cross-reference) lists all attributes in alphabetical order so you can find specific tags that use particular attributes.

Now go and unlock the power of Textpattern's tags to build something awesome for your website visitors!
