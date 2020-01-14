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

#### Metadata

The essential metadata rides with the package as a manifest.json file, in which the following six metadata items are found:

* title
* version
* description
* author
* author_uri
* txp-type

The first five items reflect data pulled from the theme editor, which is accessed via the [New theme](#create-from-scratch) button, or via [an existing theme’s name](#create-from-duplication) in the themes tables.

The `title` is always required by Textpattern, but it’s not a required field in the form editor when creating a theme. If you don’t provide a custom title, Textpattern will generate one based on the required theme name (explained more later in the [Create from scratch](#create-from-scratch) section). Either way, a `title` will always be present in a manifest file, but it is better if you create a custom value rather than rely on Textpattern to generate one for you. 

The `txp-type` and its associated value is a constant; it must always exist and never change.

The remaining four items reflect more optional metadata fields, which nevertheless should be filled in when the data is known. If skipped, Textpattern will provide default values for the `version` and `author` items at time of theme creation; so these values will pass with an imported theme if not changed by the author. The `description` and `author_uri` (i.e. the Website field in the theme editor) items are treated as `none` values in metadata.

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

When clicking the theme’s name, the **Edit theme** form opens up showing you the default theme’s metadata properties. See the [Create from scratch](#create-from-scratch) section for more about these fields.

Although there is no indication at this initial default state, the ‘four-point-eight’ theme is live on your site by fact it is the only existing theme.

When one or more other themes exist, two more elements appear  next to the default theme’s name:

* an ‘Assign sections’ link
* an ‘In use’ pill indicator making it clear the theme is live on the front end.

![Themes default in use](/img/themes-default-in-use.png)

To establish one or more additional themes, you either need to create them, discussed in the next sections, or [import](#importing-themes) them from an external source.

## Development themes preference

A single, important preference is associated with themes development. It is located at Admin > Preferences > Admin, second preference from bottom of screen: *Enable development theme preview?*.

As the help tip for that preference says, when this is active, and it is by default, <q>users with sufficient privileges [initially Publisher and Designer roles] can safely develop and preview a new theme while all other users will still see the old theme (until the new one is deployed).</q>

Presumably you are reading this because you want to develop and preview new themes, so make ensure the preference is set to ‘Yes’. The rest of this documentation assumes this setting.

See more about the active behaviour of this preference in the [Preview theme presentation](#preview-theme-presentation) section.

## Creating themes

When creating a new theme, it is not immediately live; it is in development mode. One or more themes are not actually live until you [make them live](#production-live-themes).  

Multiple options are available for creating a new development theme via the Themes panel. You can:

* Create a new theme from scratch directly via the **New theme** editor
* Duplicate a theme via the multi-selection controls
* Duplicate a theme via the **Edit theme** editor.

The **New theme** editor and **Edit theme** editor are the same thing, but accessed differently. 

Let’s look at each one under default conditions.

### Create from scratch

Creating a development theme from scratch means via the **New theme** editor. It is the most called-out way to get started by evidence of the prominent button bearing the same label right at top of the Themes panel.

![Themes new button click](/img/themes-new-button-click.png)

The **New theme** button opens the associated editor; a regular web form with six fields, the first of which is required:

* Theme name (required) 
* Theme title
* Theme version
* Theme description
* Theme author
* Theme website 

The six fields you see correspond to four columns in the theme’s table on the main panel (Name, Title, Version, Author), and five of the metadata values in [the manifest.json file](#metadata).

When creating a new theme, regardless of which way you do so, fill in as much of the data as possible.

The theme’s name and title are not the same. If you registered an [author prefix](#author-prefix-and-registration), you should use that as the first part of the theme’s name (e.g. ‘abc-new-theme’). The title, on the other hand, is the proper, human-readable name and is ideally capital case with no hyphens (i.e. ‘Title Like This’). You should not use your prefix in the title, only for the name; so you could have this pairing, for example:

* Theme name: abc-new-theme
* Theme title: My New Theme
{:.example}

If you decide to skip the optional fields for whatever reason, Textpattern will automatically fill the title, version, and author fields with the following default values, where ‘username’ is the name you log into Textpattern with:

* Theme title: Abc-new-theme
* Theme version: 0.0.1
* Theme author: username
{:.example}

These automatic defaults are better than nothing, but not ideal. The title, for example, does not need an [author prefix](#author-prefix-and-registration) (indeed it does not make any sense), nor should it be hyphenated, but that’s how Textpattern will use the name value if you do not add your own custom title.

The remaining description and website fields will stay empty if not used. The website field is meant for a URL to where your theme can be downloaded from online; whether your own website, a version control site, or, ideally, in Textpattern’s upcoming community [Themes website](https://themes.textpattern.com) ([repository](https://github.com/textpattern/textpattern-themes-website)).

Again, fill out the form fields as completely as possible without relying on Textpattern’s defaults. The more complete the form, the more informative the manifest file will be. Any fields you can’t fill immediately, such as the website URL, can always be filled in later when available.

When the **New theme** metadata are saved, the resulting theme appears in the themes table.

![Themes default in use](/img/themes-default-in-use.png)

The remaining two approaches that arrive at this point make use of theme duplication functionality. If you’re happy knowing one method to create a new development theme instead of all three methods, jump to the [Key features of Themes panel](#key-features-of-themes-panel) section to continue on the current journey.   

### Create from duplication

Using an existing theme package as a guide for your efforts is a good way to get started with making themes. There’s no better package to use in this case than the default theme that comes with Textpattern, already shown and functioning in the Themes panel upon installing the software.

This does not mean start working directly on the default theme, or you will be changing a live theme. Instead, duplicate the default theme first, thereby turning it into a new development theme to work on.

While these instructions describe using the default theme (the only theme available in an out-of-the-box context of the software), you could duplicate any existing theme in the Themes panel; such as one that might have the kind of website structure you want to work closer with.

The following two approaches to duplication are the same regardless of what theme you duplicate.

#### Duplicate via selection controls

One way to duplicate a theme is via the selection controls on the Themes panel. They work in combination with the check boxes in front of each theme record.

Proceed by checking the box next to one or more themes (in this case the default theme is demonstrated), then select the ‘Duplicate’ option from the **With 1 selected…** menu just below the table. 

![Themes duplicate via selection controls](/img/themes-duplicate-via-selection-controls.png)

Click ‘OK’ when asked if you are sure.

The duplicated theme is added to the themes table and the name appears with ‘_copy’ on it. You can now uncheck the default theme’s box in the table, then proceed with changing the name, title, and other metadata values on the duplicated theme. Do this by clicking the theme’s name in the Name column of the themes table to open the **Edit theme** editor (again, same as the **New theme** editor but in different context).

![Themes open edit theme editor](/img/themes-open-edit-theme-editor.png)

Change the metadata in the six fields as thoroughly as possible. See, again, [Create from scratch](#create-from-scratch) for explanation of the fields. If you don’t have a value to give for an optional field, clear the field’s value so it is entirely blank. You can always fill it in later. When finished with changing all the metadata on your duplicated theme, click the yellow Save button to save changes and close the form.

![Themes save edit theme changes](/img/themes-save-edit-theme-changes.png)

(The ‘Duplicate’ link you see in the image above is a hint to the next section. Do not click it now.)

The duplicated theme will be added to the themes table in the main panel view. Once the default theme is duplicated and the metadata changed, the duplicated theme is, for all practical purposes, a *new* non-live theme that you may further development to have a unique appearance.

#### Duplicate via theme editor

The last way to create a theme by duplication is the most direct way (fewer clicks in the interface) yet least obvious.

Begin by clicking the name of the default theme under the Name column of the table (or using any existing theme) to bring up the **Edit theme** editor.

![Themes default item](/img/themes-default-item.png)

The editor will show the theme’s metadata as expected. Change all the metadata as described in the previous section. When done, click the ‘Duplicate’ link at bottom of the editor, at right of the Cancel button. Do not click the Save button or you will overwrite the metadata for the source theme!

![Themes click duplicate link](/img/themes-click-duplicate-link.png)

There is no confirmation dialogue asking if you are sure when clicking the ‘Duplicate’ link. You are simply taken back to the default panel view where your new theme is added to the themes table.

![Themes new duplication](/img/themes-new-duplication.png)

You are now a master at creating development theme packages. Proceed with learning about useful contexts and cues.

## Key features of Themes panel

The Themes panel — as well as associated assets panels and the Sections panel — provide features and cues that make it easy to see what context a theme is in, or what context you are in when browsing about the relevant panels of the back end. These include:

* Whether a theme is in use (live) or not
* What assets are associated to which themes
* What themes are assigned to sections
* The contextual navigation between it all, including direct access to the templates that need editing.

After starting a new development theme, as described in the previous sections, have a look at the themes table on the Themes panel and note the useful features detailed in the following four sections.

### ‘Assign sections’ link

Immediately after a theme’s name, under the Name column of the themes table, is a link, ‘Assign sections’. As the link text suggests, you would click this link if you wanted to assign a given theme’s assets to existing sections.

![Themes assign sections link](/img/themes-assign-sections-link.png)

In fact, you can assign a theme’s assets to existing sections for both live and development environments at the same time (or just one or the other), and the default context sets you up to do both at once. See the [Assigning sections](#assigning-sections) section for much more on this functionality.

### ‘In use’ indicator

As mentioned in the [Default theme](#default-theme) section, any themes that are live on the front end will be indicated by a green ‘In use’ pill. But, as also pointed out later in [Assigned sections indication](#assigned-sections-indication), any themes in development will appear with an orange ‘In use’ pill.

While you are likely to use a single theme most of the time, thus only see a single ‘In use’ pill in the Themes panel, it is possible to [assign different themes on different sections](#different-themes-on-different-sections) to the front end, in which case each theme used will appear with an orange or green ‘In use’ pill indicator, accordingly.

### Sections indication

Another way to tell if a theme is live (in use) or not is to look under the Sections column of the themes table in the Themes panel and note if any sections for a given theme are yet assigned. Any theme with ‘0’ section associations is not in use (i.e. not live on the front-end).

![Themes panel sections column](/img/themes-panel-sections-column.png)

When a theme is not in use, you can safely work on its associated assets without concern for it impacting website visitors.

### Asset links

Under the Pages, Forms, and Styles columns of the themes table in the Themes panel are linked numbers indicating how many assets of each type are associated to a given theme.

![Themes panel assets columns](/img/themes-panel-assets-columns.png)

When you duplicate the default theme (as the next image depicts), or any other theme, the existing assets in the source theme are cloned as well, logically, thus why the duplicated themes have the same number.

![Themes panel sections and assets](/img/themes-panel-sections-and-assets.png)

These numbers can change between themes, of course, as you add or remove assets in a given theme.

Click any of these numbered links and you are taken to the respective panels with the indicated number of assets in context. For example, clicking a ‘3’ under the Pages column for the duplicated theme lands you on the Pages panel with the associated three pages listed:

![Themes pages panel assets](/img/themes-pages-panel-assets.png)

You can tell which theme the panel assets are in context with by the appearance of the Theme selection menu above the assets list showing the title of the relevant theme. (The Theme selection menu does not appear in assets panels when the Themes panel only has one theme.)

![Themes menu context](/img/themes-menu-context.png)

The Theme selection menu can be used to change theme context from any assets panel.

![Themes menu selection](/img/themes-menu-selection.png)

You remain in that different theme context as you browse around the back end. Switch theme context again at any time from any assets panel by using the Theme menu again, or by returning to the Themes panel and clicking a number link for a given theme’s assets, as described above.

You now have a good idea of contexts and cues as it concerns themes and their assets in relation to relevant panels. These contexts are useful whether working on themes in development or browsing themes that are live.

## With-selected controls

The with-selected controls are a long-time and important functionality in Textpattern. Users of Textpattern are familiar with these; a combination of checkboxes on table records that work in relation to a selection menu where options can be selected and applied to checked items.

Several new selection options are available for Themes functionality between the Themes and Sections panels. Each is described in other sections of this document in context of use.

Themes panel selection options:

* [Duplicate](#duplicate-via-selection-controls)
* [Export to disk](#exporting-themes)
* [Update from disk](#updating-themes)

Sections panel selection options:

* [Change theme/page/style](#assigning-sections)
* [Developer preview](#deploy-development-themes-to-live)

## Add a new website section

If you need to create or edit website sections before setting up a development project, now is a good time. Do this in the Sections panel, as normal.

To create a new section, use the **New section** button to open the section editor and create one from scratch.

![Themes create new section](/img/themes-create-new-section.png)

To edit an existing section, click a section’s name under the Name column of the sections table.

![Themes edit existing section](/img/themes-edit-existing-section.png)

In both cases, the section editor will open. The theme assignment made in the section editor will apply as the *live* theme assignment, even if you assign what is otherwise a development theme.

![Themes section edit live theme](/img/themes-section-edit-live-theme.png)

Be aware of that. If you do not want the assets of an intended development theme to be live, do not assign a development theme in this location. Use the ‘Change theme/page/style’ controls instead when working in development environments.

## Assigning sections

The mere existence of a new theme in the Themes panel does not mean it is already in a development or live state. They are in your database, yes, but just sitting their innocuous and unusable. You have to actually make a theme usable one way or the other, first by assigning it as a development theme to work on, using the ‘Change theme/page/style’ selection controls described presently, then [deploying it as a live theme](#deploy-development-themes-to-live) thereafter.

The ‘Change theme/page/style’ controls are found in the selection menu on the Sections panel.

![Themes change option in menu](/img/themes-change-option-in-menu.png)

You can go to the Sections panel by any path to use the controls, but if you know what particular theme you want applied as a development theme, you can get directly in that context by following the [‘Assign sections’ link](#assign-sections-link) that appears next to the theme’s name in the Themes panel. But it ultimately doesn’t matter; you can access the controls by any path you want. 

When the ’Change theme/page/style’ option is clicked, its associated controls are displayed for completion. The first of these associated controls are the ‘Development’ and ‘Live’ environment checkboxes.

![Themes dev and live boxes](/img/themes-dev-and-live-boxes.png)

To assign a theme’s assets as development, check the ‘Development’ checkbox *only*. If you select both boxes, or only the ‘Live’ box, the theme’s asset(s) assignment will become live, which is premature at this point.  

The next control is the Theme selection menu to indicate which theme should be applied. Note that it uses the theme’s title, not its name.

![Themes selection menu in sections](/img/themes-selection-menu-in-sections.png)

If you arrived to the Sections panel via the aforementioned [‘Assign sections’ link](#assign-sections-link), the theme for the link you clicked will appear automatically in context of the themes selection menu.

The last menus are for selecting the page and style assets in context of the indicated theme, so you need to ensure the theme selection is correct first, regardless of how you arrived to the Sections panel. The page and style assets you select are what get assigned to the section(s) that are checked.

![Themes page and style menus in sections](/img/themes-page-and-style-menus-in-sections.png) 

If you arrived to the Sections panel via the ‘Assign sections’ link, the sections table will show all sections checked by default, both ‘Development’ and ‘Live’ checkbox controls will be checked, and the themes selection control will display the theme you chose.

![Themes assign sections context](/img/themes-assign-sections-context.png)

Note the image above is showing a Sections panel table with several irrelevant columns turned off for simplicity, just so you understand.

![Themes sections panel columns off](/img/themes-sections-panel-columns-off.png)

As already mentioned, you do not want to use the ‘Live’ checkbox option at this point unless you know the theme’s assets are ready to appear live on the front end. We assume here they are not.

You probably don’t want all section checkboxes checked either, as explained next.

## Templates-to-Sections relationships 

If you go through with assigning a page and style with all section records checked, as will be the case if following the [‘Assign sections’ link](#assign-sections-link), every section will have the same page and style assignment. This might be fine for the style assignment, if you use a single stylesheet for your entire website, but it probably won’t be what you want for your page assignments, depending on how you have your page templates designed.

The assumption made for having all sections in the table checked by default, when following the ‘Assign sections’ link, is that the majority of sections, if not all, use a common page and style for everything. The page is assumed to be constructed with conditional logic such that regardless of what section it is assigned to, it will output the necessary content as expected. This is what’s known as a one-to-many page assignment to sections. By contrast, a one-to-one assignment is where multiple or all sections have a unique page template. The same idea applies to stylesheet assignments.

**Realistic website architecture:**

It’s actually rare that anyone uses a single page template for the entire website, though it can be done, and especially for simple sites like blogs. The more complex your website’s structure, the more difficult it becomes to create single-template architecture. The markup on such a page would be filled with nested conditional tag logic and might be more headache than helpful when trying to edit them.

More typically, and even for smaller websites, is a construction like follows, but this is only one of any number of possibilities:

* A unique ‘default’ page template for the default (homepage) section, assuming your homepage design is quite different from the rest of the regular website sections
* A dynamic ‘articles’ page template (or whatever you want to name it) for all the sections concerning dynamic articles publishing
* A ‘common’ or ‘generic’ page template for all the evergreen (i.e. static) sections (e.g. About, Policies, Colophon, or what have you)
* A ‘contact’ template, perhaps, for a contact form page, if not folded into the ‘common’ template
* An ‘error’ page template to create custom 404 error designs

In such a construction, the default homepage, contact form page, and error page pairings to sections are known as **one-to-one page to section assignments**, while the dynamic articles and common templates used against multiple sections reflect a **one-to-many page to sections assignment**.

Stylesheets generally have more of a one-to-many assignment because people often use a single stylesheet for the whole website; either by keeping all CSS rules in the same sheet, or by appending the rules of multiple sheets to one using the `@import` rule. But this is not always the case, and certainly not a requirement. You might choose to use multiple stylesheet assignments in the same way you do pages, or altogether different, and especially if [using a different theme on each website section](#different-themes-on-different-sections).

It makes no difference how you match pages and styles with sections, whether one-to-one, one-to-many, or a combination of both, as the example structure above suggests. Just be aware that when arriving to the Sections panel via the [‘Assign sections’ link](#assign-sections-link), you’ll probably have to do a lot of unchecking and checking of section records as you run through using the ‘Change theme/page/style’ selection controls. Textpattern will not know how you have your templates and stylesheets designed, so if they are assigned wrong, your front end presentation will break.

## Assigned sections indication

Once a theme has been assigned as a *development* theme to a website section, the Theme column of the sections table will appear with two theme names in it. The theme name with an orange ‘Development’ pill next to it is the theme in development. The theme name with no pill indication is the one working live on that section in the front end of your website.

![Themes sections assign result](/img/themes-sections-assign-result.png)

Similar colour indication for development themes is provided on the Themes panel. Once a theme has been assigned as ‘Development’ using the ‘Change theme/page/style’ controls, the development theme name will appear with an orange ‘In use’ pill by it, while prevailing live themes (one or multiple) will appear with a green ‘In use’ pill. 

![Themes panel in-use environments](/img/themes-panel-in-use-environments.png)

When you [switch a development theme to live](#switch-development-theme-to-live), replacing the former live status theme, the theme names under the Theme column of the Sections panel reduce to the single live theme (since there are no *different* themes in development now).

![Themes switch to live status in sections](/img/themes-switch-to-live-status-in-sections.png)

And the orange ‘In use’ pill in the Themes panel table goes away, replaced by the green pill on the new live theme.

![Themes switch to live status in themes](/img/themes-switch-to-live-status-in-themes.png)

## Development environment

[Assigning ’Development’ themes](#assigning-sections), as described, establishes the initial development environment. Only one development theme can be applied to a given section at a time, but [any number of themes can be applied to different sections](#different-themes-on-different-sections) in one-to-one relationships.

Once a development theme is setup, and you follow its [‘Assign sections’ link](#assigned-sections-link) again from the Themes panel, you are in a contextual view of that theme’s construction, where it is easy to assess theme composition at a glance and take various actions accordingly. The contextual view of your Sections panel will show:

* The section composition of your website’s structure
* The themes and their related assets assigned to sections
* Whether any assigned assets are missing
* Links directly to existing or missing assets in order to edit or add them, as necessary
* Links to view the front-end presentation of assigned themes per section.

Site structure and themes assignment to sections should be clear to you by now, but we’ll walk through the actual assigning steps next to make that workflow clear. Missing assets, assets editing, and themes viewing are described thereafter.

### ‘Missing’ assets warning

If you ever see an asset name flagged with a red ‘Missing’ pill, it is a warning telling you that the asset has been deleted, or is otherwise missing in the theme package.

![Dev preview assets links](/img/themes-missing-assets-warning.png)

If you tried to [view the presentation](#view-theme-presentation) of this section with the missing page, you would get the 404 error page instead. If you deployed a development theme to live status when an assigned asset was missing, your front-end presentation would break.

There are options for dealing with a situation like this. The most direct and intuitive fix is to click the name of the missing asset. This puts you in direct context of a new template (whether page or style) with the missing asset’s name added. Simply save the template, even if empty, and the ‘Missing’ warning will go away. Don’t forget to fill in the template, though, because an empty one is little better than none at all.

Alternatively, you could assign a different page template to the section. The alternate template must already exist, of course, so if not, use the solution described above. If an alternate does exist, assign it using the ‘Change theme/page/style’ controls.

You can use the links under the Page and Style columns to directly access and work on the assigned template at the other end, then return to the Sections panel context to *view* how the presentation is shaping up.

### View theme presentation

Previewing theme presentation is a much simpler matter. Once you have the development environment for a theme setup as described above, click the ‘View’ link next to a given section’s name to view that theme’s presentation on the front end.

![Themes preview presentation](/img/themes-preview-presentation.png)

As long as the [development themes preference](#development-themes-preference) is set to ‘Yes’ (and a user has the appropriate rights, and has not opted out of this preference in their own settings), the presented view will always be the development theme view. This does not change even if you go back to the Themes panel and return to the Sections panel again via the ‘Assign sections’ link on the live theme. Nor can you see the live presentation by following the front end link in the administration side’s main navigation bar. 

If the *development themes* preference is on, but you want to quickly see the live presentation of your site, you must either turn the preference off, or use your browser's private browsing (incognito) mode to simulate being logged out.

## Deploy development themes to live

Two options are available to you via the multi-selection controls in the Sections panel when ready to apply one or more development themes to live status. One is the ‘Change theme/page/style’ option already covered in previous sections, but this time you would make sure the ‘Live’ checkbox option was checked each time instead of ‘Development’. 

Much easier, however, especially when you have a greater number of sections, and regardless of how many different themes you want, or how many one-to-one assets associations are assigned, is to use the contextual ’Developer preview’ option to deploy every development theme to live all in one shot.

This option only appears in the selection menu when you have one or more themes assigned to sections as development themes.

![Themes developer preview option](/img/themes-developer-preview-option.png)

When using this option, it is best to ensure all sections have assigned development themes, and that each one is ready to deploy live; otherwise, this feature is perhaps overkill. If you are just working with one or two sections, the ‘Change theme/page/style’ option with the ‘Live’ checkbox would do just as well. It simply depends on how many development sections you have setup and ready to go. But options are available to you. Do it as you please.

## Different themes on different sections

Here is another example of using the ‘Developer preview’ option to better demonstrate its power, albeit a rare situation.

Say we have a gardener’s website and the owner wants a different vegetable theme on each of the website’s six main vegetable sections, plus a general theme on the homepage and auxiliary pages using different page templates.

This could be structured in any number of ways, but one example blueprint for this mapping, and certainly not the most concise, is…

Theme/page/style to sections mapping:
: abc-garden/default/default to default
: abc-garden/generic/default to about
: abc-garden/generic/default to contact
: abc-carrots/hothouse/veggies to carrots
: abc-peppers/hothouse/veggies to peppers
: abc-tomatoes/hothouse/veggies to tomatoes
: abc-zucchini/hothouse/veggies to zucchini
: abc-cabbage/hothouse/veggies to cabbage
: abc-broccoli/hothouse/veggies to broccoli

Remember that we use a developer prefix on theme names if ever expecting to share theme, which is what the example ‘abc-‘ is reflecting here. As for the section assignments in the above mapping, page assets reflect a single one-to-one pairing (homepage defaults) and two one-to-many pairings, and there two one-to-many pairings for styles.

Now set up the structure and development using what has already been learned, but do it in the following order for the least jumping around in the back-end panels:

First, [create or edit any needed sections](#add-or-edit-live-sections) and delete the ones you don’t need.

Then determine what will be the original theme (i.e. abc-garden) and make sure all possible page and style assets across all needed themes are created for the original theme first, even if not needed later.

You might also make the same consideration for any needed form assets that will be common across a given number of themes; but in this case, choose the more appropriate theme if different from the original (e.g. all the vegetable themes in this example will probably share common forms.)

Then clone the original theme [by duplication](#create-from-duplication) for all other needed themes. Or at least start with the original theme having all pages and styles, then switch to duplicating a cloned theme if it has a different set of forms you need, explained above. Either way, this ensures you have all possible page and style assets (and possibly forms) in each theme right from the start, rather than having to go back later to each respective new theme and create them manually one-by-one. These assets to not have to be developed correctly yet, they only need to exist. They can even be empty. All you’re doing at this point is getting the development environment set up in the least laborious way possible.

Then [assign theme assets to sections](#assign-sections) using the ‘Change theme/page/style’ controls according to the  blueprint above. This is where you will appreciate having cloned the original theme having all possible page and style assets. (Once you have the desired assets assigned to sections per theme, you can go back to a given theme’s assets any time later to delete the templates you don’t need.)
 
Now develop templates, stylesheets, and forms for each theme to completion. You can directly access page and style templates via their names in the Sections panel; or indirectly access pages, styles, and forms in context of a theme by their linked numbers in the Themes panel. 

At this point our development environment looks something like follows:

![Themes multi-themes website](/img/themes-multi-themes-development.png)

Note that any section record that is assigned an asset different from the underlying live asset, regardless of whether the section was assigned a development theme or not (e.g. the contact and about sections use the live theme but were assigned different pages), the assigned asset name will appear in Page or Style columns, respectively. When these assets correspond to a development theme, they will appear aligned with the development theme’s orange ’Development’ pill (e.g. all the vegetable sections).

If you peeked into the Themes panel at this point, you would see that all themes assigned as development would have the [orange ‘In use’ pill](#assigned-sections-indication) by their names. 

Now, back in the Sections panel again, we can deploy the entire development setup — all the assets to sections assignments we made — in one pass with the ‘Developer preview’ option:

1. Select all checkboxes at once in the sections table
2. Select the ‘Developer preview’ option from the selection menu
3. Choose the ‘Deploy to live’ radio button
4. Click the Go button and confirm when asked.

![Themes deploy live controls](/img/themes-deploy-live-controls.png)

All the development themes turn to live, assets too, and no more orange ‘Development’ pills remain visible.

![Themes multi-themes live](/img/themes-multi-themes-live.png)

If this were an actual project, all the orange ‘In use’ pills in the Themes panel table would turn to green pills, indicating their new live status.

![Themes multiple green pills](/img/themes-multiple-green-pills.png)

You have now learned everything there is to know about creating, developing, and deploying themes on your own website. We now turn attention to the functionality for sharing themes in the community.

## ‘Database’ themes versus ‘disk’ themes

In the remaining sections, the [exporting](#exporting-themes), [importing](#importing-themes), [updating](#updating-themes), and [deleting](#deleting-themes) processes are explained. Before getting there, a detail needs explained. This may be obviousness to some people. Others might appreciate it being made clear.

Textpattern interface strings, pophelp, and this documentation in relation — and probably even developers themselves, and you, too, after reading this — will occasionally use terms that refer to themes as either ‘database’ or ‘disk’. These distinguishing terms reflect theme packages at specific locations in the aforementioned processes.

As far as the location terminology goes: 

* **Themes panel = database theme**. When a theme is in the themes table of the Themes panel, it is in the database and thus can (and will at times) be referred to as a ‘database theme’.
* **/themes directory = disk theme**. When the theme package is sitting in the /themes directory, it is on the web server’s disk and thus referred to as a ‘disk theme’, ‘disk-based’ theme, or what have you.

When a theme is in both locations, as may often be the case in your workflows, remember to distinguish between them. The outbound and inbound shuffling of themes involves making choices about how to treat database and disk themes in the process.

It all centres around the /themes directory located in your software’s root location. The directory can be thought of as a checkpoint for incoming (imported) and outgoing (exported) themes:

* {:.directory--open} {root}
  * {:.directory} files
  * {:.directory} . . .
  * {:.directory} **themes** 	
  * {:.document} . . .
  * {:.document} index.php
  * {:.document} . . .
{:.list--files}

With that out of the way, the remaining sections will make more sense.

## Exporting themes

You have learned how to create and manage themes at this point, so take it to the next logical step and export one for other people to use. Fame and fortune awaits!

When your theme is tweaked to perfection and ready to be shared:

1. Go to the Themes panel
2. Check the theme’s box in the table
3. Use the multi-selection controls to select ‘Export to disk’ (i.e. to the /themes directory).

![Themes select export](/img/themes-select-export.png)

The selection will trigger another option to respond to by way of a checkbox: ‘<i>Delete unused templates from disk on export</i>’.

![Themes select export option](/img/themes-select-export-option.png)

If you read the help tip for that option, it says:

> If checked, each template file in the selected theme(s) that does not have a corresponding item in the database will be permanently deleted from the disk-based theme. The result after completion of the action will be that your file system templates will reflect exactly what is in the database.

In other words, Textpattern is making a comparison between the theme package you want to export from the Themes panel, presumably the package designed as it should be, and any similarly named theme that might be sitting in the /themes directory but not so well put together. So it’s asking, if there is such a theme there in the directory, and any asset files in it do not have similarly named files in the panel version (the one you are exporting), do you want those files deleted as part of the exportation action?

This is generally a good idea, and the check box is ticked by default to make that clear. This ensures that after exportation, there is a direct match between the database version (in the Themes panel) and the version on disk (in the /themes directory).

Click the ‘Go’ button and confirm when asked if you are sure.

Now you are almost famous, but not quite yet. Still one more thing to do if you want your theme added to the new Themes website repository, coming soon. *Zip it up!* Textpattern will only host one file per theme package, and it must be compressed. So transfer the exported theme from the /themes directory to an external location and make it a single, compressed .gzip or .zip file.

Where you store the theme file for others to access is up to you. But whatever the location, whether Themes website or your own, make sure the expected URL has been entered in the **Theme website** field of the theme’s metadata. Add that by clicking the name of the theme in the themes table to pull up the theme editor.

## Importing themes

Unlike with exporting themes that you create, where the theme is already tabled in the Themes panel, importing requires first getting an externally sourced theme into the database. The /themes directory to the rescue, again.

First, use your (S)FTP software of choice to transfer the external theme (presumably downloaded from a shared location) to your /themes directory on the server. A theme import control will appear in the Themes panel, above the themes table.

![Themes import controls](/img/themes-import-controls.png)

If you had not seen that menu before, it is because it works in context with the /themes directory, as follows:

1. **One or more disk themes with no database equivalents**. When one or more themes reside in the themes directory that are not in the database (i.e. in the themes table), the selection menu appears above the themes table with those themes listed, enabling their importation into the database. The menu is not visible if this condition is false.
2. **Disk themes match database themes**. When the same themes are equally represented in the database and on disk, or only in the database and not on disk, the contextual menu is hidden, since there is nothing unique to import.
3. **Database theme deleted**. If/when you delete a theme from the database but not the disk-based version (assuming there is one), the Theme import menu will reappear, as described in condition 1, since that condition is true again.

You can then use the import controls to select the theme and initially import it into the database. In the image above, there is only one theme, ‘Imported Theme’, so it’s already selected. When the Import button is clicked, the theme is added to the themes table.

![Themes imported theme](/img/themes-imported-theme.png)

The theme is now in your themes table to use as desired. If the themes in the table match the themes in your directory, the import control will disappear from the Themes panel again.   *Poof!* 

## Updating themes

If you end up importing more than exporting, you will eventually come to the point where one or more of the themes you have imported need to be updated. This is the case when a theme designer (other than you) has released a newly improved version of a theme you may have already imported once. Not wanting to miss out on the cutting edge or potential security improvements, you dutifully update your version with the latest release.

As with initially importing a theme, you begin by downloading the sourced theme and transferring it to your /themes directory via (S)FTP. Then it is on to the Themes panel where you use the multi-selection controls, again, but this time checking the box on the theme you are updating, then selecting the ‘Update from disk’ option, and leaving the ‘<i>Delete unused templates from database on import?</i>’ option checked.

![Themes update from disk](/img/themes-update-from-disk.png)

This second option is asking if you want to make your theme in the themes table (database version) the same as the one in the <i>themes</i> directory (disk version) by deleting files that might be different (in terms of existing) in the database version. This is generally a good idea, and presumably why you’re updating the theme to begin with. The box is ticked by default with that in mind, to keep versions consistent. But you might have your reasons for wanting variability, like wanting to customize the database version and keep the original sourced them at hand on disk. Hard to say.

Either way, click the ‘Go’ button and confirm when asked if you are sure.

## Deleting themes

Themes can be deleted from the themes table (database), and the associated version in the /themes directory (disk) as well, all in one go.

Again, this is done using the multi-selection controls. Check the box for the theme you want to delete from the table, select the ‘Delete’ option from the selection menu, and ensure the option for ‘<i>Delete theme templates from disk too</i>’ is checked.

![Themes select delete](/img/themes-select-delete.png)

Click Go and confirm when asked.

As a safety precaution, if theme packages on disk contain standard theme directories having non-standard subdirectories (e.g. styles/sass, or JavaScript files, whatever), they will not be deleted by Textpattern; rather, the theme package container will remain, along with the non-standard subdirectories and files inside the directory. This shell of a theme and its non-standard elements will need to be deleted manually from the server since the software does not recognize such elements.

If you choose not to delete the theme from disk (i.e. unchecking the option box), the theme import control discussed in [Importing themes](#importing-themes) appears again at top of the themes table with the theme package still sitting on disk showing in the selection menu. You can then re-import the theme at any time, if necessary, or use the appearance of the theme in the import control as a reminder that the package in the /themes directory also needs to be deleted.