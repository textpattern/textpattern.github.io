---
layout: document
category: Tag basics
published: true
title: Tag escaping
description: TODO.
---

# Tag escaping TODO

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

## Available escape values TODO

`escape="html"` (default)
: Encode special HTML characters (`"'&<>`).

`escape="json"`
: JSON-encode, without the surrounding `""` quotes.

`escape="trim"` (`ltrim`, `rtrim`)
: Remove surrounding (left, right) spaces/newlines from the content.

`escape="tidy"`
: Remove extra spaces/newlines from the content and trigger a more thorough processing mode.

`escape="number"`
: Format the content as a number.

`escape="tidy, number"`
: Remove spaces/newlines and format the content as a stricter number (force to float or fraction first).

`escape="integer"`
: Format the content as an integer.

`escape="tidy, integer"`
: Remove spaces/newlines and format the content as a stricter integer (ensure it adheres to an integer first).

`escape="textile"`
: Textile the content.

`escape="tidy, textile"`
: Remove spaces/newlines, prepend a single space to remove the surrounding ‘p’ tag, then Textile the content.

`escape="some-tag"`
: Strip any self-closing `<some-tag />`, or unwrap any container `<some-tag>...</some-tag>` in the content.

`escape="tidy, some-tag"`
: Remove spaces/newlines, escape any regex characters, then strip any self-closing `<some-tag />`, or unwrap any container `<some-tag>...</some-tag>` in the content.

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
<p><strong>This</strong><br /> is</p>
<p>a <em>test</em></p>
~~~

without `tidy` and `<strong>This</strong> is a <em>test</em>` with `tidy`.

### Example 3: Remove all images from Excerpt

~~~ html
<txp:excerpt escape="img" />
~~~

Other tags used: [variable](https://docs.textpattern.io/tags/variable), [excerpt](https://docs.textpattern.io/tags/excerpt), but it works for any tag.
