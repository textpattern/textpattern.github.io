---
layout: document
category: Tag basics
published: true
title: "Self-closed versus container tags"
description: A self-closed tag is the most basic form of a Texpattern tag.
---

# Self-closed versus container tags

On this page:

* [Self-closed tags](#self-closed-tags)
* [Container tags](#container-tags)
* [Closing tags correctly](#closing-tags-correctly)

## Self-closed tags

A self-closed tag is the most basic form of a Texpattern tag. Its structure is similar to that of a self-closed tag in HTML (e.g. `<br />`), most notably the inclusion of the terminating forward slash.

Any self-closed Textpattern tag has the following syntactic structure:

~~~ html
<txp:tagname />
~~~

The tag is replaced by contents when Textpattern displays a page.

Self-closed tags can usually take attributes. For example, the following [article](article) tag demonstrates using the `form` and `limit` attributes:

~~~ html
<txp:article form="formName" limit="15" />
~~~

Most Textpattern tags are self-closed tags. The other type of tag is the container tag.

## Container tags

Container tags are composed of both an opening and closing tag element, giving them the syntactic structure of:

~~~ html
<txp:tag_name>
    ...content...
</txp:tag_name>
~~~

The content that is added between container tags may be either text or other Textpattern tags.

Typical container tags are the **permlink** tag `<txp:permlink></txp:permlink>` and all **conditional tags**. Container tags are used when something has to be *enclosed* by tags instead of being *replaced* by them.

A link is a good example: you have a text string (or a title tag) around which you want to wrap an HTML anchor element:

~~~ html
<txp:permlink>
    <txp:title />
</txp:permlink>
...content...
<txp:permlink>
    Read more...
</txp:permlink>
~~~

The example above would be rendered into something like so:

~~~ html
<a href="/articles/this-article-title">This article title</a>
...content...
<a href="/articles/this-article-title">Read more...</a>
~~~

## Closing tags correctly

Textpattern tags behave like XML tags insofar as they must be **closed** correctly. Any containing tag must have both an opening tag and a corresponding closing tag (marked with a preceding slash):

~~~ html
<txp:some_tag>
    ...content...
</txp:some_tag>
~~~

If the tag is a conditional tag, check to make sure that any [else](http://docs.textpattern.io/tags/else) tag is employed correctly:

**Right:**

~~~ html
<txp:if_some_condition>
  ...true branch...
<txp:else />
  ...false branch...
</txp:if_some_condition>
~~~

**Wrong:**

~~~ html
<ul>
    <li>
        <txp:else>
    </li>
    <li>
        </txp:else>
    </li>
    <li>
        </txp:else />
    </li>
</ul>
~~~

Single (self-closing) tags must have a single slash at the end:

~~~ html
<txp:some_single_tag with="attributes" />
~~~

Also check that the angle brackets have not been HTML encoded by mistake, e.g.:

~~~ html
&lt;txp:some_tag /gt;
~~~
