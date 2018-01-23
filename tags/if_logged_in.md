---
layout: document
category: Tags
published: true
title: If logged in
description: The if_logged_in tag will execute the contained statements if TODO.
tags:
  - Conditional tags
---

# If logged in

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:if_logged_in>
~~~

The **if_logged_in** tag is a *conditional* tag and always used as an opening and closing pair, like this...

~~~ html
<txp:if_logged_in>
    ...conditional statement...
</txp:if_logged_in>
~~~

The tag will execute the contained statements if TODO.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`group="user group"`
: Comma-separated list of user groups (publishing roles that the authors belong to).
: **Values:** `publisher`, `managing_editor`, `copy_editor`, `staff_writer`, `freelancer`, `designer`, `privs_none` or integer(s).
: **Default:** unset, retrieves from all groups.

`name="author"`
: Comma-separated list of author names.
: **Default:** current user (i.e. if *anyone* is logged in).

## Examples

### Example 1: TODO

TODO

## Genealogy

### Version 4.7.0

Tag support added.
