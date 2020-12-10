---
layout: document
category: Tags
published: true
title: If request
description: The if_request tag will execute the contained statements if a page request variable match the given content.
tags:
  - Conditional tags
---

# If request

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_request>
~~~

The **if_request** tag is a *conditional* tag and is always used as an opening and closing pair, like this…

~~~ html
<txp:if_request>
    …conditional statement…
</txp:if_request>
~~~

The tag will execute the contained statements if a page request variable matches the given content.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`match="match type"`
: How you wish your value to be tested. Choose from: \\
`exact`: value text must exactly match the request variable. \\
`any`: checks if any of the given comma-separated list of `value`s occur anywhere in the request variable. \\
`all`: checks if all of the given comma-separated list of `value`s occur anywhere in the request variable. \\
`pattern`: allows you to specify a regular expression in your `value` attribute to match against the request variable.
: **Default:** `exact`.

`name="field name"`
: The page request variable name you wish to check.

`separator="character"`
: If you wish to treat your request variable as a list of items - so that each item is a discrete entity and tested separately when using `any` or `all` matching - specify the delimiter that's used in the variable. This attribute is ignored if using `exact` or `pattern` matching.

`type="server request"`
: The variable from which you wish to find a value for comparison. If using `name` it uses the `name` value directly. Otherwise it considers the array entry given by `name` in the `type` request variable.
: **Values:** \\
`cookie`. \\
`get`. \\
`name`. \\
`post`. \\
`request`. \\
`server`.
: **Default:** `request`.

`value="field value"`
: The variable content you want to check for a match.

## Examples

### Example 1: Test if the `size` parameter (passed in the URL) is one of a set of values.

~~~ html
<txp:if_request name="size" type="get" match="any" value="small, medium, large">
    <p>Thanks!</p>
<txp:else />
    <p>Please specify a valid size value.</p>
</txp:if_request>
~~~

Other tags used: [else](/tags/else).

## Genealogy

### Version 4.8.0

Tag support added.
