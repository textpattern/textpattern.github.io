---
layout: document
category: Tags
published: true
title: "Category: Deprecated tags"
description: A list of Textpattern documentation within the category 'Deprecated tags'.
search_omit: true
---

# Category: Deprecated tags

Textpattern documentation within the category 'Deprecated tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Deprecated tags' %}
            <article>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>
                <p><a href="{{page.url}}">Go to the full documentation...</a></p>
            </article>
        {% endif %}
    {% endfor %}
</div>
