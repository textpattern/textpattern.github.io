---
layout: collection
category: Tags
published: true
title: "Category: Comment tags"
description: A list of Textpattern documentation within the category 'Comment tags'.
search_omit: true
---

# Category: Comment tags

Textpattern documentation within the category 'Comment tags':

<ol class="list--no-bullets">
    {% for page in site.pages %}
        {% if page.tags contains 'Comment tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</ol>
