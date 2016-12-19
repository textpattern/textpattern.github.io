---
layout: default
published: true
title: "Categories"
description: Documentation categories
search_omit: true
---

# Categories

<!-- Get the tag name for every tag on the site and set them to the `site_tags` variable. -->
{% capture site_tags %}{% for tag in site.tags %}{{ tag | first }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}

<!-- `tag_words` is a sorted array of the tag names. -->
{% assign tag_words = site_tags | split:',' | sort %}

<!-- List of all tags -->
<ul class="tags">
    {% for item in (0..site.tags.size) %}{% unless forloop.last %}
    {% capture this_word %}{{ tag_words[item] | strip_newlines }}{% endcapture %}
    <li>
        <a href="#{{ this_word | cgi_escape }}" class="tag">{{ this_word }}
            <span>({{ site.tags[this_word].size }})</span>
        </a>
    </li>
    {% endunless %}{% endfor %}
</ul>

<!-- Posts by Tag -->
{% for item in (0..site.tags.size) %}{% unless forloop.last %}
{% capture this_word %}{{ tag_words[item] | strip_newlines }}{% endcapture %}
<h2 id="{{ this_word | cgi_escape }}">{{ this_word }}</h2>
<ul class="posts">
{% for post in site.tags[this_word] %}{% if post.title != null %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endif %}{% endfor %}
</ul>
{% endunless %}{% endfor %}
