---
layout: document
category: Administration
published: true
title: Sections panel
description: Sections are the principle content organization mechanism in Textpattern, and the Sections panel is where you manage them.
---

# Sections panel TODO

Sections are the principle content organization mechanism in Textpattern, and the Sections administration panel is where you manage them.

Sections essentially provide the ability to create lateral structure in your site, thus each section has its own unique URL if the site is configured to use clean URLs in the [Preferences administration panel](http://docs.textpattern.io/administration/preferences-panel).

In the sections panel, you're able to define what
[pages](/home/www/zendstudio/dokuwiki/bin/doku.php?id=pages) and
[styles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=styles) will be
used for the
[articles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=articles)
published in context to a given section. You can also control if
articles posted in that section will be seen on the front page of the
site, and whether or not the articles will be used for site searching.

The Sections panel composed of two regions: A top region where you can
create new sections, and a bottom region where all existing sections and
their respective settings are displayed.

Textpattern includes two sections by default: *About* and *Articles*.

### Section Creation Controls {#section-creation-controls .sectionedit1#section_creation_controls}

The top portion of the *Sections* panel is where you create new
sections, and it's composed of three controls (Figure 2).

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:prefs-sections-new.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:prefs-sections-new.png)

#### Create Section {#create_section}

The first control in the create section form is a text box and Create
button where you type a new section name and create it (Figure 2a).
Textpattern assigns its default page and style automatically (to ensure
baseline publishing capabilities) but you can select differently if you
have custom [pages](/home/www/zendstudio/dokuwiki/bin/doku.php?id=pages)
and [styles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=styles)
already created; these will automatically appear in the assignment
dropdown menus both at time of creating a new section and at any time
later respective to a given section.

##### Section Names to Avoid {#section_names_to_avoid}

Sections can be given any arbitrary name, except for a few labels
already reserved for Textpattern's special functions. Avoid the
following or undesirable results will likely occur:

-   **author** (or the equivalent in the site's set language)
-   **category** (or the equivalent in the site's set language)
-   **section** (or the equivalent in the site's set language)
-   **atom**
-   **file_download**
-   **rss**

Section names already assigned to **directories** (and of course vice
versa) will not work either.

#### Page and Style Assignment {#page_and_style_assignment}

The next two controls are dropdown lists where you can select a given
page and style for your section (Figure 2b and 2c). As noted above,
these will be set as defaults unless you select otherwise. You can't
select otherwise if you have not yet created custom
[pages](/home/www/zendstudio/dokuwiki/bin/doku.php?id=pages) and/or
[styles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=styles).

### Section Customization Controls {#section-customization-controls .sectionedit2#section_customization_controls}

The rest of the *Sections* panel is where the existing *Sections*
themselves are listed in alphabetical order. Each has the exact same
controls, so we'll describe them by using one of the defaults, the
“about” *Section* (Figure 3).

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:prefs-sections-existing.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:prefs-sections-existing.png)

#### //Section// Name (a) {#section_name_a}

#### //Section// Title (b) {#section_title_b}

#### Uses //Page// © {#uses_page_c}

The Textpattern design encourages maximizing design reuse. It is
possible to create a single page for every single section in
*Presentation &gt; Pages*. This is a lot of needless work if they all
look the same. The Uses Page field is a drop down box listing all the
currently known pages. When this section is called, the article tags in
that section will be interpreted with this section's context and provide
this section's article content.

#### Uses //Style// (d) {#uses_style_d}

Additionally, each section can use a different CSS (Cascading Style
Sheet) layout. This box will drop down and list all the currently known
styles and lets the designer pick.

#### Selected by default? (e) {#selected_by_default_e}

This really has a bit more to do with authorship than design. In
*Content &gt; Write* there is a field for the section the article should
be filed in. This field in *Presentation &gt; Sections* allows a section
name to be highlighted in that field automatically.

#### On front page? (f) {#on_front_page_f}

This is an extremely important option and should be considered with
respect to the overall design of the site. Remember that section content
only shows up when that section is called, except for the front page.
This is the control that permits or denies content from showing up when
index.php is called with no arguments.

#### Syndicate? (g) {#syndicate_g}

Textpattern creates RSS and Atom feeds for those who like to run news
aggregators. If this selection is turned on, the feed will display
article content from this section.

#### Include in site search? (h) {#include_in_site_search_h}

Textpattern provides a search function. It may be desirable to segregate
some content and not make it available via the search function. This
controls permits or denies the search from finding this content.

#### X button (i) {#x_button_i}

Click the “X” button if you ever want to delete a given Section.

Note: This “X” button can be found throughout the Site Administration
interface, and it serves the same function wherever it is. If you don't
see the button where it otherwise appears to be for similar options,
it's likely because that particular option is a system default, and
Textpattern does not allow you to delete system defaults. Sensibly so.

## Pages and sections listed per page

At the very bottom of the list you will find a pagination and links for next and previous pages if there are more pages. You can also change the number of sections listed per page by selecting another value from the number range.

[Next: Pages administration panel](http://docs.textpattern.io/administration/pages-panel)
