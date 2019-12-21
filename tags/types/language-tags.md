---
layout: collection
category: Tags
published: true
title: "Category: Language tags"
description: A list of Textpattern documentation within the category 'Language tags'.
search_omit: true
---

# Category: Language tags

Textpattern documentation within the category 'Language tags':

<ol class="list--no-bullets">
    {% for page in site.pages %}
        {% if page.tags contains 'Language tags' %}
            {% include article-listing.html %}
        {% endif %}
    {% endfor %}
</ol>
