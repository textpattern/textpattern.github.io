---
layout: document
category: Development
published: true
title: Admin-side events and steps
description: These are the main events and steps that Textpattern uses as you interact with the admin-side interface.
---

# Admin-side events and steps

These are the main events and steps that Textpattern uses as you interact with the admin-side interface. An *event* is usually the panel or plugin name, e.g. `prefs` or `image`. A *step* is Textpattern terminology for an action that occurs on that panel, for example `save` or `image_edit`.

Although they are not direct [callbacks](https://docs.textpattern.io/development/core-callbacks-reference), you may hook into these events and steps from a plugin to perform an action.

When raising callbacks of this nature, they are normally run in what is referred to as *post* mode, i.e. after Textpattern has serviced the routine. You may elect to run it in *pre* mode so you can intercept the callback before Tetxpattern services it. This is handy for manipulating submitted data before Textpattern receives it. To do this, set the fourth argument to `register_callback()` true.

## 'admin' event

The associated steps are:

* `admin_change_pageby`
* `admin_multi_edit`
* `author_edit`
* `author_list`
* `author_save`
* `author_save_new`
* `change_email`
* `change_email_form`
* `change_pass`
* `new_pass_form`

## 'article' event

The associated steps are:

* `create`
* `edit`
* `publish`
* `save`
* `save_pane_state`

## 'category' event

The associated steps are:

* `cat_article_create`
* `cat_article_edit`
* `cat_article_save`
* `cat_category_list`
* `cat_category_multiedit`
* `cat_file_create`
* `cat_file_edit`
* `cat_file_save`
* `cat_image_create`
* `cat_image_edit`
* `cat_image_save`
* `cat_link_create`
* `cat_link_edit`
* `cat_link_save`

## 'css' event

The associated steps are:

* `css_copy`
* `css_edit`
* `css_edit_raw`
* `css_delete`
* `css_save`
* `pour`

## 'discuss' event

The associated steps are:

* `discuss_change_pageby`
* `discuss_delete`
* `discuss_edit`
* `discuss_list`
* `discuss_multi_edit`
* `discuss_save`
* `ipban_add`
* `ipban_list`
* `ipban_unban`

## 'file' event

The associated steps are:

* `file_change_pageby`
* `file_create`
* `file_edit`
* `file_insert`
* `file_list`
* `file_multi_edit`
* `file_replace`
* `file_save`

## 'form' event

The associated steps are:

* `form_create`
* `form_edit`
* `form_delete`
* `form_list`
* `form_multi_edit`
* `form_save`
* `save_pane_state`

## 'image' event

The associated steps are:

* `image_edit`
* `image_change_pageby`
* `image_insert`
* `image_list`
* `image_multi_edit`
* `image_replace`
* `image_save`
* `thumbnail_create`
* `thumbnail_delete`
* `thumbnail_insert`

## 'import' event

The associated steps are:

* `start_import`
* `switch_tool`

## 'link' event

The associated steps are:

* `link_change_pageby`
* `link_edit`
* `link_list`
* `link_multi_edit`
* `link_save`

## 'list' event

The associated steps are:

* `list_change_pageby`
* `list_list`
* `list_multi_edit`

## 'log' event

The associated steps are:

* `log_change_pageby`
* `log_list`
* `log_multi_edit`

## 'page' event

The associated steps are:

* `page_edit`
* `page_delete`
* `page_new`
* `page_save`
* `page_list`

## 'plugin' event

For information purposes only. Third party plugins do not run on this panel.

The associated steps are:

* `plugin_edit`
* `plugin_help`
* `plugin_install`
* `plugin_list`
* `plugin_multi_edit`
* `plugin_save`
* `plugin_verify`
* `switch_status`

## 'prefs' event

The associated steps are:

* `advanced_prefs`
* `advanced_prefs_save`
* `get_language`
* `get_textpack`
* `list_languages`
* `prefs_list`
* `prefs_save`
* `remove_language`

## 'section' event

The associated steps are:

* `section_change_pageby`
* `sec_section_list`
* `section_delete`
* `section_edit`
* `section_multi_edit`
* `section_save`
* `section_set_default`
* `section_toggle_option`

## 'tag' event

The associated steps are:

* `build`
