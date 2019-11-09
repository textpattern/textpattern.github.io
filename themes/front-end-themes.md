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
  * [The *manifest.json* file](#the-manifest-json-file)
  * [The *pages* directory](#the-pages-directory)
  * [The *forms* directory](#the-forms-directory)
  * [The *styles* directory](#the-styles-directory)
  * [Sharing front-end themes](#sharing-front-end-themes)
  * [Removing front-end themes](#removing-front-end-themes)

## Default file-tree structure 

Themes files must be grouped into a top parent directory named as you want the theme named (e.g. *abc_theme*). All form files are in Textpattern file format (e.g. *default.txp*).

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

### The *manifest.json* file

The _manifest.json_ file contains all theme related data. The following default fields and values will be used on first import when any such fields and their values are missing. The only required field is `txp-type`, and the value must equal `textpattern-theme`.:

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

For example:

``` json
{
  "title": "Four Point Seven",
  "version": "4.7.1",
  "description": "The default theme shipped with Textpattern CMS 4.7.",
  "author": "Team Textpattern",
  "author_uri": "https://github.com/textpattern/textpattern-default-theme",
  "txp-type": "textpattern-theme"
}
``` 

### The *pages* directory

The *pages* directory is required. Two essential pages must exist in the *pages* directory: *default.txp* and *error_default.txp*. These two pages will be created as empty pages on import if they are missing.  

If the entire directory is missing in a theme package, it will be created on the first import, and the essential pages will be added with their default contents. Updates thereafter will not overwrite the existing pages.

### The *forms* directory

The optional *forms* directory contains form subdirectories to organize form files by type, as indicated in the [file-tree structure](#default-file-tree-structure) at top.

All form files must have unique names, both those that come in core and any custom files you create. Compound form names should use underscores between words.  

When the *forms* directory is used in custom theme design, eight form pages must exist in their appopriate form subdirectories. Here they are again by type:

Article forms:

  * article_listing
  * default
  * search_results

Comment forms:

  * comments
  * comments_display
  * comment_form

File forms:

  * files

Link forms:

  * plainlinks

These form files are created as empty files on import if missing in a theme package. If the entire *forms* directory is missing, the core form files are created on the first import. Updates thereafter will not overwrite the existing files.

### The *styles* directory

The optional _styles_ directory contains stylesheets as `.css` files.  

A default stylesheet, named ***default***, must exist. It will be created as an empty stylesheet on import if missing in the *styles* directory of a theme package.  

If the *styles* directory is missing in a themes package, an empty directory with a blank default stylesheet will be created on the first import; thereafter it will not be overwritten in future updates.

##  Sharing front-end themes

Sharing themes means exporting and importing themes once they are created. This is how the community will thrive around themes development. A website is coming to host existing themes, and  perhaps even design competitions too.

(Explanation, or links to external community tutorials, is forthcoming.)

## Removing front-end themes

Themes can be removed (deleted) from the themes panel, and the associated files can be deleted as needed.  

As a safety precaution, theme directories with non-standard subdirectories (e.g. *styles/sass*) will require manual deletion after the directories and files recognized by core functionality are deleted.
