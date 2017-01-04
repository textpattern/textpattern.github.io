---
layout: document
category: Tags
published: true
title: "Category: Comment tags"
description: A list of Textpattern documentation within the category 'Comment tags'.
search_omit: true
---

# Category: Comment tags

Textpattern documentation within the category 'Comment tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Comment tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</div>
