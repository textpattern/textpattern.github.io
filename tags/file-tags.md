---
layout: document
category: Tags
published: true
title: Category: File tags
description: A list of Textpattern documentation within the category 'File tags'.
search_omit: true
---

# Category: File tags

Textpattern documentation within the category 'File tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'File tags' %}
            <article>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>
                <p><a href="{{page.url}}">Go to the full documentation...</a></p>
            </article>
        {% endif %}
    {% endfor %}
</div>
