---
layout: document
category: tags
published: true
title: "Email"
tags:
  - Navigation tags
---

# Email

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:email />
```

The *email* tag is both a __single__ tag and a __container__ tag. Textpattern will replace it with a @mailto:@ email link, according to the attributes set.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* @email="value"@
The email address from which to make the link.
Values: Any valid email address.
Default: unset.
* @linktext="value"@
The displayed link text.
Values: Any text.
Default: @Contact@.
* @title="value"@
The @title@ attribute to assign to the link.
Values: Any valid HTML title.
Default: unset.

## Examples

### Example 1: Simple email link

```html
<txp:email email="donald.swain@example.com" linktext="Contact me" title="Send me an email" />
```

### Example 2: Pre-populate message subject and body

```html
<txp:email email="donald.swain@example.com?subject=Lorem ipsum&body=Sit amet..." />
```

### Example 3: Container example

```html
<txp:email email="donald.swain@example.com" title="Email me!">
    <img src="/images/email.png" alt="Email">
</txp:email>
```

### Example 4: With Symbolset's 'email' glyph

If you happen to use the 'email' glyph in the social media set of "Symbolset":http://symbolset.com, you can still use this tag. Let's say you're creating a social button bar using Symbolset glyphs in a list. The normal way to do this would be to set up your selectors on the individual anchor elements, like the first three list items show below. For the email glyph you need to put the selectors in the @<li>@ since you can't put them in the @<a>@, as the last list item shows:

```html
<ul class="socbar">
    <li>
        <a href"https://twitter.com/xxx" class="ss-icon twit">twitter</a>
    </li>
    <li>
        <a href="https://plus.google.com/xxx" class="ss-icon gplus">googleplus</a>
    </li>
    <li>
        <a href="http://www.linkedin.com/xxx" class="ss-icon in">linkedin</a>
    </li>
    <li class="ss-icon email">
        <txp:email email="donald.swain@example.com" linktext="email" />
    </li>
</ul>
```

If you're using Symbolset, then you'll know that the @linktext=""@ attribute value in the last list item above *has* to be @email@ for the glyph to work. Then the CSS must be like follows to target both instances of Symbolset glyph use:

```css
/* Common rules */
a.ss-icon,
li.ss-icon a {
    /* design as you want */
}

/* Target each one if specific hover effect is wanted */
.twit:hover {
    /* design as you want */
}
... etc ...
li.email a:hover {
    /* design as you want */
}
```

See the "feed_link":feed-link tag for a similar solution for Symbolset's 'rss' glyph.

## Genealogy

### Version 4.0.5

Can be used as a container.
