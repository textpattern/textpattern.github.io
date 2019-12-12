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

That’s great, but the reason you're using Textpattern is to automate content output and make things more dynamic. So let’s add in some relevant Textpattern tags in a mixed way:

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

Let’s walk through the markup for clarity. Immediately within the HTML `<figure>` tags is a Textpattern [images](/tags/images) container tag:

~~~ html
…
    <txp:images id="9">
        …
    </txp:images>
…
~~~

We need to add this extra tag container to make use of the corresponding [image_info](/tags/image_info) tag functionality. That’s the only reason. A lot of Textpattern tags work in relation to one another like that, where a containing parent tag enables certain child tags, or iterates over lists of things.

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

In each instance of `<txp:image_info />`, the tag is pulling a specific data value for the image in context - the one with id 9. The first line returns the image’s ID number and file extension. Note there’s no `.` added between the ID and extension values because the `ext` value for the `type=""` attribute already includes the required period.

In the second line, `<txp:image_info />` is pulling the image’s caption value, which you should _always_ include in the image edit panel area for each image.

While the mixed markup is more functionally dynamic, it’s also a bigger block of markup overall because there’s no integration of HTML with Textpattern tags. As a frame of reference, the entire block of mixed markup is 182 characters long, not including line-breaks and indentations.  

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

Finally, yet again, we eliminate the explicit use of the HTML `<figcaption>` tags by using Textpattern’s presentational `wraptag` attribute in `image_info`. The attribute is one of several global presentational attributes of all Textpattern tags.

The resulting character count of this block of markup, which is functionally identical to the long-form version previously, is 149 characters. Slightly shorter than the mixed markup notation, but with the added benefit of skipping the entire chunk if the image is missing, compared with leaving bits of empty markup in the mixed method. Either way, it’s definitely longer than the full HTML version, but that's the price for having dynamic functionality. More signficant gains can be made in more complicated structures.

## Reduce typing with short-tags

Beginning with Textpattern 4.7.0, you can use short tags and shortcut attribute notation to reduce the amount of typing involved when writing Textpattern tags.

To benefit from this facility, you must enable the short-tag functionality in the Preferences panel. It is switched on by default, but is worth checking before you delve any further into this section. The reason it is governed by a setting is because its use introduces a *tiny* performance penalty. Nothing usually worth bothering about - on the order of microseconds due to significant parser optimisations - but if you have very complex page template demands or a limited capacity hosting environment and wish to squeeze every ounce of performance from Textpattern's lean framework, you may wish to disable this feature.

### Short-tag structure

First let’s review some Textpattern tag basics, which includes how plugin tags are used too. Textpattern tag names can be single words (i.e. `name`), or compound names with underscores (i.e. `compound_name`). Tags can also be either [self-closing or container tags](#the-types-of-tag).

Short-tag structure only concerns tags (including plugin tags) with compound names, whether self-closing or used as containers.

**Here’s the general rule:**
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

### Shortening tag attributes

You can also shortcut 'boolean' (1 or 0) attributes just like you can in HTML. So these two tags are equivalent:

~~~ html
<txp:section link="1" />
<txp:section link />
~~~

### Shortening tag constructs using negation

Also from Textpattern 4.7.0, is the ability to negate a tag using `not`.

~~~ html
<txp:if_section not name="contact, articles">
    <!-- Do something if we're not in the contact or articles section -->
</txp:if_section>
~~~

Using `not` negates the result of the entire tag including any combination of attributes it may have. It does not negate individual attributes. This feature also extends to all plugins, natively without any need to do anything by the plugin author.

### Custom short-tags: shortcodes

When [short-tags are enabled](#reduce-typing-with-short-tags) is enabled, you can also generate custom short-tags by creating specific reusable Form templates, which we dub “shortcodes”. You can use any Form type when creating a shortcode form.

A shortcode is like any other partial of code you may develop in a Textpattern Form, but it’s designed with the intention of using in relation to an associated custom short-tag. This new functionality is similar in concept to the smd_macro or rah_beacon plugins, both of which are now obsolete against this new custom short-tags/shortcode functionality. 

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

The `yield` tag is used to create attributes to process inside  your custom tag: `<txp:yield name="your-attribute" />` Add the `default` attribute to it if you want to set a default value in case the attribute is not passed into your form.

The `if_yield` container tag (and the `else` tag) can be used to determine if the attribute has been supplied:

~~~ html
<txp:if_yield name="your-attribute"> … </txp:if_yield>
~~~

That’s it!

## Options, options… What do I do?

With what's been discussed so far, it may seem you must learn more advanced ways of working with Textpattern tags. That’s not true. There is no right or wrong way, only the way that makes it easier for you to understand. There’s nothing wrong with writing mixed markup if that’s what makes sense.

The natural tendency for people is to start with a mixed markup approach, then tighten up the their markup over time by leaning more on Textpattern tags. The result is often less markup overall. This can help offset the additional markup from plugin tags, when such functionality is used.

But that’s not a given. Sometimes more characters are needed to get really sophisticated things done — real Textpattern wizardry. So take the integrated advantages with a grain of salt.

More important than character count is your understanding of the resulting markup — or that of your client's, if you're building a website and handing it over to a different administrator — regardless of how markup is written. As long as the markup separates content from static constructs and you (or the client) understands it, you're doing well.

In summary, mixed markup is generally easier for new Textpattern users to grasp, until they've become more familiar with the scope of Textpattern tag functionality. Advanced users of Textpattern generally prefer the integrated notation because it saves character space and often delivers more powerful constructs with fewer conditionals. But it doesn't matter either way, as long as the markup is constructed correctly in relation to how Textpattern functions.

TODO:


3. [Tag nesting](/tags/tag-basics/tag-nesting)
4. [Parsing tag attributes](/tags/tag-basics/parsing-tag-attributes)
5. [Parser and passes](/tags/tag-basics/parser-and-passes)
6. [Incorrect tag contexts](/tags/tag-basics/incorrect-tag-contexts)
8. [Tag escaping](/tags/tag-basics/tag-escaping)
