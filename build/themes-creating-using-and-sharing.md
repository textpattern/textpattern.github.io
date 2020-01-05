---
layout: document
category: Construction and Presentation
published: true
title: "Themes: Creating, using, and sharing"
description: A complete journey through creating, managing, using, exporting, importing, and deleting Textpattern themes. Join the expedition.
---

# Themes: Creating, using, and sharing

This document is a complete journey through creating, managing, using, exporting, importing, and deleting Textpattern themes, all in context of default installation conditions, but kindly extrapolated to situations that aren’t. It just happens to be that default can go a long way. What you will not learn here is how to use Textpattern tags, HTML, or CSS; the fundamental composition of your theme templates.

**On this page**:

* Table of contents
{:toc}

## The big picture

Textpattern users, and theme designers in general, new and old, will find Textpattern theming exciting. Being that Textpattern is unlike any other content management system, so is the theming functionality and workflow it provides. Before diving in with how to do things, which you’ll have mastered by the end of this document, consider it all from higher up the ladder.

### A theme development ‘studio’

The addition of the Themes panel has essentially transformed how to think about building website architectures with Textpattern’s semantic building blocks. Textpattern designers will likely find the Themes panel is now the centre stage of the administration side. Indeed, the back-end is like a theme development studio, where you can work on many themes simultaneously, for employing on your website or sharing with the community. But don’t worry, writers and editors, Textpattern is still the same system to do what its creator envisioned, just write.

Theoretically speaking, you could hack a [theme package](#theme-package) together, from scratch and by hand, directly on your web server. The metadata is simple, and the files are text-based .txp format and familiar .css. And, sure, it can be a learning experience to sit on the cold garage floor with grease and gears.

This document, however, describes the sensible approach of using the new theming functionality in the back-end to ensure everything is organized and aligned correctly. Be at ease knowing that creating a new theme has no impact on a website’s operation or presentation if the pages and styles of the theme are not yet associated to the website’s functioning sections (easy to tell at a glance, as you will see). If not, you can freely modify the assets of any theme without worry.

### Default system references

In addition to the document you are reading, and your own installation of the software, the following resources make for handy references to default system conditions in case you go astray, or in the event you do not have an installation of your own yet, in fact. Make note of these:

* Front-end demo of default theme:
  * [Current stable release of theme](https://release-demo.textpattern.co/)
  * [Upcoming release of theme](https://dev-demo.textpattern.co/)  (in development)
* [Back-end demo of fresh software install](https://www.textpattern.co/demo) (first copy the username/password detail, then proceed to the ‘Admin’ version of choice)
* [Package assets: pages, forms, styles, metadata](https://github.com/textpattern/textpattern-default-theme) (go to dist/{name-of-them})

The front-end and back-end demos are routinely updated. The back-end demo offers a choice between the current version release and the next one under development.

### Author prefix and registration

If you intend to create themes to share with the community, you must [register and use an author prefix](/brand/author-prefixes-and-registration). Your chosen prefix must not already be taken, as indicated by the prefix lists. Having and using a personal prefix ensures no two themes will ever be created with the same *name*, thus tripping Textpattern up.

While prefixes are the same whether you create themes or develop plugins, the naming convention is different in each case to make it clear at a glance what product a name is representing. Basically, theme names use hyphens, and plugin names use underscores. If your prefix is *abc*, for example, your theme names would look like this: 

* {:.directory} **abc-theme-name**
{:.list--files}

And your plugin names, if you developed any, would look like this, as always:

* {:.directory} **abc_plugin_name**
{:.list--files}

### Theme package

A Textpattern theme is a collection of *page* templates, *form* markup, stylesheets, and a manifest file with a little metadata; all packaged together in a single directory bearing the theme’s name. The single directory can be thought of as a ‘package’ and its contents can be thought of as ‘assets’ organized in subdirectories by type.

To ensure a theme imported into your installation does not break your front-end, Textpattern augments imported themes with any missing assets needed by the default system, and provides empty placeholders where non-essential assets are missing. This is useful, say, when the grease-monkeys build from scratch and the integrity of a given theme’s structure is questionable.

Following is the expanded tree of a default package structure:

* {:.directory--open} abc-my-theme-name
  * {:.directory--open} pages
    * {:.document} archive.txp
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

Of the entire package, only two page templates and the metadata file are ‘essential’:

* {:.directory--open} abc-my-theme-name
  * . . .
    * . . .
    * {:.document} default.txp
    * {:.document} error_default.txp
  * . . .
  * {:.document} manifest.json
{:.list--files}

Theme designers would doubtfully ever share such a worthless theme, but if one did, and you actually wanted to use it, here’s how Textpattern would treat it at time of [importing](#importing-themes):

1. **Pages**. If the essential page templates were missing, they would be created as empty pages. If the entire /pages directory was missing, it would be created, as well the two essential pages with their default contents.
2. **Forms**. If non-essential form files are missing, they are added in place as empty files. If any form subdirectories are missing, or the entire /forms directory, the full /forms directory from the tree above will be created, and the eight form files will contain default Textpattern markup.
3. **Styles**. If the file is missing, it is added as an empty file. If the /styles directory is missing, the directory plus a blank default.css file will be created.
4. **Metadata**. The [metadata](#metadata) file is handled more simply; the focus is on any missing metadata values.

Textpattern will always augment a theme this way when importing or updating one, and any of the default package assets are missing. If, after importing or updating such a sparse theme, you later delete any of the augmented files, and that's your prerogative, and exported it that way for sharing, those files will remain missing in the exported theme. In other words, you would be sharing a worthless theme, just like the one shared with you. But that’s fine, because it would not break anything when someone else imported it at their end. Their installation of Textpattern would augment the theme with defaults and placeholders again just like described.

In the event you are new to Textpattern, a brief recap of what assets are might be useful.

#### Page assets

Pages are your web page templates, primarily built with HTML and [Textpattern tags](/tags/). Pages may be constructed solely with embedded markup, or by interchanging markup with form ‘includes’ (using [output_form](/tags/output_form) tags), or as a combination of embedded markup and form includes. Pages are assigned to one or more of your website’s sections. A one-to-many relationship between pages and sections, achieved with forms and conditional tag logic, can result in a site architecture that’s easier to manage and maintain. *Definitely* learn Textpattern tags!

#### Form assets 

[Forms](/build/form-templates-explained.md) are the named containers of markup components (conceptually the same as partials, snippets, or includes) for *inclusion* into page templates, or for nesting into other forms. Such ‘Russian doll’ construction of your website’s architecture using pages and forms enables building sophisticated website structures that are, again, easier to manage and maintain.

All form files must have unique names — across core forms and any custom forms created — and core form names will never be changed from their defaults. Compound form names use underscores between words (e.g. <i>**custom_form_name**</i>) and the resulting template file name should match (i.e. custom_form_name.txp).

#### Style assets

Of course, you know what stylesheets are. Styles need no further explanation except to emphasize that, like pages, they must be associated to one or more sections of your website in order to rule the presentation of them.

Incidentally, there is a very handy combination of controls, accessed via the Sections panel, for assigning pages and styles to a section in context of a theme, all in shot. That’s described later in the [Assigning multiple themes](#assigning-multiple-themes) section.

#### Metadata

The essential metadata rides with the package as a manifest.json file, in which the following six metadata items are found:

* title
* version
* description
* author
* author_uri
* txp-type

The first five items reflect data pulled from the theme editor, which is accessed via the [New theme](#create-from-scratch) button, or via [an existing theme’s name](#create-from-duplication) in the themes tables.

The `title` is always required so a value will always be present in a manifest file. The `title` is not the same thing as the theme *name*, but that’s cleared up in the forthcoming section on [creating new themes](#create-from-scratch). 

The `txp-type` and its associated value is a constant; it must always exist and never change.

The remaining four items reflect optional metadata fields, which nevertheless should be filled in by theme authors at time of creation when the data is known. If skipped, however, Textpattern will provide default values for the `version` and `author` items at time of theme creation; so these values will pass with an imported theme if not changed by the author. The `description` and `author_uri` (i.e. the Website field in the theme editor) items are treated as `none` values in metadata.

Altogether, a minimum-filled set of metadata for a theme would look like follows, where ‘username’ would be the theme author’s log in username for their Textpattern installation:   

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

### Scope of possibilities

Textpattern has always allowed you to create a different *presentation* for your website by merely editing the default stylesheet, or using one or more static files on your web server. But with the inclusion of themes functionality, you can make and collect many theme packages that can be:

* Swapped in and out on your entire website
* Used to create different presentations; one for each site section
* Used to create different site structures, to a certain degree
* Shared with the community, so others can benefit from your savvy design sense.

And that’s it for the big picture. Now we descend the ladder and get closer to the action! Everything from here on is framed in context of a fresh (out-of-the-box) install of the software, but the principles are the same whether your installation is brand new or an old workhorse that’s up to date. As long as you are using the [latest release](https://textpattern.com/start) of the software, at least, it will make sense. Any exceptions to this rule are made clear in context of instructions.

## Default theme

When looking at the Themes panel of a new installation of Textpattern, a single theme named ‘four-point-eight’ appears in the display table.

![Themes default item](/img/themes-default-item.png)

The ‘four-point-eight’ theme is live on your site in this default condition by fact it is the only existing theme.

When one or more other themes exist, an ‘In use’ indicator appears on the theme(s) that are actually live.

![Themes default in use](/img/themes-default-in-use.png)

To establish one or more additional themes, you either need to create them, discussed in the next sections, or [import](#importing-themes) them from an external source.

## Creating themes

When creating a new theme, it is not immediately live; it is in development mode. One or more themes are not actually live until you make them live.

Multiple options are available for creating a new development theme via the Themes panel. You can:

* Create a new theme from scratch directly via the **New theme** editor
* Duplicate a theme via the **With selected** controls
* Duplicate a theme via the **Edit theme** editor.

These approaches are similar in the functionality they use and all accomplish the same thing: establish a development theme to start working on. The differ only by the paths taken to complete the task, and the contexts of each (e.g. the **New theme** editor and **Edit theme** editor are the same thing, but accessed differently). 

Let’s look at each one under default conditions.

### Create from scratch

Creating a development theme from scratch means via the **New theme** editor. It is the most called-out way to get started by evidence of the prominent button bearing the same label right at top of the Themes panel.

![Themes new button click](/img/themes-new-button-click.png)

The **New theme** button opens the associated editor, which is simply a regular web form with six fields, the first two of which are required:

* Theme name (required) 
* Theme title (required)
* Theme version
* Theme description
* Theme author
* Theme website 

The six fields you see in the editing form correspond to four columns in the theme’s table on the main panel (Name, Title, Version, Author), and five of the metadata values in [the manifest.json file](#metadata). Fill in as much of the data as possible.

The theme’s name and title are not the same. If you registered an [author prefix](#author-prefix-and-registration), you should use that as the first part of the theme’s name (e.g. ‘abc-my-new-theme’). The title, on the other hand, like for a book, is the proper, ‘human-readable’ name and should be entered in capital case with no hyphens (i.e. ‘Title Like This’). You do not have to use your prefix in the title, only for the name; so you could have this pairing, for example:

* Theme name: abc-my-new-theme
* Theme title: My New Theme
{:.example}

As explained in the Metadata section earlier, if you decide to skip the optional fields for whatever reason, Textpattern will automatically fill the version and author fields with the following default values, where ‘username’ is the name you log into Textpattern with, which is not ideal but better than nothing:

* Theme version: 0.0.1
* Theme author: username
{:.example}

The remaining description and website fields will stay empty if not used. The website field is for a URL to where your theme can be downloaded online; whether at your own website, at a version control site, or, ideally, in Textpattern’s upcoming community [Themes website](https://themes.textpattern.com) ([repository](https://github.com/textpattern/textpattern-themes-website)). Options galore!

In any case, you should fill out the theme editing form as completely as possible, without relying on Textpattern’s defaults. The more complete the form, the more informative the manifest file will be. Any fields you can’t fill immediately, such as the website URL, can always be filled in later.

When the **New theme** metadata are saved, the resulting theme appears in the themes table.

![Active theme indicator](/img/active-theme-indicator.png)

The two other approaches that get to this point, both by way of theme duplication, are described next. Or jump to the [Active versus inactive themes](#active--activate-links) section to continue on the current journey.   

### Create from duplication

Using an existing theme package as a guide for your efforts is a good way to get started with making themes. There’s no better package to use in this case than the default theme that comes with Textpattern, already shown and functioning in the Themes panel upon installing the software.

This does not mean start working directly on the default theme, or you will be doing development on an active (live) theme and changing its nature. Instead, duplicate the default theme, thereby turning it into a new one.

While these instructions describe using the default theme (the only theme available in an out-of-the-box context of the software), you could duplicate any existing theme in the Themes panel; such as one that might have the kind of website structure you want to work closer with.

The following two approaches to duplication are the same regardless of what theme you duplicate.

#### Duplicate via selection controls

One way to duplicate the default theme is via the selection controls that work in combination with the check boxes in front of each theme record.

Proceed by checking the box next to the default theme in the themes table, then selecting the ‘Duplicate’ option from the **With 1 selected…** menu just below the table. 

![Duplicate via with selected controls](/img/select-duplicate.png)

Finally, clicking ‘OK’ when asked if you are sure.

The duplicated theme is added to the themes table and the name appears with ‘-copy’ on it. You can now uncheck the default theme’s box in the table, then proceed with changing the name, title, and other metadata values on the duplicated theme.

Do this by clicking the theme’s name in the Name column of the themes table to open the **Edit theme** editor (again, same as the **New theme** editor but in different context).

![Click default theme name](/img/click-default-theme-name.png)

Change the metadata in the six fields as thoroughly as possible. See, again, [Create from scratch](#create-from-scratch) for explanation of the fields. If you don’t have a value to give for an optional field, clear the field’s value so it is entirely blank. You can always fill it in later. When finished with changing all the metadata on your duplicated theme, save and close the form.

![Save edit theme form changes](/img/save-edit-theme-form-changes.png)

(The ‘Duplicate’ link you see in the image above is a hint to the next section.)

The duplicated theme will be added to the themes table in the main panel view. Once the default theme is duplicated and the metadata changed, the duplicated theme is, for all practical purposes, a *new* theme, just not visually unique yet.

#### Duplicate via theme editor

The last way to create a theme is the most direct (fewer clicks in the interface) yet least obvious way to create by duplication.

As before, click the name of the default theme under the Name column of the table.

![Click default theme name](/img/click-default-theme-name.png)

The **Edit theme** editor will open up, as you know, and show the default theme’s metadata so you can change it accordingly. See the process described in the previous section.

When done editing the data, click the ‘Duplicate’ link at bottom of the editor, at right of the Cancel button.

![Click duplicate link](/img/click-duplicate-link.png)

There is no confirmation dialogue asking if you are sure. You are simply taken back to the default panel view where your new theme is added to the themes table.

![New theme created](/img/new-theme-created.png)

You are now a master at creating development theme packages. Proceed with learning all the useful contexts between development and live themes.

## Key features of Themes panel

The Themes panel — as well associated assets panels and the Sections panel in relation — provide features and cues that make it easy to see what context a theme is in, or what context you are in when browsing about the relevant panels. This includes: whether a theme is active (live) or not, what assets are associated to which themes, what themes are assigned to sections, and contextual navigation between it all, including direct access to the templates needing edited.

After starting a new theme, have a look at the themes table on the Themes panel and note the useful features detailed in the following four sections. The first two of which, the Preview and Active/Activate links, are available version 4.8 of the software.

### Preview link

Immediately right of a theme’s name, under the Name column, are two links. The first link is ‘Preview’.

![Dev preview theme link](/img/dev-preview-theme-link.png)

When clicked, you are taken to the Sections panel and put in a development context for that theme. You will use this link a lot. [Previewing themes](#previewing-themes-in-development) is described more later.

### Active / Activate links

The other links under the Name column, working in tandem, are both status indicators and a [switching function](#switching-themes). As indicators, they enable you to tell from a glance if a given theme is live (active) or not. If a theme is noted with a green ‘Active’ link, it is live.

![Active theme indicator](/img/active-theme-indicator.png)

If the link is blue and reads ‘Activate’, the theme is not live, regardless of whether it’s still under development or just sitting ready and waiting to be used.

### Sections indicator

Another way to tell if a theme is active or not is to look under the Sections column of the themes table and note if any sections for a given theme are yet assigned. Any theme with ‘0’ section associations is not active (i.e. not live on the front-end).

![Sections column](/img/sections-column.png)

When a theme is not active, you can safely work on its associated assets without concern for it impacting website visitors. You can access a given theme’s assets either via the [preview context](#previewing-themes-in-development), or directly from the assets links in the themes table.

### Asset links

Under the Pages, Forms, and Styles columns of the themes table are linked numbers indicating how many assets of each type are associated to a given theme.

![Assets columns](/img/assets-columns.png)

When you duplicate the default theme (as the next image depicts), or any other theme, the existing assets in the source theme are cloned as well, logically, thus why the duplicated themes have the same number.

![Sections and assets columns](/img/sections-and-assets-columns.png)

Click any of these links and you are taken to the respective panels with the indicated number of assets in context. For example, clicking a ‘3’ under the Pages column for the duplicated theme lands you on the Pages panel with the associated three pages listed:

![Pages assets](/img/pages-assets.png)

You can tell which theme the panel assets are in context with by the appearance of the Theme selection menu above the assets list, showing the title of the relevant theme. (The Theme selection menu does not appear in assets panels when the Themes panel only has one theme.)

![Theme menu context](/img/theme-menu-context.png)

You can use the Theme selection menu to change theme context from any assets panel.

![Theme menu selection](/img/theme-menu-selection.png)

You will remain in that different theme context as you browse between the assets panels. You can switch theme context again at any time from any assets panel by using the Theme menu again, or by returning to the Themes panel and clicking a number link for a given theme’s assets, as described above.

At this point you should have a pretty good idea of contexts and cues as it concerns themes and their assets in relation to relevant panels. And these contexts are useful whether working on themes in development or browsing themes that are live.

## Previewing themes in development

The ability to preview theme composition and its relationship with website architecture, as well see how it looks on the front-end as you make changes, is rather important. Textpattern provides features to do it all in one place — in a sense, a development environment — without affecting the *live* conditions (though being careful not to disrupt things by changing system preferences and/or plugins along the way).

The door to it all is the [Preview link](#preview-link) found in the Themes panel; a convenient way to get into the development context of a single theme. You can preview an active theme as well, in which case you are in the production environment, working on a live theme, but here the focus is on development (i.e. non-active themes).

The preview context is in the Sections panel, where the table shows the theme’s component pages and styles in relation to the sections of your website’s structure. The first five columns of the table are particularly noteworthy.

![Dev preview theme sections](/img/dev-preview-theme-sections.png)

### Edit default section

Section names are links to the section editor, where you can edit which theme and assets serve as the active (live) theme. ’Default’ means live here; the production theme underlying the development preview context you are in.

If you want to edit the development theme’s page and style associations to sections, use the [selection controls from the preview context](#missing-assets-warning).

### View theme presentation

The other link you see in the Name column is perhaps the real prize of previewing a theme in development, the ‘View’ link. View links are found at right of section names. 

![Dev preview view link](/img/dev-preview-view-link.png)

Clicking a View link allows you to see the front-end rendering of your theme’s presentation for that particular section; the moment of fireworks. You’ll probably use the View links a lot if you develop themes in the back-end of Textpattern.

### Underlying active theme indication

The Theme column shows two theme *names* for each section. The first is a greyed-out name indicating the theme currently *active* on that section (i.e. live in the front-end of your website). But it’s *greyed out*; making clear you are not in live/active context here!

![Dev preview theme names](/img/dev-preview-theme-names.png)

The second theme name in the Theme column, not greyed out, is the ‘development’ theme you are currently in context with. In the image above, it is ‘abc-my-new-theme’, overriding Textpattern’s live (default) theme, ‘four-point-eight’.

### Assets association

The Page and Style columns make clear which page and style from the theme package aligns with which section.

![Dev preview assets links](/img/dev-preview-assets-links.png)

Making page and style assignments to sections has always been a standard procedure in Textpattern. But now it is done in context of theme packages; really tying the building blocks together.

### Missing assets warning

If you ever see an asset name indicated in red, it is a warning telling you that the theme version of that asset has been deleted, or otherwise missing in the theme.

![Dev preview assets links](/img/dev-preview-assets-links-red.png)

The greyed-out name before the red link (it is a link) reflects the live template that is working underneath the development theme’s overriding context. You can verify this in the [section editor](#edit-default-section).

If you deployed a development theme to live status when an assigned asset was missing, as indicated in red, your front-end presentation would break.

There are options for dealing with a situation like this, and you might discover what works best for you. The most direct and intuitive fix is to click the red link, which puts you in direct context of a new template for the missing asset, and save the template with the expected name, even if you leave the template empty at first. You can always fill in the markup later. Return to the theme preview again and the red warning indication is gone. Don’t forget to fill in the template, though, because an empty one is little better than none at all.

Or you could assign a different template to the section. It must already exist, of course, so if not, just use the previous approach. Otherwise, do this:

1. Check the box for the appropriate section in the table.
2. Select ‘Change theme/page/style’ from the selection controls under the table.
3. Ensure the ‘Development’ option is checked.
4. Select the correct theme (the context you are in).
5. Select the associated page and style (in context of the chosen theme).

![Dev preview change assets](/img/dev-preview-change-assets.png)

Click the ‘Go’ button when done and confirm when asked if you are sure.

You can use the links under the Page and Style columns to directly access and work on the assigned template at the other end, then return to preview context, click the [View links](#view-theme-presentation) on a section, and see how the presentation is shaping up.

## Production (live) themes

When you are ready to apply your theme and see how it looks on the front-side, you need to assign it to one or more sections that are setup and ready to go. It’s assumed here that your sections *are* ready to go, so focus is on the assigning part. How you do this might depend on what your theme objectives are.

### Switching themes

If you are using version 4.8 of the software, and you simply want to swap one theme for another across your website as it’s currently designed, return to the Themes panel and click the blue ‘Activate’ link found at right of the desired theme’s name.

![Click blue activate link](/img/click-blue-activate-link.png) [image needed]

Confirm ‘OK’ when asked if you are sure. The theme’s blue ‘Activate’ link then becomes a green ‘Active’ link and the previously active theme’s link reverts the other way.

In situations where you have created the themes and know how your website is constructed (i.e. assets between the different themes are paired well and using similar names), this switching process should work fairly smoothly. If switching between themes that you have imported, however, where the variability of theme package contents is potentially greater between sourced theme and your own website’s design, Textpattern will switch those parts that are compatible (similarly named, etc.) and ignore the others. 

Obviously you do not want to use this feature if your own new theme is not ready, or not being developed locally or on a staging server. And you might need to fiddle a bit with themes imported from somewhere else. But the ‘Active’ link still makes it easier to switch from one theme to another across your entire site.

### Assigning multiple themes

In this case you might like keeping the same general structure of your website but want to have a different layout and presentation for each section. The blue ‘Activate’ links described previously will not work in this case because that only switches one theme to the whole website — an easy theme switcher.

If you want a 1:1 assignment of a different theme to every website section, you will have to assign each theme and its associated page and style assets to the section individually. There are two approaches to this process — a one-section-at-a-time process if you want all sections looking different — but one approach is a little more direct than the other, thus the one presented here. 

Use the selection controls again, but this time in the Sections panel, where assigning assets to templates is done, and where the select options are different. Hop into the Sections panel, check the box by the name of a section to assign a theme to, and select ‘Change theme/page/style’ from the menu underneath.  

![Select ‘Change theme…’](/img/select-change-theme.png)

Yes, you can select more than one section at a time and thereby assign a given theme to multiple sections at once. This would be the ideal middle road when the ‘Activate’ theme switcher was too much (all or nothing) and a 1:1 pairing is too tedious. Alas, you’re on a tedious mission here because each website section must look like an Alphonse Mucha season, so push forth with one section assignment at a time.

The selection will reveal an associated and uncharacteristically rich set of controls for completely defining the assignment action.

![Select ‘Change theme…’ option](/img/select-change-theme-option.png)

Notice not one, but *two* checkboxes: ‘Development’ and ‘Live’. The ‘Development’ option, checked by default, works in relation to the [development previewing](#previewing-themes-in-development) functionality described earlier.[^sect] Assigning themes to sections allows *previewing* the changes. The ‘Live’ option, on the other hand, does what it implies; makes the themes-to-sections assignment immediately visible on the front-end of your website.

You _can_, select both options, if not often needed. One example for doing so might be to synchronize development and live conditions in one easy step; as a starting point, say, for diverged development later. Go ahead, try it. You only *live* once!

After the checkboxes come three select menus for Theme, Page, and Style. The Theme menu will show the current theme assignment by default. When you change that menu first, the Page and Style menu options adjust in relation. This ensures you only choose from page and style assets in the theme package; no mistaking it. Proceed with making the page and style selections accordingly.

Repeat the above process for each theme-to-section assignment. When done with all sections, return to the Themes panel to find that the blue ‘Activate’ links on the assigned themes have turned green and beam ’**Active**{:.success}’. Success!

[^sect]: A column now exists in the `txp_section` table for the development theme assets.

## ‘Database’ themes versus ‘disk’ themes

In the remaining sections, the exporting, importing, updating, and deleting processes are explained. Before getting there, a concept needs laid out for understanding. Some may snort at the obviousness of it. Others might appreciate it being made clear.

Textpattern interface strings, pophelp, and this documentation in relation — and probably even developers themselves, and you, eventually, when exchanging in the community forum — will occasionally use terms that refer to themes as either ‘database’ or ‘disk’. These distinguishing terms are in reference to themes at specific locations and contexts in the [importing](#importing-themes) and [deleting](#deleting-themes) scenarios, particularly.

As far as the location terminology goes: 

* **Themes panel = database theme**. When a theme is in the themes table of the Themes panel, it is in the database and thus can be referred to as a ‘database theme’.
* **<i>themes</i> directory = disk theme**. When the theme package is sitting in the <i>themes</i> directory, it is on the web server’s disk and thus referred to as a ‘disk theme’, ‘disk-based’ theme, or what have you.

When a theme is in both locations, as may often be the case in your workflows (though use of the <i>themes</i> directory is entirely optional[^diskoptional]), remember to distinguish a given theme between the two locations, because the outbound and inbound shuffling of themes involves making choices about how to treat database and disk themes in the process. And, of course, knowing the difference can be useful when seeking help.

It all centres around the <i>themes</i> directory located in your software’s root installation location, which is best thought of as a checkpoint for incoming (imported) and outgoing (exported) themes:

* {:.directory--open} {root}
  * {:.directory} files
  * {:.directory} . . .
  * {:.directory} **themes** 	
  * {:.document} . . .
  * {:.document} index.php
  * {:.document} . . .
{:.list--files}

This will be more clear as you stroll through the remaining sections of the garden.

[^diskoptional]: You do not have to use the <i>themes</i> directory (on disk) to build your own themes. The directory is only needed if you want to share themes, back them up, or put theme assets under version control.

## Exporting themes

You have learned how to create and manage themes at this point, so take it to the next logical step and export one for other people to use. Fame and fortune awaits!

When your theme is tweaked to perfection and ready to be shared, go to the Themes panel, check the theme’s box in the table, and use the **With selected** controls to select ‘Export to disk’ (i.e. to the <i>themes</i> directory).

![Select export](/img/select-export.png)

The selection will trigger another option to respond to by way of a checkbox: <q><i>Delete unused templates from disk on export</i></q>.

![Select export option](/img/select-export-option.png)

If you read the help tip for that option, it says:

> If checked, each template file in the selected theme(s) that does not have a corresponding item in the database will be permanently deleted from the disk-based theme. The result after completion of the action will be that your file system templates will reflect exactly what is in the database.

In other words, Textpattern is making a comparison between the theme package you want to export from the Themes panel, presumably the package designed as it should be, and any similarly named theme that might be sitting in the <i>themes</i> directory but not so well put together. So it’s asking, if there is such a theme there in the directory, and any asset files in it do not have similarly named files in the panel version (the one you are exporting), do you want those files deleted as part of the exportation action?

This is generally a good idea, and the check box is ticked by default to make that clear. This ensures that after exportation, there is a direct match between the database version (in the Themes panel) and the version on disk (in the <i>themes</i> directory).

Click the ‘Go’ button and confirm when asked if you are sure.

Now you are almost famous, but not quite yet. Still one more thing to do if you want your theme added to the new Themes website repository, coming soon. *Zip it up!* Textpattern will only host one file per theme package, and it must be compressed. So transfer the exported theme from the <i>themes</i> directory to an external location and make it a single, compressed <i>.gzip</i> or <i>.zip</i> file.

How you store the theme file anywhere else is up to you. But whatever the location, whether Themes website or your own, make sure the expected URL has been entered in the Website field of the theme’s metadata. Add that by clicking the name of the theme in the themes table to pull up the **Edit theme** editor.

## Importing themes

Unlike with exporting themes that you create, where the theme is already tabled in the Themes panel, importing requires first getting an externally sourced theme into the database — <i>themes</i> directory to the rescue!

First, use your (S)FTP software of choice to transfer the external theme (presumably downloaded from a shared location) to your <i>themes</i> directory on the server. A theme import control will appear in the Themes panel, above the themes table.

![Import theme menu](/img/import-theme-menu.png)

If you didn’t see the menu before, it is because it works in context with the <i>themes</i> directory, as follows:

1. **One or more disk themes with no database equivalents**. When one or more themes reside in the themes directory that are not in the database, the selection menu appears above the themes table with those themes listed, enabling their importation into the database. The menu is not visible if this condition is false.
2. **Disk themes match database themes**. When the same themes are equally represented in the database and on disk, or only in the database and not on disk, the contextual menu is hidden, since there is nothing to potentially import.
3. **Database theme deleted**. If/when you delete a theme from the database but not the disk-based version (assuming there is one), the Theme import menu will reappear, as described in condition 1, since that condition is true again.

You can then use the import menu to select the theme and initially import it into the database.

![Import theme menu select](/img/import-theme-menu-select.png)

The theme is now in your themes table to use as desired, and if the themes in the table match the themes in your directory, the import control will disappear again from the Themes panel.   *Poof!*

## Updating themes

If you are more into importing than exporting, you will eventually come to the point where one or more of the themes you have imported needs updated. This is the case when a theme designer (other than you) has released a newly improved version of a theme you may have imported once. Not wanting to miss out on the cutting edge or potential security improvements, you dutifully update your version with the latest release.

When you update a theme from disk, Textpattern creates an *exact* copy in the database from the disk version you are updating from, merging new elements and overwriting existing ones having the same asset name.

As with initially importing a theme, you begin by downloading and transferring the new version of the sourced theme to your <i>themes</i> directory. Then it is on to the Themes panel, where, like [described initially](#duplicate-via-selection-controls) you do the checkbox-and-select dance, but this time opting for ‘Update from disk’.

![Select update from disk](/img/select-update-from-disk.png)

When selected, another checkbox option is presented: <q><i>Delete unused templates from database on import?</i></q>[^update]

![Select update from disk option](/img/select-update-from-disk-option.png)

This second option is asking if you want to make your theme in the themes table (database version) the same as the one in the <i>themes</i> directory (disk version) by deleting files that might be different (in terms of existing) in the database version. This is generally a good idea, which is why the box is ticked by default, to keep versions consistent. But you might have your reasons for wanting variability, like wanting to customize the sourced theme. Hard to say.

Either way, click the ‘Go’ button and confirm when asked if you are sure.

[^update]: Should read ‘. . . on update?’ to be consistent with the initial selection action.

## Deleting themes

Themes can be deleted from the Themes panel, and the associated version in the <i>themes</i> directory as well, all in one go. Or you can opt to keep the disk version while just deleting the one from the database.

Deletion requires the **With selected** menu again, which you surely know by heart at this point. Check the box by the theme to be deleted from the themes table, then select the ‘Delete’ option from the menu.

![Select delete](/img/select-delete.png)

The selection triggers another option to respond to: <q><i>Delete theme templates from disk too</i></q>.[^delete]

![Select delete option](/img/select-delete-option.png)

Again, ‘disk’ is referring to the <i>themes</i> directory, and you are confirming to delete the package that may be sitting there. The box for this option is checked by default; a sign of the right choice most of the time. Proceed with ‘Go’ if you want to clean house entirely, and confirm ‘OK’ when asked if you are sure.

As a safety precaution, if theme packages on disk contain standard theme directories having non-standard subdirectories (e.g. <i>styles/sass</i>), they will not be deleted by Textpattern; rather, the package container will remain, along with the non-standard subdirectories and files inside the directory. This shell of a theme and its non-standard elements will need deleted manually since the software does not recognize such elements.

If you choose to delete the theme from the database but not from disk (i.e. unchecking the option box), the theme import control discussed in [Importing themes](#importing-themes) appears again at top of the themes table with the theme package still sitting on disk showing in the selection menu. You can then re-import the theme at any time (but then why delete it to begin with), or use the appearance of the theme in the import control as a reminder that the package in the <i>themes</i> directory also needs deleted.

[^delete]: The check-box option text is not phrased well, and missing punctuation. Should be: ‘And delete theme assets from disk?’
