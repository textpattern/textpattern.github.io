---
layout: document
category: Development
published: true
title: Administration-side events and steps
description: These are the main events and steps that Textpattern uses as you interact with the administration-side interface.
---

# Administration-side events and steps

These are the main events and steps that Textpattern uses as you interact with the administration-side interface. An *event* is usually the panel or plugin name, e.g. `prefs` or `image`. A *step* is Textpattern terminology for an action that occurs on that panel, for example `save` or `image_edit`.

Although they are not direct [callbacks](/development/core-callbacks-reference), you may hook into these events and steps from a plugin to perform an action.

When raising callbacks of this nature, they are normally run in what is referred to as *post* mode, i.e. after Textpattern has serviced the routine. You may elect to run it in *pre* mode so you can intercept the callback before Textpattern services it. This is handy for manipulating submitted data before Textpattern receives it. To do this, set the fourth argument of `register_callback()` to `true`.

Note that all steps require a CSRF token to be submitted (see the `form_token()` and `tInput()` functions) unless denoted with an asterisk (*) below.

**Contents**

* Table of contents
{:toc}

## 'admin' event

The associated steps are:

* `admin_change_pageby`
* `admin_multi_edit`
* `author_edit`*
* `author_list`*
* `author_save`
* `author_save_new`
* `change_pass`
* `new_pass_form`*

## 'article' event

The associated steps are:

* `create`*
* `edit`*
* `publish`
* `save`

## 'category' event

The associated steps are:

* `cat_article_create`
* `cat_article_edit`*
* `cat_article_save`
* `cat_category_list`*
* `cat_category_multiedit`
* `cat_file_create`
* `cat_file_edit`*
* `cat_file_save`
* `cat_image_create`
* `cat_image_edit`*
* `cat_image_save`
* `cat_link_create`
* `cat_link_edit`*
* `cat_link_save`

## 'css' event

The associated steps are:

* `css_edit` (also: `pour`)*
* `css_delete`
* `css_save`
* `css_skin_change`

## 'diag' event

The associated steps are:

* `low`
* `high`
* `phpinfo`


## 'discuss' event

The associated steps are:

* `discuss_change_pageby`
* `discuss_edit`*
* `discuss_list`*
* `discuss_multi_edit`
* `discuss_save`

## 'file' event

The associated steps are:

* `file_change_pageby`
* `file_create`
* `file_edit`*
* `file_insert`
* `file_list`*
* `file_multi_edit`
* `file_replace`
* `file_save`

## 'form' event

The associated steps are:

* `form_create`*
* `form_edit`*
* `form_delete`
* `form_multi_edit`
* `form_save`
* `form_skin_change`
* `tagbuild`*

## 'image' event

The associated steps are:

* `image_edit`*
* `image_change_pageby`
* `image_insert`
* `image_list`*
* `image_multi_edit`
* `image_replace`
* `image_save`
* `thumbnail_create`
* `thumbnail_delete`
* `thumbnail_insert`

## 'lang' event

The associated steps are:

* `list_languages`*
* `get_language`
* `remove_language`
* `save_language`
* `save_language_ui`
* `get_textpack`

## 'link' event

The associated steps are:

* `link_change_pageby`
* `link_edit`*
* `link_list`*
* `link_multi_edit`
* `link_save`

## 'list' event

The associated steps are:

* `list_change_pageby`
* `list_list`*
* `list_multi_edit`

## 'log' event

The associated steps are:

* `log_change_pageby`
* `log_list`*
* `log_multi_edit`

## 'page' event

The associated steps are:

* `page_edit`*
* `page_delete`
* `page_save`
* `page_skin_change`
* `tagbuild`*

## 'plugin' event

For information purposes only. Third party plugins do not run on this panel.

The associated steps are:

* `plugin_edit`
* `plugin_help`*
* `plugin_install`
* `plugin_list`*
* `plugin_load`
* `plugin_multi_edit`
* `plugin_change_pageby`
* `plugin_save`
* `plugin_upload`
* `plugin_verify`
* `switch_status`

## 'prefs' event

The associated steps are:

* `prefs_list`*
* `prefs_save`

## 'section' event

The associated steps are:

* `sec_section_list`*
* `section_change_pageby`
* `section_delete`
* `section_edit`*
* `section_multi_edit`
* `section_save`
* `section_set_default`
* `section_set_theme`
* `section_toggle_option`
* `section_use_theme`

## 'skin' event

The associated steps are:

* `skin_change_pageby`
* `list`*
* `edit`*
* `save`
* `import`*
* `multi_edit`

## 'tag' event

The associated step is:

* `build`*
