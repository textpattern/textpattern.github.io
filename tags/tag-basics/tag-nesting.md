---
layout: document
category: Tag basics
published: true
title: "Tag nesting"
description: Similar to HTML, Textpattern allows you to nest tags within tags.
---

# Tag nesting

Similar to HTML, Textpattern allows you to nest tags within tags, as long as you close them in the correct order (i.e. tag closing cannot overlap).

Indenting is used here to show which tags belong to which bits of contained content. Notice the order in which the tags are opened and closed; it follows standard HTML and XML principles:

~~~ html
<txp:if_section name="archive">
    <txp:if_category>
        Category list within the archive section
    <txp:else />
        Not a category list
    </txp:if_category>
<txp:else />
    Some other section
</txp:if_section>
~~~

Since Textpattern 4.0.7, there are no limits on nesting depth and you can nest the same tag within itself:

~~~ html
<txp:if_section name="article">
    My Articles
<txp:else />
    <txp:if_section name="about">
        About this website
    <txp:else />
        Erm... something else!
    </txp:if_section>
</txp:if_section>
~~~

[Next: Parsing tag attributes](parsing-tag-attributes)
