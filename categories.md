---
layout: default
published: true
title: "Categories"
description: A list of Textpattern documentation sorted by category tag.
search_omit: true
sitemap: false
---

# Categories

A list of Textpattern documentation sorted by category tag.

{% for page in site.pages %}
<a href="#{{ tag[0] | slugify }}">{{ tag[0] }}</a>
{% endfor %}
