---
layout: document
category: Tag basics
published: true
title: Core short-tags
description: Since Textpattern 4.7.0, all Textpattern tags can be written and used as short-tags.
---

# Core short-tags

Beginning with Textpattern release 4.7.0, it's possible to further reduce — on top of [integrated notation](/tags/tag-basics/integrated-tag-notation) — the amount of typing involved when writing Textpattern tags.

**Contents**

* Table of contents
{:toc}

## Short-tag structure

First let's review some Textpattern tag basics, which includes how plugin tags are used too. Textpattern tag names can be single words (i.e. `name`), or compound names with underscores (i.e. `compound_name`). Tags can also be either [self-closing or container tags](/tags/tag-basics/self-closed-versus-container-tags).

Short-tag structure only concerns tags (including plugin tags) with compound names, whether self-closing or used as containers.

**Here's the general rule:** 
If the short-tag functionality is enabled in the [Preferences panel](/administration/preferences-panel#enable-short-tag-support), which it is by default, and the tag has a compound name, you can:

1. Remove the `txp:` prefix.
2. Swap the first instance of underscore with `::`.

A self-closing tag like `<txp:article_id />` becomes `<article::id />`.

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

## Shortening tag attributes

From Textpattern 4.7.0 you can also shortcut 'boolean' (1 or 0) attributes just like you can in HTML. So these two tags are equivalent:

~~~ html
<txp:section link="1" />
<txp:section link />
~~~

## Shortening tag constructs using negation

Also from Textpattern 4.7.0, is the ability to negate a tag using `not`.

~~~ html
<txp:if_section not name="contact, articles">
    <!-- Do something if we're not in the contact or articles section -->
</txp:if_section>
~~~

Using `not` negates the result of the entire tag including any combination of attributes it may have. It does not negate individual attributes. This feature also extends to all plugins, natively without any need to do anything by the plugin author.

## Custom short-tags

See [Custom short-tags and shortcodes](/tags/shortcodes/custom-short-tags-and-shortcodes).
