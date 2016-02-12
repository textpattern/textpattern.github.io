---
layout: document
category: tags
published: true
title: "Output form"
tags:
  - Structural tags
---

# Output form

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

~~~ html
<txp:output_form />
~~~

The **output_form** tag can be used as a __single__ or a __container__ tag. Textpattern will replace this tag with the content resulting from the form template called by the tag.

For the container tag usage, see the [yield](yield) tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `form="form name"`
Use specified form.
Default: unset (no output).

## Examples

### Example 1: Manage small pieces of static text

~~~ html
<txp:output_form form="copyright" />
~~~

You can use this tag in combination with a form to create small pieces of text that would not otherwise be managed as a regular article. For example you might define the copyright conditions of content on your site in a form and add that to one or more places via the output_form tag. Name the form `copyright`, save it as type `misc` and call the form using the tag structure.

Note: Staff Writers and Freelancers can not edit the contents of forms.
{: .alert-block .information}

### Example 2: Manage header for all pages

Suppose you want to manage the `<head>` section of your page template as a single-sourced block of content. You can create a form called `head` and save it as type `misc`. The content of the form might look like this for example:

~~~ html
<head>
    <meta charset="utf-8">
    <title>
        <txp:page_title />
    </title>
    <txp:css format="link" media="" />
    <meta name="generator" content="Textpattern CMS">
    <meta name="robots" content="index, follow, noodp, noydir">
    <txp:feed_link flavor="rss" format="link" label="RSS" />
</head>
~~~

Then in each of your pages, you insert the header using...

~~~ html
<txp:output_form form="head" />
~~~

...which will add this `<head>` to all the pages automatically.

The advantage of this is that when you edit your page header, you can do so once in the form template and it will update all instances of use in your different pages at the same time.

## Genealogy

### Version 4.2.0

Can be used as a container tag.
