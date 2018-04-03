---
layout: document
category: Themes
published: true
title: Front-end themes
description: Front-end themes allow creating and sharing front-end presentations, or creating different presentations for different sections of a given website.
---

# Front-end themes

With the arrival of Textpattern 4.7 comes new core theming functionality for the front-end. You may get up to speed with current reading so far with the following resources:

* [Textpattern gains Themes support](https://textpattern.com/weblog/403/textpattern-cms-gains-themes-support) (developer overview on theme functionality)
* [Themes panel](https://docs.textpattern.io/administration/themes-panel) (administration doc)

## Creating new front-end themes  (Work in progress)

### Creating a theme as flat files

#### General structure

Themes files must be grouped into a top parent directory named as the theme and should follow the structure above.

##### Overview

~~~
abc_theme
├── manifest.json
├── pages
|   ├── default.txp
|   └── error_default.txp
├── forms
|   ├── article
|   |   ├── article_listing.txp
|   |   ├── default.txp
|   |   └── search_results.txp
|   ├── category
|   |   └── …
|   ├── comment
|   |   ├── comments.txp
|   |   ├── comments_display.txp
|   |   └── comment_form.txp
|   ├── file
|   |   └── files.txp
|   ├── link
|   |   └── plainlinks.txp
|   ├── misc
|   |   └── …
|   └── section
|       └── …
└── styles
    └── default.css
~~~

#### The _manifest.json_ file

The _manifest.json_ file contains a theme related data.  
The only required field is `txp-type` which need to be set to `textpattern-theme`.  
The following default value will be used on import for the missing fields or values:
- title: theme name;
- version: _Unknown_;
- description: none;
- author: _Unknown_;
- author_uri: none;

##### Example

~~~ json
{
  "title": "Four Point Seven",
  "version": "4.7.0-beta.2",
  "description": "The default theme shipped with Textpattern CMS 4.7.",
  "author": "Team Textpattern",
  "author_uri": "https://github.com/textpattern/textpattern-default-theme"
  "txp-type": "textpattern-theme",
}
~~~

#### The _pages_ directory

The _pages_ optional directory should contains Textpattern pages as `.txp` files.  
Two essential pages should be created: `default` and `error_default`; they will be created as empty pages on import if missing.  
If this directory is missing, empty essential pages will be created on the first import, while on update, pages import will be skipped.

#### The _forms_ directory

The _forms_ optional directory should contains Textpattern forms as `.txp` files.  
While forms should be grouped by types into dedicated subdirectories, they all need to use different names.  
Six essential pages should be created:

- article:
    - _article_listing_;
    - _default_;
    - _search_results_;
- comment:
    - _comments_;
    - _comments_display_;
    - _comment_form_;
- file:
    - _files_;
- link:
    - _plainlinks_;

They will be created as empty forms on import if missing.  
If this directory is missing, empty essential forms will be created on the first import while on update, stylesheets import will be skipped.

#### The _styles_ directory

The _styles_ optional directory should contains stylesheets as `.css` files.  
A `default` essential stylesheet should be created; it will be created as an empty stylesheet on import if missing.  
If this directory is missing, an empty essential stylesheet (`default`) will be created on the first import while on update, styles import will be skipped.

## Exporting/importing (sharing) front-end themes  (Work in progress)

(A forthcoming explanation or links to external community tutorials)
