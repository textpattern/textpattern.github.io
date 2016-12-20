\\n[mininav_content_index](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?id=&media=mininav_content_index)

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_content-link.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_content-link.png)

[links](/home/www/zendstudio/dokuwiki/bin/doku.php?id=links) provides a
way of keeping track of links and lists of resources (often external to
the site) so they may be included in articles or form content in a
convenient way.

While you could place links to external resources (or internal pages)
directly into any article this would mean a lot of work keeping track
and maintaining links and lists of recources. Textpattern provides a
much better way: Manage your links (and lists of links) *in a central
place* and then include them in article or form content with tags. This
way changes will take effect at every occurence of a link and - for
example - additions to a topic list of resource links will automatically
be included wherever you placed the list.

On this panel you can do two basic things:

-   *Create* a new link and *edit* existing ones
-   and *manage* your existing links.

(So the link panel in a way combines what for *articles* is divided in
two panels “Write” and “Article”.)

The first option is to create or edit a link - with the controls at the
top of the panel:

### Link Controls {#link-controls .sectionedit1#link_controls}

If the following controls are **empty** - by default when you just
opened the panel or when you click on “Links” tab - you can use them to
**create** a new link. Just fill in the appropriate fields and click
“Save”. You do not need to fill in all information at once. If you have
one of them, a link will be created and you can fill in the missing
information later. If you open a link from the list below for editing,
the existing link information will be shown in these controls and you
can edit and save them.

Each link has various pieces of information associated with it, as
described here:

**** Title ****\
the text that will be displayed for your link **** Sort Value ****\
assigns listing priorities by number or letter to your links. See below
for an explanation **** URL ****\
the hyperlink value assigned to the link **** Category ****\
the category to assign to the link. Categories must be created on the
[categories](/home/www/zendstudio/dokuwiki/bin/doku.php?id=categories)
screen before they appear in the list. Link categories can be used with
tags (as an attribute) to organize link lists **** Description ****\
optional way of describing what the link is about. If used, it will be
set as the anchor “title” attribute

#### Sorting rules {#sorting_rules}

When Textpattern sets the list sequence of links it uses the following
method:

Numbers are considered lower than letters, and values are sequenced
lowest to highest, top to bottom.

The first character on the left is considered first and all links are
sequenced. Then the second character is considered, and those link
values that have the same first character are sequenced like a sub
category according to the second character. Then the third character is
considered, then the fourth, etc.

Thus the sort values: 1, 1B, 2 10, 11, 100, 101, A, B would be sequenced
as follows.

-   1
-   10
-   100
-   101
-   11
-   1B
-   2
-   A
-   B

### Table of existing Links {#table-of-existing-links .sectionedit2#table_of_existing_links}

Beneath the link controls and the “Save” button a table (list) presents
your existing links.

#### Search and filter function {#search_and_filter_function}

Because this list can get pretty long, there is a **Search function** at
the top, which you can use to

-   **locate** links individually by search phrases
-   or to **filter** the list below (quite similar to the
    [articles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=articles) panel).

The Search function has two components:

-   A *drop-down-list* to specify which area is to be searched
-   and a *textarea* for entering the search phrase.

Text entered in the textarea will be treated as a complete phrase (see
[articles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=articles) for
details on this).

After entering your search criteria you start searching by clicking
“Go”. As a result you will be given a new list of links which meet the
criteria.

As a default the search will normally proceed in the links' **title**,
which the drop-down-list indicates a bit unclearly by “name” (remember:
name and title is very different in Categories). But you can do more
refined searches by selecting another area to search in. The
drop-down-list left from the textarea provides the following search
criteria:

-   ID\#
-   Name
-   Description
-   Category

#### Table of Links {#table_of_links}

Each row is one link. The columns provide basic information about the
link. (Note: The columns can be sorted. If you click the header of a
column, it will sort the list of links according to that column. Click
again to reverse sort direction. The current sort column is marked by a
yellow arrow on the right side of its name indicating its direction.)

The default view shows five columns:

**ID\#** â€“ an ID number is automatically assigned to each link. This
is what identifies it and calls it on the live site. Right from the ID\#
two links reside: *Edit* â€“ click this (or the title of the link) to
edit the link. *View* â€“ click this to view the particular article on
the live site.

**Name** â€“ the title (!) of the link. Click this to edit the link.

**Description** â€“ what has been told about the link, its character,
any recommendations.

**Category** â€“ if the link was assigned a category, then it will
reflect that here.

**Date** - the day and time when this link has been created.

#### Perform changes on selected links {#perform_changes_on_selected_links}

On the right side you will find a checkbox for each link. Here you can
select links you want to change in a jointly manner. You can mark links
by ckecking the checkbox or you can use select-buttons at the bottom of
the list: “All”, “None” or “Range”. If you want to select a range you
simply mark the checkbox of both the first and the last link in the
range and then click “Range”. The links between will automatically be
checked too.

For performing changes now you go to the drop-down-list “with selected”
and choose the function you want to perform. The following changes are
available:

-   Change Category
-   Delete

When selecting the “Change Category”-option you will get another
drop-down-list below which will give you the list of categories to
choose from.

After selecting the options you want to perform click “Go” to start the
changes. A pop-up window will ask “Are you sure?” and then (if “yes”)
the changes will be performed.

### Pagination {#pagination .sectionedit3#pagination}

At the very bottom of the list you will find a pagination and links for
next and previous pages if there are more pages. By default Textpattern
will show 25 links per page. You can also change the number of links per
page by selecting another value in the drop-down-list “View \# per
page”: 15, 25, 50 and 100.

### Related Textpattern Tag {#related-textpattern-tag .sectionedit4#related_textpattern_tag}

[linklist](/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist) will
output links from the link repository, with filter criteria and
presentation settings applied.
