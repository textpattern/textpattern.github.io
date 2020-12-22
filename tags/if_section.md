---
layout: document
category: Tags
published: true
title: If section
description: The if_section tag will execute the contained statements if the called page is part of the section specified.
tags:
  - Conditional tags
---

# If section

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_section>
~~~

The **if_section** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_section>
    …conditional statement…
</txp:if_section>
~~~

The tag will execute the contained statements if the called page is part of the section specified with the name attribute.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`name="section"`
: Comma-separated list of section names. For the default section, either use the text `default` or a single comma `,` (for example, both `name=", other_section"` and `name="default, other_section"` are equivalent).

## Examples

### Example 1: Conditionally display text for a section

~~~ html
<txp:if_section name="about">
    <p>Danger, ego pages ahead!</p>
<txp:else />
    <p>Nothing. Just nothing. Any ideas? Anybody?</p>
</txp:if_section>
~~~

Other tags used: [else](/tags/else).

### Example 2: Omit text from a section

~~~ html
<txp:if_section not name="about,cheeses">
    <p>This text appears on every section <em>apart from</em> the 'about' and 'cheeses' sections.</p>
</txp:if_section>
~~~

### Example 3: Add a special class to mark the currently active section

~~~ html
<nav>
    <ul>
        <li<txp:if_section name=", article"> class="active"</txp:if_section>>
            <txp:section link="1" title="1" name="" />
        </li>
        <li<txp:if_section name="portfolio"> class="active"</txp:if_section>>
            <txp:section link="1" title="1" name="portfolio" />
        </li>
        <li<txp:if_section name="about"> class="active"</txp:if_section>>
            <txp:section link="1" title="1" name="about" />
        </li>
    </ul>
</nav>
~~~

A different way of marking the active section can be accomplished by using [section_list](/tags/section_list) and its attribute `active_class`. While the above snippet will mark the list item, [section_list](/tags/section_list) will mark solely the link.

Other tags used: [section](/tags/section).
