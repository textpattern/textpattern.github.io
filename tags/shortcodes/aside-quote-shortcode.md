---
layout: document
category: Shortcodes
published: true
title: Aside-quote shortcode
description: A flexible shortcode and short-tag combo to add quotations as asides in your articles, which pull data from Textpattern links.
---

# Aside-quote shortcode

A flexible shortcode and short-tag combo to add various quotations as asides in your articles, which pull data from Textpattern links.

**Contents**

* Table of contents
{:toc}

## Scenario

As the W3C recommendation for the [`aside` element](https://www.w3.org/TR/html52/sections.html#the-aside-element) says:

> The element can be used for typographical effects like **pull quotes** or sidebars, for advertising, for groups of nav elements, and for other content that is considered separate from the main content **of the nearest ancestor sectioning content**.

The bold is used here to emphasize how this shortcode was conceived for use, as a quoted element off to the side in a long-form article structure, where the nearest ancestor sectioning content is a section chapter in the article. However, you can use and modify this shortcode any way you want.

In this case, the following article structure was in mind, where an `aside` is an offspring of a given `section` it relates with:

~~~ html
<article>
	<header>
		<h1>Hed</h1>
		<h2>Dek</h2>
		<p class=“publine”> …
	<header>
	<section class="chapter"> … </section>
	<section class="chapter">
		<p>…
		<aside> … </aside>
		<p>…
	</section>
	<section class="chapter"> … </section>
</article>
~~~

(Note: Closing `p` tags are not obligatory in HTML 5.)

The `aside` block itself is structured similar to what the W3C specification recommends for pullquotes, but with a variation — an additional `p` element to include additional information about source of quote:

~~~ html
<aside class="">
	<q> … </q>
	<p class=""><span>Name</span> <span>Title</span>
</aside>
~~~

The `p` addition is made here because this shortcode is _not_ a pullquote. The quotes are indeed relevant to the main content, but **they do not come from the main content**, they come from external sources and are used in relation to the content as relevant asides.

Thus the name of this shortcode: “aside-quote”. Or if you like, “linkquote”, because the quoted content and related source information will be structured as a Textpattern link.

## Shortcode to use

Create a new Form of type _Miscellaneous_ called **linkquote**, paste the following markup into it, and Save the form:

~~~ html
<txp:hide>  ASIDE-QUOTE SHORT-TAG
    Use this in an article as:
    <txp::linkquote />

    Attributes are:
    id=""
    class="" (on <aside> element)
    name=""
</txp:hide>

<aside<txp:if_yield name="class"> class="<txp:yield name="class" />"</txp:if_yield>>
    <txp:linklist id='<txp:yield name="id" />'>
        <q><txp:link_description escape="tidy,textile,ltrim" /></q>
        <p class="sig"><txp:if_yield name="name"><txp:yield name="name" /><txp:else /></txp:if_yield><span class="sourcelink"><a href="<txp:link_url />"><txp:link /></a></span></p>
    </txp:linklist>
</aside>
~~~

You can remove the top comment hidden with `<txp:hide> … </txp:hide>` if you want to, but it’s useful as a reminder about how to use the associated short-tag when needed.

## Short-tag and attributes

Following how [custom short-tags and shortcodes](/tags/shortcodes/custom-short-tags-and-shortcodes) work, the associated short-tag for use is:

~~~ html
<txp::linkquote />
~~~

There are three attributes defined:

* Required: `id=""` (the ID number of the link used)
* Optional: `name=""` (a name of your choosing if needed)
* Optional: `class=""` (CSS selector used on the `aside` element; idea here is to set different float directions and widths as desired)

## Links setup

The shortcode was conceived to be flexible enough for adding various types of quotations, or, rather, from various sources. The idea is they are not directly part of the main content, or else they would be more appropriate as blockquotes, not asides.

The only similarity with pullquotes, perhaps, is how you might style them to appear; floating left or right in relation to surrounding content. But there is no rule that asides styled this way _have_ to be “pullquotes” by definition. Pullquotes are stupidly redundant, in fact. Aside-quotes, as described here, are where it’s at!

The process is described using Tweets, but as long as whatever you’re quoting can be structured as a Textpattern link, the sky’s the limit — other social media posts, blog comments, platform bios, taglines, those reviewer quotes you find at the front of books, and so forth.

### Tweet links

Tweets are essentially short quotations from people that can be brought into context of a story as asides without being part of the main text. And by adding links purely with Textpattern, you’re not poisoning your site with Twitter code injections and tracking BS.

Create the link categories:

1. In the [Categories panel](/administration/categories-panel), create a new link category called “Asides”. This will become the parent category for all types of aside-quote links.
2. Create a second link category called “Tweets” and assign the “Asides” category as the parent.

Create the Tweet links:

In the [Links panel](/administration/links-panel), create your Tweets using this association to the Textpattern link fields:

<div class="tabular-data" tabindex="0" aria-labelledby="table1-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table1-caption" itemprop="about">Link field values.</caption>
        <thead>
            <tr>
                <th class="t25" scope="col">Link field</th>
                <th scope="col">Tweet element</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">Title</th>
                <td>Date of Tweet (e.g. ‘23 August 2009’)</td>
            </tr>
            <tr>
                <th scope="row">Sort value</th>
                <td>Leave blank</td>
            </tr>
            <tr>
                <th scope="row">URL</th>
                <td>Link to Tweet</td>
            </tr>
            <tr>
                <th scope="row">Category</th>
                <td>Select ‘Tweets’</td>
            </tr>
            <tr>
                <th scope="row">Description</th>
                <td>The actual Tweet text</td>
            </tr>
        </tbody>
    </table>
</div>

## Usage

Now you’re all set to add Tweets (in this case) as aside-quotes in your articles.

Open your article draft in the Write panel, and use the short-tag between two paragraphs, where desired, as follows:

~~~ html
…end of a paragraph.

<txp::linkquote id=“19” name="Drunk Hulk" class="xxl" />

Start of new paragraph…
~~~

The above hypothetical tag might output a Tweet as follows, depending on how you style everything:

>”Hulk **SMASHED!**”
>
>Drunk Hulk [23 August 2009](#)

**Attention:** See notes in [Core short-tags](/tags/tag-basics/core-short-tags) about the correct tag to use if the core short-tag preference is disabled in the Preferences panel.

## Notes and explainers

The `escape="tidy,textile,ltrim"` attribute used in the link description tag allows using Textile formatting in your link descriptions (notably the `tidy,textile` values). For example, to get the bold formatting on the word “SMASHED,” as depicted above, the description could be written as `Hulk *SMASHED!*` Or you could write it with a Textile span like this, `Hulk %(impact)smashed!%`, then style the CSS rule for `.impact` using a text transform for uppercase, and a niftier typeface for extra visual _oomph_. (The `ltrim` attribute value clips white characters left. You may not need this. See [Tag escaping](/tags/learning/#tag-escaping) doc to learn about all `escape=“”` attribute uses.)

The `p` element and it’s two `span` children enable styling the name and date output however you want, together or separately. For example, you could use pseudo rules to add punctuation around the name: `– Drunk Hulk,`. Or use `display:block;` on the `span` elements to put the date under the name instead of using punctuation. Note there is also a hard `class="sig"` set on the `p` element, but you can remove or change that as desired in your own shortcode form.

By writing in a value for the `name=""` attribute, you can choose to use a person’s twitter name, like in this case: “Drunk Hulk”. Or their Tweet handle: “@drunkhulk”. Or leave out the dumb `@` symbol: “drunkhulk”. Or anything else you want, which makes this attribute flexible for other quote source types besides Tweets.

Because the `name=""` attribute is optional, no name will appear under the quoted Tweet if you leave it out of the short-tag. The date will still appear as a link to the actual Tweet location because that’s hard-coded in the shortcode (unless you modify it).

The `class=""` attribute can take multiple values, as you would expect (e.g. `class="value1 value2 etc"`).

Of course, you can modify this shortcode to any other need you want to create. Have fun.

## The shortcode using core short-tags

The shortcode above was described using regular Textpattern tags. But you could, for kicks, rewrite the shortcode using [core short-tags](/tags/tag-basics/core-short-tags). In other words, this would also work:

~~~ html
<aside<if::yield name="class"> class="<txp:yield name="class" />"</if::yield>>
    <txp:linklist id='<txp:yield name="id" />'>
        <q><link::description escape="tidy,textile,ltrim" /></q>
        <p class="sig"><if::yield name="name"><txp:yield name="name" /><txp:else /></if::yield><span class="sourcelink"><a href="<link::url />"><txp:link /></a></span></p>
    </txp:linklist>
</aside>
~~~

Where:

* `txp:if_yield` becomes `if::yield`
* `txp:link_description` becomes `link::description`
* `txp:link_url` becomes `link::url`

The only advantage to that in this particular shortcode is a savings of **10 characters**. Other shortcodes may be different.

Also, it only works if the short-tags feature is enabled in the **Site preferences** under the [Preferences panel](/administration/preferences-panel#site-preferences). So if you have that preference disabled, don’t use this version of the shortcode.

## The shortcode using tag integration concept

As described in the [Integrated tag notation](/tags/tag-basics/integrated-tag-notation) doc, you can even use the concept of markup _integration_ (making the HTML as global Textpattern tag attributes) to reduce overall markup volume of the shortcode.

For example, the following is yet another way to build the aside-quote form:

~~~ html
<txp:linklist id='<txp:yield name="id" />'>
    <q><txp:link_description escape="tidy, textile" /></q>
    <p class="sig"><txp:yield name="name" /><span class="sourcelink"><a href="<txp:link_url />"><txp:link /></a></span></p>
</txp:linklist>
~~~

(Note we’re not using core short-tags in this case, as described previously, but you could just as readily.)

That block of markup is fewer characters overall. In this case we’ve used a different combination of Textpattern tags to target the data values we want from the links, notably the `linklist` container tag, and we’ve removed the wrapping `aside` tags (HTML tags).

But we need those wrapping HTML tags, so we need to use the concept of markup integration on the associated output tag to define the HTML as a global attribute (i.e. `wraptag="aside"`):

~~~ html
<txp::linkquote id="" name="" wraptag="aside" class="" />
~~~

One advantage of this shortcode/tag variation: if you forget to add a link ID, or add one that doesn’t exist by accident, no output will occur at all, not even an empty `aside` container, which is what you’d get with earlier examples. 

Of course, you should always verify your front-end result whenever adding output tags like this, and there would never be an issue. You’d see the problem and fix it.

In summary, we’ve made a trade-off this this version of the shortcode. There’s less markup in the shortcode, but:

* there’s more markup in your article due to the longer short-tag (maybe more of an eye-sore too)
* the short-tag is maybe harder to remember, and
* there’s a hit on PHP processing due to integrating the markup as a global HTML attribute.

Whether that is easier to grasp than earlier examples is subjective to the individual. And if you’re working on a collaborative site, you have even more opinions to take into account.

Options are good.
