---
layout: document
category: Tags
published: true
title: Category: Future tags
description: A list of Textpattern documentation within the category 'Future tags'.
search_omit: true
---

# Category: Future tags

Textpattern documentation within the category 'Future tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Future tags' %}
            <article>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>
                <p><a href="{{page.url}}">Go to the full documentation...</a></p>
            </article>
        {% endif %}
    {% endfor %}
</div>
