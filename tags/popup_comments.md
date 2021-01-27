---
layout: document
category: Tags
published: true
title: Popup comments
description: This tag opens a new page using the popup_comments form template as a container if you set 'Comments mode' to 'popup window' in Preferences.
tags:
  - Comment tags
---

# Popup comments

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:popup_comments />
~~~

The **popup_comments** tag can be used as a *single* tag or a *container* tag. This tag opens a new page using the `popup_comments` form template as a container if you have set 'Comments mode' to 'popup window' in your [Preferences panel](/administration/preferences-panel#comments-mode) (instead of displaying comments directly on the article page itself).

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`form="form name"`
: Use specified form template to show comments within the `popup_comments` form template.
: **Default:** `comments_display`.

## Examples

### Example 1: A popup_comments form template

~~~ html
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>
        <txp:page_title />
    </title>
    <meta name="generator" content="Textpattern CMS">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="noindex, follow">
    <txp:css format="link" media="" />
</head>
<body class="popup-page">
    <div class="container">
        <txp:popup_comments />
    </div>
</body>
</html>
~~~

Other tags used: [css](/tags/css), [page_title](/tags/page_title).

## Genealogy

### Version 4.6.0

Can be used as a container tag.
