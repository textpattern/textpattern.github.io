---
layout: document
category: Administration
published: true
title: Sections panel
description: Sections are the principle content organization mechanism in Textpattern, and the Sections panel is where you manage them.
---

# Sections panel

Sections are the principle content organization mechanism in Textpattern, and the Sections panel is where you manage them.

On this page:

* [How do sections apply to Textpattern?](#how-do-sections-apply-to-textpattern)
* [Creating a section](#creating-a-section)
* [List of existing sections](#list-of-existing-sections)
* [Editing sections](#editing-sections)
  * [Section names to avoid](#section-names-to-avoid)
* [Setting the default publishing section](#setting-the-default-publishing-section)
* [Searching sections](#searching-sections)
  * [Performing changes on many sections](#performing-changes-on-many-sections)
* [Pagination](#pagination)

On this panel you can do two things:

1. Create a new section and edit existing sections
3. List and manage your existing sections

## How do sections apply to Textpattern?

Sections essentially provide the ability to create lateral structure in your site, thus each section has its own unique URL if the site is configured to use clean URLs in the [Preferences panel](/administration/preferences-panel#article-url-pattern).

In the Sections panel, you're able to define what [Pages](/administration/pages-panel) and [Styles](/administration/styles-panel) will be used for the [Articles](/administration/articles-panel) published in a given section. You can also control if articles posted in that section will be seen on the front page of the site, and whether or not the articles will be included in site searches and feeds.

In a fresh installation of Textpattern one dedicated section is included: 'Articles'.

## Creating a section

This button will take you to the Section property editor (see below) where you can generate a new section along with its properties.

## List of existing sections

Beneath the 'Create section' button and search area there is a table containing a list of existing sections. Each row corresponds to one section. If you select the header of a column, it will sort the list according to that column. Select again to reverse sort direction.

Selecting the name of a section will open the Section property editor (see below) that will allow you to set or amend any of its properties. The **On front page**, **Syndicate articles** and **Searchable** properties can be altered directly from the list without having to visit the Section property editor. Simply click the Yes or No links in the corresponding row to toggle its status.

## Editing sections

You open the Section property editor when creating a new section or by tapping the name of an existing one to edit it. Each section has various pieces of information associated with it, as described here:

**Section name:** The name of your section that is used in URLs and as a reference by various Textpattern tags. It must be unique across the site (no two sections can be named the same), and you should try to avoid non-alphanumeric characters besides hyphens and underscores. Further restrictions apply: see [Section names to avoid](#section-names-to-avoid) below for a list of unsafe names.

**Section title:** A title for the section, which can be harnessed by tags (such as [section](/tags/section)) to display a more human-friendly name for your section.

**Uses theme:** From Textpattern 4.7.0, pages and styles are grouped into *themes*. Selecting the theme you wish to use will alter the available pages and styles in the following two select lists.

**Uses page:** Textpattern assigns its default page template automatically (to ensure baseline publishing capabilities) but you can select differently if you have additional [Pages](/administration/pages-panel) already created. You can reassign sections to pages at any time.

**Uses style:** Textpattern assigns its default style (CSS) automatically (to ensure baseline publishing capabilities) but you can select differently if you have additional [Styles](/administration/styles-panel) already created. You can reassign sections to styles at any time.

**On front page?:** This is an extremely important option and should be considered with respect to the overall design of the site. Remember that section content only shows up when that section is viewed, except for the front page. This control permits or denies content from the section showing up when the "front page" (the base `index.php` with no arguments) is served.

**Syndicate articles?:** Textpattern creates RSS and Atom feeds for those who like to run news aggregators. If this is turned on, the feed will display article content from this section.

**Searchable?:** Textpattern provides an article search function. It may be desirable to segregate some content and not make it available via the search. This control permits or denies the search from finding this content per section.

**Description:** The section description can be harnessed, for example, as meta data when you display a section article listing page.

### Section names to avoid

Sections can be given any arbitrary name, except for a few labels already reserved for Textpattern's special functions. Avoid the following, or undesirable results will likely occur:

<div class="tabular-data" tabindex="0" aria-labelledby="table1-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table1-caption" itemprop="about">Table 1: List of section names to avoid.</caption>
        <thead>
            <tr>
                <th class="t33" scope="col">Section</th>
                <th scope="col">Reason to avoid</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row"><code>atom</code></th>
                <td>Used by Textpattern to serve Atom feed content</td>
            </tr>
            <tr>
                <th scope="row"><code>author</code> (or the equivalent in the site's public-wide language)</th>
                <td>Used to generate per-author landing pages containing articles from a the given author</td>
            </tr>
            <tr>
                <th scope="row"><code>category</code> (or the equivalent in the site's public-wide language)</th>
                <td>Used to generate category landing pages containing articles from a the given category</td>
            </tr>
            <tr>
                <th scope="row"><code>file_download</code></th>
                <td>Used by Textpattern to serve file downloads</td>
            </tr>
            <tr>
                <th scope="row"><code>files</code></th>
                <td>Clashes with the default directory used to hold files available for download. If you have moved this via changes to the <a href="/administration/preferences-panel#file-directory-path">Preferences panel</a> then you may use this section name</td>
            </tr>
            <tr>
                <th scope="row"><code>index</code></th>
                <td>Clashes with <code>index.php</code></td>
            </tr>
            <tr>
                <th scope="row"><code>images</code></th>
                <td>Clashes with the default directory used to serve images</td>
            </tr>
            <tr>
                <th scope="row"><code>rss</code></th>
                <td>Used by Textpattern to serve RSS feed content</td>
            </tr>
            <tr>
                <th scope="row"><code>section</code> (or the equivalent in the site's public-wide language)</th>
                <td>Used internally by Textpattern</td>
            </tr>
        </tbody>
    </table>
</div>

Section names matching physical directories in your site's root directory will not work either.

## Setting the default publishing section

Here you can select what section you'd like to be the default choice when starting to write a new article. This can be overriden of course in the Write panel per article.

## Searching sections

You can use the search function above the section list to locate sections directly by a search phrase or to filter the view by particular criteria, thus reducing the number of rows in the resulting list.

The Search function has two components:

1. A text field for entering the search query
2. An adjacent drop-down list to specify which area is to be searched

Anything entered in the text field will be treated as a complete phrase (see the [Articles panel](/administration/articles-panel) documentation for full details on this).

After entering your search criteria you start searching by selecting the search button. As a result you will be given a new list if any rows meet the criteria.

By default, the search will find matches for all fields in a row. You can perform more refined searches by selecting or deselcting areas to search via the drop-down list in the search tool.

### Performing changes on many sections

In the first column you will find a checkbox for each section. Here you can select sections you want to change in a bulk manner. You can mark sections by checking the checkbox or you can use the checkbox in the head bar of the list to mark all sections on that page.

In order to quickly select ranges of sections select the checkbox of the first section you want to mark, press and hold the Shift key, then select the checkbox of the last section in the range. All sections between will be checked too. You can add ranges to your selection by repeating these steps.

For performing changes, go to the drop-down list 'With selected…' and choose the function you want to perform. After selecting the options you want to perform press 'Go' to apply the changes.

## Pagination

At the very bottom of the list you will find a pagination tool. You can change the number of sections listed per page by selecting another value from the number range. If there are more rows available on subsequent pages, you will see the current page number that you can edit and press Enter to jump to that page, along with links to visit the next and previous pages.

[Next: Pages panel](/administration/pages-panel)
