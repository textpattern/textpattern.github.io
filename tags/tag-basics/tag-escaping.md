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
<txp:variable name="code" escape="trim, textile">
    Hello, _world_!
</txp:variable>

<txp:variable name="code" escape="html" />
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

`escape="tidy"`
: Remove spaces/newlines from the content.

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

TODO
