---
layout: document
category: tag-basics
published: true
title: "Textpattern conditional tags"
tags:
  - Conditional tags
---

# Conditional tags

[Container tags](self-closed-versus-container-tags) in Textpattern are great for making lists and you use **conditional tags** to get there.

In Textpattern your visitors are in one of two *views_; either an **individual** (article) view or a **list** view. You don't need to worry about managing which is which, because Textpattern takes care of that for you, but you can decide what action you are going to take when a visitor views your site in either state.

## Displaying category lists

When you show visitors an article, you can opt to make the categories to which it belongs hyperlinkable. If a visitor clicks one of these links, they are taken to a category list showing other articles in the same category. Textpattern automatically switches from *individual article* mode to *list* mode; the magic behind how the content changes on-screen is fairly simple with containers and conditionals.

On your default article page you might see something like this:

~~~ html
<txp:if_category>
    <h2>
        <txp:category title="1" />
    </h2>
    <txp:article limit="5" wraptag="div">
        <h3>
            <txp:permlink>
                <txp:title />
            </txp:permlink>
        </h3>
        <txp:excerpt />
    </txp:article>
<txp:else />
    <txp:article wraptag="div" />
</txp:if_category>
~~~

Taking this block by block we see that the conditional [if_category"](../if_category) determines if the visitor has clicked a category hyperlink. If they have, we are in the **list** view. If they have not, the [else](../else) portion is executed.

In this example, the [article](article) in the *else* portion is treated as an individual article, by virtue of it not being a category list. In more complex pages it may be part of a larger nested structure and therefore could be a different type of list (e.g. search results), but for now we'll take it at face value and assume it is an individual article.

Since the only attribute in use in this `<txp:article />` tag is `wraptag`, the tag will use the *default* form to render the article, and wrap the entire contents in HTML `<div>` tags. If you had specified your own `form` attribute, the article contents would be rendered by your chosen form instead.

The interesting part is if the visitor is viewing a list. In this case, the first thing that happens is to display the [category](../category) title inside HTML `<h2>` tags.

Next, we call the standard article tag but instead of using the **default** form to render its contents, we use the tag as a container.

Since we are in a **list** view we have told the article tag to `limit` its output and only show a maximum of 5 articles per page. Again, we are wrapping the article list in HTML `<div` tags.

The tags inside the *article* container dictate how we will render each article in the list. In this example, we will show each article's title wrapped in `<h3>` tags, permalinked to its individual article contents. Beneath each title is the corresponding article's excerpt.

In just a few simple tags you have automatically rendered a list of articles. The tags have:

# Determined if the visitor is browsing a category list or not.
# Displayed a list of 5 article titles and excerpts if they are.
# Displayed a single article if they are viewing an individual article.

That is the fundamental building block of how container and conditional tags can make building lists of things easy.

One thing to note: containers are great for simple content like this but if you find yourself repeating the same contained content over and over in a @@page@@ or across a series of pages, you can make it easier on yourself by using a @@form@@ instead. You then just write the container content once and use the `form="my-contained-stuff"` attribute in self-closing [article](article) tags to use it.
