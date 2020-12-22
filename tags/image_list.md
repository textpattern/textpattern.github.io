---
layout: document
category: Tags
published: true
title: Image list (Deprecated)
description: The 'image_list' tag is deprecated - use 'images' tag instead.
tags:
  - Deprecated tags
---

# Image list

**Deprecated in Textpattern 4.4.0** (it was renamed to [images](/tags/images) tag)
{: .alert-block .error}

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:image_list />
~~~

The **image_list** tag is a *single* or *container* tag that Textpattern will use to gather a list of matching images uploaded via the Textpattern images panel.

If used as a *container* tag, it must be specified as an opening and closing pair of tags, like this:

~~~ html
<txp:image_list>
    …contained statements…
</txp:image_list>
~~~

This is equivalent to putting the contained statements into a form named 'my_form' and using `<txp:image_list form="my_form" />`.

By default, the tag is context-sensitive, which means that in the absence of any other filter attributes (`id`, `name`, `category`, `author`, `realname`, `extension`, `thumbnail`), it will grab a list of image IDs from the currently viewed article's **article_image** field. If it finds nothing there, it will check the URL to see if there is a category list in progress. If it finds nothing there too, the tag will display nothing. See the `auto_detect` attribute for further information.

## Genealogy

### Version 4.4.0

Tag support removed (it was renamed to [images](/tags/images) tag).

### Version 4.3.0

Tag support added.
