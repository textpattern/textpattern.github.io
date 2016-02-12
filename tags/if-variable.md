---
layout: document
category: tags
published: true
title: "If variable"
tags:
  - Conditional tags
  - Programmer tags
---

# If variable

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

~~~ html
<txp:if_variable>
~~~

The **if_variable** tag is a __conditional__ tag and always used as an opening and closing pair, like this...

~~~ html
<txp:if_variable>
    ...conditional statement...
</txp:if_variable>
~~~

It tests the existence and/or value of a global variable set with the [variable](variable) tag.

Note: In case you are getting unexpected results in an **if_variable** evaluation, check whether you have entered additional white space or invisible characters in your [variable](variable) declarations and remove those.
{: .alert-block .information}

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `name="variable name"`
The name of the variable you wish to check.
* `value="value"`
The (optional) value which the named variable must match in order for the contained statements to be executed. If this attribute is omitted, the tag returns 'true' if the named variable is defined. If this attribute's value is omitted (i.e. `value="`), the tag returns 'true' if the variable is defined, but has no value.

## Examples

See the [variable](variable) page for examples.

## Genealogy

### Version 4.0.7

Tag support added.
