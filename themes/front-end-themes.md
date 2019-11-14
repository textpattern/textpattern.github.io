---
layout: document
category: Themes
published: true
title: Front-end themes
description: Front-end themes allow creating and sharing website front-end designs, or creating different designs for different sections of a given website.
---

# Front-end themes

The ability to create your own front-end [Themes](https://docs.textpattern.com/administration/themes-panel) was [introduced in Textpattern CMS 4.7](https://textpattern.com/weblog/403/textpattern-cms-gains-themes-support). An official [Textpattern Themes](https://github.com/textpattern/textpattern-themes-website) website is also in development.

This page serves as preliminary information gathering and development for the upcoming themes website, including whatever community themes and tutorials may be available.

**On this page:**

* [Default file-tree structure](#default-file-tree-structure)
  * [The *manifest.json* file](#the-manifestjson-file)
  * [The *pages* directory](#the-pages-directory)
  * [The *forms* directory](#the-forms-directory)
  * [The *styles* directory](#the-styles-directory)
* [Sharing front-end themes](#sharing-front-end-themes)
* [Removing front-end themes](#removing-front-end-themes)

## Default file-tree structure 

Theme files must be grouped into a top parent directory named as you want the theme named (e.g. *abc_theme*). All form files (a.k.a. templates) are in Textpattern file format (i.e.  *.txp*).

The basic directory structure will look like the following tree:

* abc_theme
  * manifest.json
  * pages
    * default.txp
    * error_default.txp
  * forms
    * article
      * article_listing.txp
      * default.txp
      * search_results.txp
    * category (empty)
    * comment
      * comments.txp
      * comments_display.txp
      * comment_form.txp
    * file
      * files.txp
    * link
      * plainlinks.txp
    * misc (empty)
    * section (empty) 
  * styles
    * default.css
{: .list-directory}

### The *manifest.json* file

The _manifest.json_ file contains all theme related data. The following default fields and values will be used on first import when any such fields and their values are missing:

```json
{
"title": "theme name",
  "version": "unknown",
  "description": "none",
  "author": "unknown",
  "author_uri": "non",
  "txp-type": "textpattern-theme"
  }
```

The last field and value, `"txp-type": "textpattern-theme"` must always exist and never change.

An example using Textpattern’s default theme:

``` json
{
  "title": "Four Point Seven",
  "version": "4.7.3",
  "description": "The default theme shipped with Textpattern CMS 4.7.",
  "author": "Team Textpattern",
  "author_uri": "https://github.com/textpattern/textpattern-default-theme",
  "txp-type": "textpattern-theme"
}
``` 

### The *pages* directory

The *pages* directory is required, and two essential pages must exist: 

* pages
  * default.txp
  * error_default.txp
{: .list-directory}

If these pages are missing in a theme package, Textpattern will create them automatically as empty pages on import.  

If the entire directory is missing, it will also be created on the first import, and the essential pages will be added with their default contents.

Theme updates thereafter will not overwrite the existing essential pages.

### The *forms* directory

The optional *forms* directory contains seven subdirectories to organize form files by type, as shown in the file tree at top.

All form files must have unique names, both those that come in core and any custom files you create. Compound form names should use underscores between words.

When the *forms* directory is used in custom theme design, eight form templates must exist in their appropriate form subdirectories. Here are the specific eight files:

* forms
  * article
    * article_listing.txp
    * default.txp
    * search_results.txp
  * . . .
  * comment
    * comments.txp
    * comments_display.txp
    * comment_form.txp
  * file
    * files.txp
  * link
    * plainlinks.txp
  * . . .
{: .list-directory}

If the files are missing in a theme package, Textpattern will automatically create them as empty files on first theme import.

If the entire *forms* directory is missing, it will be created on the first import, including subdirectories and the eight theme files with default template contents. Updates thereafter will not overwrite the existing files.

### The *styles* directory

The optional *styles* directory contains stylesheets as *.css* files.  

A default stylesheet, *default.css*, must exist.

If the file is missing in the *styles* directory of a theme package, Textpattern will automatically create it as an empty stylesheet on first import of the theme.  

If the *styles* directory is missing in a themes package, an empty directory with a blank *default.css* file will be created on the first import.

The files will not be overwritten in future software updates.

#  Sharing front-end themes

Sharing themes means exporting and importing themes once they are created. This is how the community will thrive around themes development. A website is coming to host existing themes, and  perhaps even design competitions too.

(Explanation, or links to external community tutorials, is forthcoming.)

# Removing front-end themes

Themes can be removed (deleted) from the themes panel, and the associated files can be deleted as needed.  

As a safety precaution, theme directories with non-standard subdirectories (e.g. *styles/sass*) will require manual deletion after the directories and files recognized by core functionality are deleted.
