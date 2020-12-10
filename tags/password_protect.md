---
layout: document
category: Tags
published: true
title: Password protect
description: When Textpattern encounters the password_protect tag it causes the user to be prompted for a username and password.
tags:
  - Markup tags
---

# Password protect

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:password_protect />
~~~

The **password_protect** tag can be used as either a *single* tag or *container* tag. When Textpattern encounters the password_protect tag it causes the user to be prompted for a username and password, if these match the attributes set in the tag, the user is allowed access to the site/content. The tag can go anywhere, from page templates, to articles and forms.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`login="text"`
: The username the user has to enter.
: **Default:** unset.

`pass="text"`
: The password the user has to enter.
: **Default:** unset.

## Examples

### Example 1: Cause Textpattern to prompt the user for a login

~~~ html
<txp:password_protect login="theusername" pass="thepassword" />
~~~

Note: It is not adequate to protect a single section. This is not due to the tag itself, but rather because of how Textpattern handles URLs. By changing the URL an article can be rendered with a different section template, which would mean that the tag in the protected section would not be rendered and could not protect the article - only page requests that would be rendered in that section would be protected.
{: .alert-block .information}

### Example 2: Container tag

~~~ html
<txp:password_protect>
    <p>
        This content is only visible to authenticated users.
        <a>Free diamonds here</a>.
    </p>
</txp:password_protect>
~~~

When used as a container, the tag hides the wrapped content if the user doesn't have access to it. When using authentication, it prompts for login too, but doesn't kill the page.

## Genealogy

### Version 4.6.0

Can be used as a container tag.
