---
layout: collection
category: Tags
published: true
title: "Category: Conditional tags"
description: A list of Textpattern documentation within the category 'Conditional Tags'.
search_omit: true
---

# Category: Conditional tags

Textpattern documentation within the category 'Conditional Tags':

<ol class="list--no-bullets">
    {% for page in site.pages %}
        {% if page.tags contains 'Conditional tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</ol>
