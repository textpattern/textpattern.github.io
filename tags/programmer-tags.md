---
layout: document
category: Tags
published: true
title: Category: Programmer tags
description: A list of Textpattern documentation within the category 'Programmer tags'.
search_omit: true
---

# Category: Programmer tags

Textpattern documentation within the category 'Programmer tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Programmer tags' %}
            <article>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>
                <p><a href="{{page.url}}">Go to the full documentation...</a></p>
            </article>
        {% endif %}
    {% endfor %}
</div>
