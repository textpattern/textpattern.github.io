---
layout: document
category: Tags
published: true
title: Email
description: The email tag will show a mailto email link, according to the attributes set.
tags:
  - Navigation tags
---

# Email

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:email />
~~~

The **email** tag is both a *single* tag and a *container* tag. Textpattern will replace it with a `mailto:` email link, according to the attributes set.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`email="value"`
: The email address from which to make the link.
: **Values:** Any valid email address.
: **Default:** unset.

`linktext="value"`
: The displayed link text.
: **Values:** Any text.
: **Default:** `Contact`.

`title="value"`
: The `title` attribute to assign to the link.
: **Values:** Any valid HTML title.
: **Default:** unset.

## Examples

### Example 1: Simple email link

~~~ html
<txp:email email="donald.swain@example.com" linktext="Contact me" title="Send me an email" />
~~~

### Example 2: Pre-populate message subject and body

~~~ html
<txp:email email="donald.swain@example.com?subject=Lorem ipsum&body=Sit amet…" />
~~~

### Example 3: Container example

~~~ html
<txp:email email="donald.swain@example.com" title="Email me!">
    <img src="/images/email.png" alt="Email">
</txp:email>
~~~

## Genealogy

### Version 4.0.5

Can be used as a container.
