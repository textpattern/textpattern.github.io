---
layout: document
category: tags
published: true
title: "If yield"
tags:
  - Conditional tags
  - Structural tags
---

# If yield

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:if_yield>
```

The **if_yield** tag is a __conditional__ tag and always used as an opening and closing pair, like this...

```html
<txp:if_yield>
    ...conditional statement...
</txp:if_yield>
```

It tests the existence and/or value of a content set with the [yield](yield) tag inside of an [output_form](output-form) container tag.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* `value="value"`
The (optional) value which the yield content must match in order for the contained statements to be executed. If this attribute is omitted, the tag returns 'true' if the yield content is defined. If this attribute's value is omitted (i.e. `value="`), the tag returns 'true' if yield content is defined, but has no value.

## Examples

### Example 1: Check if yield is defined

```html
<txp:if_yield>
    Output_form was used as a container.
<txp:else />
    No yield defined.
</txp:if_yield>
```

### Example 2: Check if yield content is set

```html
<txp:if_yield value="">
    No yield, is empty.
<txp:else />
    Yield set: <txp:yield />
</txp:if_yield>
```

Other tags used: [yield](yield).

### Example 3: Check against a specific yield content

```html
<txp:if_yield value="red">
	Yield is red.
</txp:if_yield>
```

## Genealogy

### Version 4.6.0

Tag support added.
