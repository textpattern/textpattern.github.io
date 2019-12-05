---
layout: document
category: Tag basics
published: true
title: Tag escaping
description: A global escape attribute is available which applies to all tags - its value is a list of transforms that will be applied to the content.
---

# Tag escaping

From Textpattern CMS 4.7.0 onwards, a global `escape` attribute is available which applies to all tags (core tags and plugin tags) that don't treat it natively. Its value is a comma-separated list of 'transforms' that will be applied to the content in the given order. For example:

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

## Available escape values

`escape="html"` (default)
: Encode special HTML characters (`"'&<>`).

`escape="url"`
: URL-encode all characters except `.-_`.

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
: Remove zero and invalid values from an integers list.

`escape="spell"`
: Spell out the numeric content (requires `NumberFormatter` PHP extension).

`escape="ordinal"`
: Format the content as ordinal number (requires `NumberFormatter` PHP extension).

`escape="upper"` (`lower`, `title`)
: Convert the content to upper case, lower case, or sentence (Title) case.

`escape="textile"`
: Textile the content.

`escape="tidy, textile"`
: Remove spaces/newlines, prepend a single space to remove the surrounding `<p>` tag, then Textile the content.

`escape="tags"`
: Strips all HTML tags and comments from the content leaving you with just the text/data of the content.

`escape="some-tag"`
: Strip any self-closing `<some-tag />`, or unwrap any container `<some-tag>…</some-tag>` in the content.

`escape="tidy, some-tag"`
: Remove spaces/newlines, escape any regex characters, then strip any self-closing `<some-tag />`, or unwrap any container `<some-tag>…</some-tag>` in the content.

## Examples

### Example 1: Extract a number from a variable

~~~ html
<txp:variable name="amount" value="Price: £1 234.78" />

<txp:variable name="amount" escape="number" />
<txp:variable name="amount" escape="tidy, number" />
~~~

Outputs `0` without `tidy` (not a number) and `1234.78` with `tidy`.

### Example 2: Format a variable with Textile

~~~ html
<txp:variable name="test">
*This*
is

a _test_
</txp:variable>

<txp:variable name="test" escape="textile" />
<txp:variable name="test" escape="tidy, textile" />
~~~

Outputs

~~~ html
<p><strong>This</strong><br />is</p>
<p>a <em>test</em></p>
~~~

without `tidy` and `<strong>This</strong> is a <em>test</em>` with `tidy`.

### Example 3: Remove all images from Excerpt

~~~ html
<txp:excerpt escape="img" />
~~~

### Example 4: Required JSON-LD to validate AMP

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

[Next: Core short-tags](/tags/tag-basics/core-short-tags)
