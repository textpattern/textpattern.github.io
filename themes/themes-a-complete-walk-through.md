---
layout: document
category: Themes
published: true
title: Themes: A complete walk-through
description: A complete journey through creating, managing, using, exporting, importing, and deleting Textpattern themes. Join the expedition.
---

# Themes: A complete walk-through

This document is a complete journey through creating, managing, using, exporting, importing, and deleting Textpattern themes, all in context of default installation conditions, but kindly extrapolated to situations that aren’t. It just happens to be that default can go a long way.

**On this page**:

* Table of contents
{:toc}

## The big picture

Textpattern users and theme designers in general, new and old, will find Textpattern theming exciting. Being that Textpattern is unlike any other content management system, so is the theming functionality and workflow it provides. Before diving in with how to do things, which you’ll have mastered by the end of this document, consider it all from higher up the ladder.

### A theme development ‘studio’

The addition of the [Themes](https://docs.textpattern.com/administration/themes-panel) panel has essentially transformed how to think about building website architectures with Textpattern’s semantic building blocks. Textpattern designers will likely find the Themes panel is now the centre stage of the administration side. Indeed, the back-end is like a theme development studio, where you can work on many themes simultaneously, for employing on your website or sharing with the community. But don’t worry, writers and editors, Textpattern is still the same system to do what its creator envisioned. ‘Just write.’

Theoretically speaking, you could hack a theme package together, from scratch and by hand, directly on your web server. We know you masochistic types are out there. And, sure, it can be a learning experience to sit on the cold garage floor with grease and gears. For you folks, the last sections about default theme structure and importing themes may be useful reference.

Most of this document, however, describes the sensible approach of using the new theming functionality in the back-end. Be at ease knowing that creating a new theme has no impact on a website’s operation or presentation if the pages and styles of the theme are not yet associated to the website’s functioning sections (easy to tell at a glance). If not, you can freely modify any [theme package assets](#theme-assets) without worry.

### Default system references

Make note of the following resources. In addition to the document you are reading, and your own installation of the software, these resources make handy references to default system conditions:

* Front-end demo of default theme:
  * [Current stable release](https://release-demo.textpattern.co/)
  * [Next release in development](https://dev-demo.textpattern.co/)
* [Back-end demo of fresh software install](https://www.textpattern.co/demo) (first copy the username/password detail, then proceed to the ‘Admin’ version of choice)
* [Package assets: pages, forms, styles, metadata](https://github.com/textpattern/textpattern-default-theme) (go to *dist/{name-of-them}*)

The front- and back-end demos are routinely updated. The back-end demo offers a choice between the current version release and the next one under development.

### Author prefix and registration

If you intend to create themes to share with the community, you must [register and use an author prefix](https://docs.textpattern.com/brand/author-prefixes-and-registration). Your chosen prefix must not already be taken, as indicated by the prefix lists. Having and using a personal prefix ensures no two themes will ever be created with the same *name*, thus tripping Textpattern up.

While prefixes are the same whether you create themes or develop plugins, the naming convention is different in each case to make it clear at a glance what product a name is representing. Basically, theme names use hyphens, and plugin names use underscores. If your prefix is *abc*, for example, your theme names would look like this: 

* {:.directory} **abc-theme-name**
{:.list--files}

And your plugin names, if you developed any, would look like this:

* {:.directory} **abc_plugin_name**
{:.list--files}

### Theme assets

A Textpattern theme is a collection of *page* templates, *form* markup, stylesheets, and a manifest file with a little metadata; all packaged together in a single directory bearing the theme’s name. The single directory can be thought of as a ‘package’ and its contents can be thought of ‘assets’ organized in subdirectories by type.

A theme package’s organization, and how Textpattern handles it on importing and updating, is presented later. For now, out of the gate, be clear on what pages and forms are and how they come together.

[Pages](https://docs.textpattern.com/administration/pages-panel) are your web page templates, primarily built with HTML and [Textpattern tags](https://docs.textpattern.com/tags). Pages may be constructed solely with embedded markup, or by interchanging markup with form ‘includes’ (using [output_form](https://docs.textpattern.com/tags/output_form) tags), or as a combination of embedded markup and form includes. Pages are assigned to one or more of your website’s sections. A one-to-many relationship between pages and sections, achieved with forms and conditional tag logic, can result in a site architecture that’s easier to manage and maintain. *Definitely* learn Textpattern tags! 

[Forms](https://docs.textpattern.com/administration/forms-panel) are the named containers of markup components (conceptually the same as partials, snippets, or includes) for *inclusion* into page templates, or for nesting into other forms. Such ‘Russian doll’ construction of your website’s architecture using pages and forms enables building sophisticated website structures that are, again, easier to manage and maintain. See [Form templates explained](https://docs.textpattern.com/themes/form-templates-explained.md) if you need a deeper dive into forms.

Of course you know what stylesheets are; they need no further explanation except to emphasize that, like pages, they must be associated to one or more sections of your website in order to rule the presentation of them.

All assets, including the <i>manifest.json</i> file supplying the metadata, are required in a theme package, even if not all types are used in a given theme. That seeming discrepancy is better understood after reading the [Default package and handling](#default-package-and-handling) section later. Again, pages and styles are assigned to website [sections](https://docs.textpattern.com/administration/sections-panel), while forms are simply components of markup to be pieced together however you want in pages or other forms.

### Scope of possibilities

Textpattern has always allowed you to create a different *presentation* for your website by merely editing the default stylesheet, or using one or more static files on your web server. But with the inclusion of themes functionality, you can make and collect many theme packages that can be:

* Swapped in and out on your entire website
* Used to create different presentations; one for each site section
* Used to create different site structures, to a certain degree
* Shared with the community, so others can benefit from your savvy design sense.

Now we descend the ladder and get closer to the action! Everything from here on is framed in context of a fresh (out-of-the-box) install of the software, but the principles are the same whether your installation is brand new or an old workhorse that’s up to date. As long as you’re using the [latest release](https://textpattern.com/start) of the software, at least, it will make sense. Any exceptions to this rule are made clear in context of instructions.

## New themes

Multiple options are available for creating a new theme via the [Themes](https://docs.textpattern.com/administration/themes-panel) panel. You can:

* Create a new theme directly via the **New theme** form
* Duplicate a theme via the **With selected** controls
* Duplicate a theme via the **Edit theme** form.

All the approaches accomplish the same thing, which is establish a new theme to start working on. The approaches also use the same functionality, but just in different order and contexts (e.g. the **New theme** form and **Edit theme** form are the same, but accessed differently). 

Let’s look at each one in default system context.

### Create via the ‘New theme’ form

Creating a theme via the **New theme** form is the most called-out way to get started by evidence of the prominent button bearing the same label right at top of the Themes panel.

![Click New theme button](https://docs.textpattern.com/img/click-new-theme-button.png)

The **New theme** button opens the associated form. The form is composed of six metadata fields, the first two of which are required:

* Theme name (required) 
* Theme title (required)
* Theme version
* Theme description
* Theme author
* Theme website 

The six fields you see in the editing form correspond to four columns in the theme’s table on the main panel (Name, Title, Version, Author), and five of the metadata values in [the <i>manifest.json</i> file](#the-manifest-json-file).

The theme’s name and title are not the same. If you registered an [author prefix](#author-prefixes-and-registration), you should use that as the first part of the theme’s name (e.g. ‘abc-my-new-theme’). The title, on the other hand, like for a book, is the proper, ‘human-readable’ name and should be entered in capital case with no hyphens (i.e. ‘Title Like This’). You do not have to use your prefix in the title, only for the name; so you could have this pairing, for example:

* Theme name: abc-my-new-theme
* Theme title: My New Theme

If you decide to skip the optional fields for whatever reason, Textpattern will automatically fill the version and author fields with the following default values:

* Theme version: 0.0.1
* Theme author: {username} (i.e. the name you log in with)

The remaining description and website fields will stay empty if not used. The website field is for adding a URL to where your theme can be downloaded online.

In any case, you should fill out the form as completely as possible, without relying on Textpattern’s defaults. The more complete the form, the more informative the manifest file will be. Any fields you can’t fill immediately, such as the website URL, can always be filled in later.

When the **New theme** form is saved, the resulting theme appears in the themes table.

![Active theme indicator](https://docs.textpattern.com/img/active-theme-indicator.png)

The two other approaches that get to this point, both by way of theme duplication, are described next. Or jump to the [Active versus non-active themes](#active-versus-non-active-themes) section to continue on the current journey.   

### Duplicating themes

Using an existing theme package as a guide for your efforts is a good way to get started with making themes. There’s no better package to use in this case than the default theme that comes with Textpattern, already shown and functioning in the Themes panel upon installing the software.

This does not mean start working directly on the default theme, or you will be doing development on an active (live) theme and changing its nature. Instead, duplicate the default theme and turn it into a new one.

While these instructions describe using the default theme (the only theme available in an out-of-the-box context of the software), you could duplicate any existing theme in the Themes panel; such as one that might have the kind of website structure you want to work closer with.

The following two approaches to duplication are the same regardless of what theme you duplicate.

#### Duplicate via the ‘With selected’ control

One way to duplicate the default theme is via the **With selected** controls that work in combination with the check boxes in the themes table.

Proceed by checking the box next to the default theme in the themes table, then selecting the ‘Duplicate’ option from the **With 1 selected**… menu just below the table, and, finally, clicking ‘OK’ when asked if you are sure. 

![Duplicate via with selected controls](https://docs.textpattern.com/img/duplicate-via-with-selected-controls.png)

The duplicated theme is added to the themes table and the name appears with ‘-copy’ on it. You can now uncheck the default theme’s box in the table.

Now is also a good time to change the name, title, and other metadata fields on the duplicated theme. Do this by clicking the theme’s name in the Name column of the themes table to open the **Edit theme** form (same as the **New theme** form but in different context).

![Click default theme name](https://docs.textpattern.com/img/click-default-theme-name.png)

Change the metadata in the six fields as thoroughly as possible. See [Create via the ‘New theme’ form](#create-via-the-new-theme-form) for explanation of the fields. If you don’t have a value to give for an optional field, clear the field’s value so it’s entirely blank. You can always fill it in later. When finished with changing all the metadata on your duplicated theme, save and close the form.

![Save edit theme form changes](https://docs.textpattern.com/img/save-edit-theme-form-changes.png)

(The ‘Duplicate’ link you see in the image above is a hint to the next section.)

The duplicated theme will be added to the themes table in the main panel view. Once the default theme is duplicated and the metadata changed, the duplicated theme is, for all practical purposes, a *new* theme.

#### Duplicate via the ‘Edit theme’ form

The last way to create a theme is the most direct (fewer clicks in the interface) yet least obvious way to *duplicate* a theme.

As before, click the name of the default theme under the Name column of the table.

![Click default theme name](https://docs.textpattern.com/img/click-default-theme-name.png)

As you now know, the **Edit theme** form will open up and show the default theme’s metadata so you can change it accordingly. See the process described in the previous section.

When done editing the form, click the ‘Duplicate’ link under the form, at right of the Cancel button.

![Click duplicate link](https://docs.textpattern.com/img/click-duplicate-link.png)

There is no confirmation dialogue asking if you are sure. You are simply taken back to the default panel view where your new (revised) theme is added to the themes table.

![New theme created](https://docs.textpattern.com/img/new-theme-created.png)

## Contexts and associations

The administration panels provide features and cues that make it easy to see what theme context you are in from any relevant panel. This includes: whether a theme is active or not, what assets are associated to which themes, what themes are assigned to sections, and contextual navigation between it all. 

### Active / Non-active

You can tell from a glance in the Themes panel if a given theme is active or not. Look under the Sections column of the themes table. Any theme with ‘0’ section associations is not active (i.e. not live on the front-end).

![Sections column](https://docs.textpattern.com/img/sections-column.png)

When a theme is not active, you can work on the associated assets without concern for it impacting website visitors or any other problems.

In version 4.8, soon, a new feature is introduced. Under the Name column of the themes table, at right of the name, will be an ‘Active’ link. When the link is blue, the theme is not active. When the link is green, the theme is active.

![Active theme indicator](https://docs.textpattern.com/img/active-theme-indicator.png)

More about using this feature and what is happening behind the scenes is presented in [Same structure; different theme](#same-structure-different-theme).

### Assets association

Under the Pages, Forms, and Styles columns of the themes table are linked numbers indicating how many assets of each type are associated to a given theme.

![Theme-assets-links](https://docs.textpattern.com/img/assets-columns.png)

When you duplicate the default theme (as the next image depicts), or any other theme, the existing assets in the source theme are cloned as well, logically, thus why the duplicated themes have the same number.

![Sections and assets columns](https://docs.textpattern.com/img/sections-and-assets-columns.png)

Click any of these links and you are taken to the respective panels with the indicated number of assets in context. For example, clicking a ‘3’ under the Pages column for the duplicated theme lands you on the Pages panel with the associated three pages listed:

![Pages assets](https://docs.textpattern.com/img/pages-assets.png)

You can tell which theme the panel assets are in context with by the appearance of the Theme selection menu above the assets list, showing the title of the relevant theme.[^themebox]

![Theme menu context](https://docs.textpattern.com/img/theme-menu-context.png)

You can use the Theme selection menu to change theme context from any assets panel.

![Theme menu selection](https://docs.textpattern.com/img/theme-menu-selection.png)

You will remain in that different theme context as you browse between the assets panels. You can switch theme context again at any time from any assets panel by using the Themes menu again, or by returning to the Themes panel and clicking a number link for a given theme’s assets, as described above.

[^themebox]: The box does not appear in assets panels when the Themes panel only has one theme.

### Sections preview

(Forthcoming)

## Applying themes

When you are ready to apply your theme and see how it looks on the front-side, you need to assign it to one or more [sections](https://docs.textpattern.com/administration/sections-panel) that are setup and ready to go. It’s assumed here that your sections *are* ready to go, so focus is on the assigning part. How you do this might depend on what your theme objectives are.

### Switching themes

If you are using version 4.8 of the software, and you simply want to swap one theme for another across your website as it’s currently designed, return to the Themes panel and click the blue ‘Active’ link found at right of the desired theme’s name.

![Click blue active link](https://docs.textpattern.com/img/click-blue-active-link.png)

Confirm ‘OK’ when asked if you are sure. The theme’s ‘Active’ link then becomes green and the previously active theme’s link turns blue.

In situations where you have created the themes and know how your website is constructed (i.e. assets between the different themes are paired will and using similar names), this switching process should work fairly smoothly. If switching between themes that you have imported, however, where the variability of theme package contents is potentially greater between themes, Textpattern will switch those parts that are compatible (similarly named, etc.) and ignore the others. 

Obviously you don’t want to use this feature if your own new theme is not ready, or not being developed locally or on a staging server. And you might need to fiddle a bit with themes imported from somewhere else. But the ‘Active’ link still makes it easier to switch from one theme to another across your entire site.

### Assigning multiple themes

In this case you might keep the same general structure of your website but want to have a different layout and presentation for each section. But you can’t simply use the ‘Active’ links as before because that only switches one theme to the whole website.

For this situation, you must manually assign themes, and the relevant page and style in the theme package, to each section, one at a time, using the **Edit section** controls via the [Sections](https://docs.textpattern.com/administration/sections-panel) panel.

First click the name of a section to open.

![Click section name](https://docs.textpattern.com/img/click-section-name.png)

Then select the appropriate theme, and the relevant page and style from the theme package, using the three provided controls, respectively.

![Edit section assignments](https://docs.textpattern.com/img/edit-section-assignments.png)

In version 4.8, the controls are more integrated. After selecting the theme you want, the page and style options automatically change to reflect what is available in the selected theme package. Thus, whatever pages and styles are listed in the selection controls; they are tied to the right theme.

## Sharing themes

Sharing is about exporting and importing themes, and the software’s handling of shared themes when package contents are inconsistent with default requirements. In relation to it all is the staging directory, <i>themes</i>, in the root of your software’s installation location:

* {:.directory--open} {root}
  * {:.directory} files
  * {:.directory} . . .
  * {:.directory} **themes** 	
  * {:.document} . . .
  * {:.document} index.php
  * {:.document} . . .
{:.list--files}

**A point of clarification**: When talking about themes between the Themes panel and the <i>themes</i> directory, Textpattern interface strings and pophelp will sometimes use technical terms like ‘database themes’ and ‘disk themes’. Understand that any reference to a ‘theme in the database’, or ‘database theme’, or what have you is meaning themes already created in — or imported into — the Themes panel. Likewise, any reference to ’themes on the disk’ or ‘disk-based themes’, and so on is meaning theme packages sitting inside the <i>themes</i> directory highlighted above. Just so you know.     

### Exporting themes

You have learned how to create and manage themes at this point, so take it to the next logical step and export one for other people to use. Fame and fortune awaits!

When your theme is tweaked to perfection and ready to be shared, go to the Themes panel, check the theme’s box in the table, and use the **With selected** controls to select ‘Export to disk’ (i.e. to the <i>themes</i> directory).

![Select export](https://docs.textpattern.com/img/select-export.png)

The selection will trigger another option to respond to by way of a checkbox: *Delete unused templates from disk on export*.

![Select export option](https://docs.textpattern.com/img/select-export-option.png)

If you read the help tip for that option, it says:

> If checked, each template file in the selected theme(s) that does not have a corresponding item in the database will be permanently deleted from the disk-based theme. The result after completion of the action will be that your file system templates will reflect exactly what is in the database.

In other words, Textpattern is making a comparison between the theme package you want to export from the Themes panel and any similarly named theme that might be sitting in the themes directory. So it’s asking, if there is such a theme there, and any asset files in it do not have similarly named files in the panel version (the one you are exporting), do you want those files deleted as part of the exportation action?

This is generally a good idea, and the check box is ticked by default. This ensures that after exportation, there is a direct match between the database version (in the Themes panel) and the version on disk (in the <i>themes</i> directory).

Click the Go button and confirm when asked if you are sure.

You can now move or copy the exported theme (the one on disk) to a new location where others may download it for use. Whatever location that is, make sure the URL has been entered in the Website field of the theme’s metadata (refer to [duplicating a theme](#duplicate-via-the-with-selected-control)).

### Default package and handling

To ensure a theme imported into your installation does not break your front-end, Textpattern augments imported theme packages with any missing essential elements otherwise needed by the default system. This is useful, say, when theme designers choose the hack-from-scratch approach instead of the guided create-via-Textpattern approaches described in earlier sections. Or when the package organization that Textpattern expects is missing.

The following expanded directory is the default theme package structure that Textpattern expects and accounts for, whether or not a given element is actually needed in a theme:

* {:.directory--open} abc_theme_name
  * {:.directory--open} pages
    * {:.document} archive.txp[^archive]
    * {:.document} default.txp
    * {:.document} error_default.txp
  * {:.directory} forms
    * {:.directory--open} article
      * {:.document} article_listing.txp
      * {:.document} default.txp
      * {:.document} search_results.txp
    * {:.directory} category (empty)
    * {:.directory--open} comment
      * {:.document} comments.txp
      * {:.document} comments_display.txp
      * {:.document} comment_form.txp
    * {:.directory--open} file
      * {:.document} files.txp
    * {:.directory--open} link
      * {:.document} plainlinks.txp
    * {:.directory} misc (empty)
    * {:.directory} section (empty) 
  * {:.directory--open} styles
    * {:.document} default.css
  * {:.document} manifest.json
{:.list--files}

Each asset type, and Textpattern’s handling of them when importing themes, is described in the next sections, beginning with the metadata file

[^archive]: The <i>archive.txp</i> page, though included in the default theme package, is not a required page template, nor is it used (i.e. associated with a section) in the [default website structure](https://dev-demo.textpattern.co/), which is why you don’t see an Archive page in the main navigation. This page is subject to being removed in a future release of the default theme, but you may freely use or remove it in your own theme package, no problem.

#### The *manifest.json* file

Theme packages will include the essential <i>manifest.json</i> file, in which the following six metadata items are found:

* title
* version
* description
* author
* author_uri
* txp-type

The first five items reflect the last five fields in the **New theme** and **Edit theme** form described in earlier sections (the `author_uri` data item equals the Website field). If you provide data for all six fields when creating a theme, these five metadata items will be filled in the <i>manifest.json</i> file with the same data values.

Again, as detailed earlier in this document, only two fields are mandatory (Name and Title), and only two more (Version and Author) will be filled automatically with default data if the remaining four fields are ignored. So if the four optional fields are skipped at time of creating the theme, and the theme designer doesn’t update the metadata any time before exporting the theme, the manifest file will look similar to this:   

```json
{
"title": "My New Theme",
  "version": "0.0.1",
  "description": "none",
  "author": "username",
  "author_uri": "none",
  "txp-type": "textpattern-theme"
  }
```

The last item (`txp-type`) and it’s associated value is a constant; it must always exist and never change. The other five  items can be changed anytime via the Themes panel, as already described earlier. But here’s a reminder: Click the theme’s name in the Name column of the themes table to bring up the **Edit theme** form.

![Click theme name](https://docs.textpattern.com/img/click-theme-name.png)

#### The *pages* directory

The *pages* directory is required in a theme package because at least two essential pages must exist (though you can add more): 

* {:.directory--open} pages
  * . . .
  * {:.document} default.txp
  * {:.document} error_default.txp
  * . . .
{:.list--files}

If the above two pages are missing at importation, the software will create them automatically as empty pages. If the entire *pages* directory is missing, Textpattern will create it, and the two essential pages will be included with their default contents.

Future updates of the imported theme (i.e. after the theme author releases a new version) will not overwrite the elements Textpattern added unless the new theme version provides new elements since missing.

#### The *forms* directory

The optional *forms* directory contains seven subdirectories, the names of which match the form type names built into core Textpattern:

* {:.directory--open} forms
  * {:.directory--open} article
    * {:.document} article_listing.txp
    * {:.document} default.txp
    * {:.document} search_results.txp
  * . . .
  * {:.directory--open} comment
    * {:.document} comments.txp
    * {:.document} comments_display.txp
    * {:.document} comment_form.txp
  * {:.directory--open} file
    * {:.document} files.txp
  * {:.directory--open} link
    * {:.document} plainlinks.txp
  * . . .
{:.list--files}

When forms are used in a theme, all form files must have unique names — across core forms and any custom forms created — and core form names will never be changed from their defaults. Compound form names use underscores between words (e.g. <i>**custom_form_name**</i>) and the resulting template file name should match (i.e. <i>custom_form_name.txp</i>).

If any of the form template files are missing in a theme package at import, Textpattern will automatically create them as empty files on first import of the theme. If the entire *forms* directory is missing, the full forms tree above will be created, and the eight form files will contain default Textpattern markup.

Future version updates of the theme will not overwrite the added directories and form templates unless the updated theme provides these elements as changes.

#### The *styles* directory

The optional *styles* directory contains the stylesheet file. If the file is missing in the *styles* directory of a theme package, Textpattern will automatically create it as an empty stylesheet on first import of the theme. If the *styles* directory is missing, an empty directory with a blank *default.css* file will be created on the first import. The default files will not be overwritten in future updates of the theme unless the new theme version provides files by the same name.

### Importing themes

Unlike with exporting themes that you create, where the theme is already tabled in the Themes panel, importing requires first getting an externally sourced theme into the database. What that means is, if you have no external themes transferred to the <i>themes</i> directory (i.e. on disk), or none there are different from what are already tabled in the Themes panel, you won’t find any way to import a theme no matter how hard you look. That’s because the initial import theme menu is contextual to the <i>themes</i> directory. If either of the following two conditions are true, you won’t see the menu in the Themes panel:

* No external themes exist in the <i>themes</i> directory
* No external themes exist in the <i>themes</i> directory that are not already listed in the Themes panel table.

When an external theme has been added to the <i>themes</i> directory, defying the conditions above, you’ll see the contextual menu appear at top of the Themes panel, enabling you to ‘import’ the new external theme(s) that are sitting there.

![Import theme menu](https://docs.textpattern.com/img/import-theme-menu.png)

You can then use the menu to select the theme you are after and initially ‘Import’ it to the themes table.

![Import theme menu select](https://docs.textpattern.com/img/import-theme-menu-select.png)

At this point the theme is available to use and/or modify as you would any theme in your Themes panel.

If you later delete the theme from the Themes panel and not the equivalent package sitting in the directory, breaking the second condition above, the theme import control appears at top of the themes table again with the external theme appearing in the control’s selection menu. You can then re-import the theme, if so desired (but then why delete to begin with), or use the appearance of the control as a reminder that the package in the <i>themes</i> directory also needs deleted. Only when all external themes sitting in the <i>themes</i> directory are in the themes table, too, will the import control not be present. 

### Updating imported themes

If you are more into importing than exporting, you will eventually come to the point where one or more of the themes you have imported needs updated. This is the case when a theme designer has revised the source theme and distributed a new and improved version. Not wanting to miss out on the cutting edge, you dutifully update your version with the latest release, as follows

## Removing themes

/ Hang tight, to be revised /

Themes can be removed (deleted) from the themes panel, and the associated files can be deleted as needed.  

As a safety precaution, theme directories with non-standard subdirectories (e.g. *styles/sass*) will require manual deletion after the directories and files recognized by core functionality are deleted.