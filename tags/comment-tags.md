---
layout: document
category: Tags
published: true
title: Category: Comment tags
description: A list of Textpattern documentation within the category 'Comment tags'.
search_omit: true
---

# Category: Comment tags

Textpattern documentation within the category 'Comment tags':

<div>
    {% for page in site.pages %}
        {% if page.tags contains 'Comment tags' %}
            <article>
                <h3>{{page.title}}</h3>
                <p>{{page.description}}</p>
                <p><a href="{{page.url}}">Go to the full documentation...</a></p>
            </article>
        {% endif %}
    {% endfor %}
</div>
