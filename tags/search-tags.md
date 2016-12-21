---
layout: document
category: Tags
published: true
title: Category: Search tags
description: A list of Textpattern documentation within the category 'Search tags'.
search_omit: true
---

# Category: Search tags

Textpattern documentation within the category 'Search tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Search tags' %}
            <article>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>
                <p><a href="{{page.url}}">Go to the full documentation...</a></p>
            </article>
        {% endif %}
    {% endfor %}
</div>
