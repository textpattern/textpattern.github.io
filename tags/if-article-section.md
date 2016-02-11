---
layout: document
category: tags
published: true
title: "If article section"
tags:
  - Article tags
  - Conditional tags
---

# If article section

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:if_article_section>
```

The *if_article_section* tag is a _conditional_ tag and always used as an opening and closing pair, like this...

```html
<txp:if_article_section>
    ...conditional statement...
</txp:if_article_section>
```

The tag will execute the contained statements if the section name associated with a particular article matches the value of the @name@ attribute. Should be used in an article form.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

* @name="section"@
Comma-separated list of section names.

## Examples

### Example 1: Check the article's section

```html
<txp:if_article_section name="poetry">
    <p>by <txp:author /></p>
</txp:if_article_section>
```

Displays the author name if the current article belongs to the section named @poetry@.

Other tags used: "author":author.texttile.

### Example 2: Using the tag with else

```html
<txp:if_article_section name"poetry">
    <p>Fun With poetry</p>
<txp:else />
    <p><a href="index.php">Home</a></p>
</txp:if_article_section>
```

Display the welcome text if the article's section matches @poetry@, or shows a default link otherwise.

Other tags used: "else":else.
