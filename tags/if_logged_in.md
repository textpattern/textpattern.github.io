---
layout: document
category: Tags
published: true
title: If logged in
description: The if_logged_in tag will execute the contained statements if the current or given user is logged in and optionally a member of the given role.
tags:
  - Conditional tags
---

# If logged in

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_logged_in>
~~~

The **if_logged_in** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_logged_in>
    …content to show if logged in…
</txp:if_logged_in>
~~~

The tag will execute the contained statements if the current or given user is logged in and optionally a member of the given role.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`group="user group"`
: Comma-separated list of user groups (publishing roles that the author belongs to).
: **Values:** `publisher`, `managing_editor`, `copy_editor`, `staff_writer`, `freelancer`, `designer`, `privs_none` or corresponding integer(s).
: **Default:** unset, the user may be assigned to any group.

`name="author"`
: Author name to test.
: **Default:** current user (i.e. if *anyone* is logged in).

## Examples

### Example 1: Display an 'Edit this article' link for logged-in users

~~~ html
<txp:if_individual_article>
    <txp:if_logged_in>
        <a href="<txp:site_url type="admin" />?event=article&step=edit&ID=<txp:article_id />">Edit this article</a>
    </txp:if_logged_in>
</txp:if_individual_article>
~~~

Other tags used: [article_id](/tags/article_id), [if_individual_article](/tags/if_individual_article), [site_url](/tags/site_url).

## Genealogy

### Version 4.7.0

Tag support added.
