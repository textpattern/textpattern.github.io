---
layout: default
published: true
title: "Categories"
description: A list of Textpattern documentation sorted by category tag.
search_omit: true
sitemap: false
---

# Categories

{% assign tags = site.tags | sort %}
{% for tag in tags %}
    <span class="site-tag">
    <a href="/tag/{{ tag | first | slugify }}/">
            {{ tag[0] | replace:'-', ' ' }} ({{ tag | last | size }})
    </a>
    </span>
{% endfor %}
