---
layout: document
category: Tags
published: true
title: If variable
description: The if_variable tag tests the existence and/or value of a global variable set with the variable tag.
tags:
  - Conditional tags
  - Programmer tags
---

# If variable

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_variable>
~~~

The **if_variable** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_variable>
    …conditional statement…
</txp:if_variable>
~~~

It tests the existence and/or value of a global variable set with the [variable](/tags/variable) tag.

Note: In case you are getting unexpected results in an **if_variable** evaluation, check whether you have entered additional white space or invisible characters in your [variable](/tags/variable) declarations and remove those.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`match="match type"` <span class="footnote warning">v4.8.0+</span>
: How you wish your value to be tested. Choose from: \\
`exact`: value text must exactly match the variable. \\
`any`: checks if any of the given comma-separated list of `value`s occur anywhere in the variable. \\
`all`: checks if all of the given comma-separated list of `value`s occur anywhere in the variable. \\
`pattern`: allows you to specify a regular expression in your `value` attribute to match against the variable.
: **Default:** `exact`.

`name="variable name"`
: The name of the variable you wish to check.

`separator="character"` <span class="footnote warning">v4.8.0+</span>
: If you wish to treat your variable as a list of items - so that each item is a discrete entity and tested separately when using `any` or `all` matching - specify the delimiter that you use in the variable. This attribute is ignored if using `exact` or `pattern` matching.

`value="value"`
: The (optional) value which the named variable must match in order for the contained statements to be executed. If this attribute is omitted, the tag returns 'true' if the named variable is defined. If this attribute's value is omitted (i.e. `value="`), the tag returns 'true' if the variable is defined, but has no value.

## Examples

See the [variable](/tags/variable) tag page for examples.

## Genealogy

### Version 4.8.0

Added `match` and `separator` attributes.

### Version 4.0.7

Tag support added.
