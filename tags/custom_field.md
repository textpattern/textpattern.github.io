---
layout: document
category: Tags
published: true
title: Custom field
description: The custom_field tag is used to display the contents of a custom field.
tags:
  - Article tags
---

# Custom field

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:custom_field />
~~~

The **custom_field** tag is a *single* tag and used to display the contents of a custom field.

Custom fields are useful when you need to output content having a consistent structure, usually in context to a particular type of article. Custom fields are defined in the [Preferences panel](/administration/preferences-panel), and used in the [Write panel](/administration/write-panel). There are conditions to be aware of in each case, so be sure to read the following sections, respectively:

1. [Defining custom fields](/administration/preferences-panel#custom-fields-preferences)
2. @@Adding custom field data@@

Also see the [if_custom_field](/tags/if_custom_field) conditional tag, which provides more flexibility and power using custom fields.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`default="value"`
: Default value to use when field is empty.

`escape="html"`
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&` prior to echoing the field contents.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`name="fieldname"`
: Display specified custom field.

## Examples

### Example 1: Book reviews

You might, for example, publish book reviews (for which you add the author, the title of the book, the publishing company and the year of publication), with:

1. a custom field named `Book_Author` containing `J.R.R. Tolkien`,
2. a custom field named `Book_Title` containing `The Lord of the Rings`,
3. a custom field named `Book_Publisher` containing `HarperCollins`,
4. a custom field named `Book_Year` containing `2004`.

and an 'article' type form like the following:

~~~ html
<p>
    <txp:custom_field name="Book_Author" />: <txp:custom_field name="Book_Title" /><br>
    Published by <txp:custom_field name="Book_Publisher" /> in <txp:custom_field name="Book_Year" />
</p>
~~~

HTML returned would be:

~~~ html
<p>
    J.R.R. Tolkien: The Lord of the Rings<br>
    Published by HarperCollins in 2004.
</p>
~~~

### Example 2: Power A linklog

With an article title of `Textpattern`, an excerpt of `Textpattern is awesome!`, a custom field named `link` containing `https://textpattern.com/`, and an 'article' type form like the following:

~~~ html
<article class="linklog-entry">
    <h1>
        <a href="<txp:custom_field name="Link" />"><txp:title /></a>
    </h1>
    <p>
        <time datetime="<txp:posted format="iso8601" />" itemprop="datePublished">
            <txp:posted format="%d %d %Y" />
        </time>
    </p>
    <txp:excerpt />
</article>
~~~

HTML returned would be:

~~~ html
<article class="linklog-entry">
    <h1>
        <a href="https://textpattern.com/">Textpattern</a>
    </h1>
    <p>
        <time datetime="2005-08-14T15:08:12Z" itemprop="datePublished">14 Aug 2005</time>
    </p>
    <p>Textpattern is awesome!</p>
</article>
~~~

Other tags used: [title](/tags/title), [posted](/tags/posted), [excerpt](/tags/excerpt).

### Example 3: Unescaping HTML output

With a custom field named `foo` containing:

~~~ html
<a href="../here/">
~~~

using the following:

~~~ html
<txp:custom_field name="foo" />
~~~

will return this hunk of HTML:

~~~ html
&#60;a href=&#34;../here/&#34;&#62;
~~~

whereas using:

~~~ html
<txp:custom_field name="foo" escape="" />
~~~

will render the URL as you'd expect, exactly as written in the custom field itself. Thus, it will be rendered as a link by the browser.
