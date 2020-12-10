---
layout: document
category: Tag basics
published: true
title: Parsing tag attributes
description: Most Textpattern tags allow you to specify attributes as key/value pairs to override default behaviour.
---

# Parsing tag attributes

**Contents**

* Table of contents
{:toc}

## Conventions for attributes

Most Textpattern tags allow you to specify attributes as key/value pairs to override default behaviour. For example:

~~~ html
<txp:tag key="value" />
~~~

~~~ html
<txp:category type="image" title="1" />
~~~

Usage of attributes in Textpattern tags is similar to attributes in HTML.

A few important rules to remember:

* Attribute values must always be delimited by double (or single) quotes. Single quotes have special meaning, so use double quotes by default.
* Attribute keys must be lowercase.
* For plugin developers: attribute keys can consist of the letters 'a' through 'z', and underscore (not as the first or last character).

## Attribute value escaping

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

For a human, it's easy to understand how this was intended, but for Textpattern the attribute value ends at the double quote before 'good'. The remainder of the attribute value makes it an incorrectly formatted tag (causing to show up as-is in the resulting HTML code).

If single quotes didn't have special meaning, one would solve this by using single quotes to delimit the attribute value:

~~~ html
<txp:tag key='reward for "good" behaviour' />
~~~

While this works as intended, it doesn't account for attribute values containing both single and double quotes.

Since Textpattern 4.0.7, duplicate delimiter characters used as part of an attribute value are interpreted as a literal character instead of delimiters. For example:

~~~ html
<txp:tag key="reward for ""good"" behaviour" />
~~~

~~~ html
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

## Parsed attribute values

In most cases, you want attribute values to be treated as just a string of text, but there are situations where it can be useful to let Textpattern parse the attribute value itself.

Double quoted attribute values are not parsed, so if your attribute value contains a value that looks like a tag, but should be treated as literal text, you must always use double quotes. In fact, you should use double quotes to delimit attribute values at all times, unless you want the attribute value parsed. The reason for this is simple: speed. Parsing an attribute value is slower than treating it as plain text.

What does all this mean? Here are some examples, starting with attribute values that are not parsed:

~~~ html
<txp:tag key="plain text" />
~~~

~~~ html
<txp:tag key="literal <txp:tag />" />
~~~

In the above examples, the attribute are treated as plain text; the literal tag is not parsed. If you wanted the tag in the attribute value to be parsed and return the actual result of the tag, you should write it like this:

~~~ html
<txp:tag key='parsed <txp:tag />' />
~~~

## Parsing tags example

Using an article that has a custom field named 'email' containing an email address `me@example.com` and a custom field 'name' containing 'Donald Swain':

~~~ html
<txp:email
    email='<txp:custom_field name="email" />'
    linktext="Send email"
    title='Send email to <txp:custom_field name="name" />'
/>
~~~

Because the single quoted attribute values are parsed, after parsing the attribute values, it looks like this:

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

## Nesting quotes in quotes in…

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

The `file-category` form returns some markup (in this case, just a series of links to the relevant files) which is all assigned to the **value** of the [variable](/tags/variable) named 'file-count'.

The upshot is that this variable can be tested with [if_variable](/tags/if_variable) to see if it contains anything at all and - if it does, the file list can be displayed. Conversely, if there are no files for that language then the [else](/tags/else) part of the conditional statement is displayed.

## Valueless attributes (since 4.7.0)

Tags interpret attributes without any value set in a special way. For example, suppose that you need to display something if `<txp:variable name="test" />` contains any information, i.e. is not empty. Before Textpattern 4.7.0, you would do it this way:

~~~ html
<txp:if_variable name="test" value="">
<txp:else />
    display something if variable has content
</txp:if_variable>
~~~

Starting with 4.7.0 this is more straightforward:

~~~ html
<txp:if_variable name="test" value>
    display something if variable has content
</txp:if_variable>
~~~

In this case, the valueless `value` attribute is interpreted as "some not empty value". For other tags, the meaning of valueless attributes may be different. Generally, they are interpreted in the most "natural" or "useful" way, as above. Plugin developers wishing to treat valueless attributes should just note that internally their parsed value is the Boolean `true`.

Additionally, there are now two ways to establish if something is _not set_:

~~~ html
<txp:if_variable name="test" value="">
    display something if variable is empty
</txp:if_variable>
~~~

or using the new `not` attribute:

~~~ html
<txp:if_variable name="test" not value>
    display something if variable is empty
</txp:if_variable>
~~~

## Global attributes (since 4.7.0)

Starting with 4.7.0 some of commonly-used attributes are _global_: they are available to _any_ (core or plugin) tag. It is important to know that global attributes can not intervene in tags internal processing and are applied only to the tags _output_. For example,

~~~ html
<txp:variable name="test" value="   " />

<txp:if_variable name="test" trim value>
    there is something to test
<txp:else />
    the variable is blank
</txp:if_variable>
~~~

will not work as one would expect, because the global `trim` will be applied to `<txp:if_variable name="test" value />` output, which is (since `"   "` is not empty)
```

    there is something to test

```

and finally give `there is something to test` with surrounding space trimmed out.

Note that if a tag already _has_ an attribute with the same name as a global one, the tags _own_ attribute will be processed and the global one will be discarded.

### Global attributes list (all unset by default)

`default="value"`
: The value to display if the tags output is blank.
: **Values:** any.

`escape="list, of, transforms"`
: The transforms to apply to the output.
: **Values:** `html, js, json, url, float, integer, number, ordinal, spell, lower, upper, title, [r|l]trim, quote, tags, textile`.

`trim="string|regex"`
: Remove the matching patterns from the output.
: **Values:** any.

`replace="string"`
: Replace the patterns matching `trim`.
: **Values:** any.

`not="boolean"`
: Switch `<txp:else />` parts.
: **Values:** `0` (no) or `1` (yes).

`label="string"`
: The label to display before the output.
: **Values:** any.

`labeltag="tag"`
: The tag to wrap the label.
: **Values:** HTML tag.

`wraptag="tag or pattern"`
: The tag to wrap the output.
: **Values:** HTML tag or a string containing `<+>` pattern that will be replaced by the output.

`wrapform="form name"`
: The form to be used as `wraptag`. Handy if `wraptag` pattern is too long or reusable.
: **Values:** HTML tag.

`class, html_id`
: HTML `class` and `id` attributes of the wrapper tag.
: **Values:** any valid string.

[Next: Incorrect tag contexts](/tags/tag-basics/incorrect-tag-contexts)
