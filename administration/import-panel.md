\\n[mininav_admin_subtabs](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?id=&media=mininav_admin_subtabs)

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:admin-import-tab.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:admin-import-tab.png)

Textpattern's *import* features allow you to import Weblog articles from
another Weblog system.

**Note:** Few Weblog systems are supported at this time, but more will
be added as time goes by. You can help [Textpattern
Developers](http://team.textpattern.com) increase the system options by
writing your own script for a missing system, which can be refined and
added to the Textpattern core.

### Panel Controls {#panel-controls .sectionedit1#panel_controls}

The import panel is pretty simple, consisting of just four controls
(Figure 2), which are described in the following sections.

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_admin_import_fig02-controls.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_admin_import_fig02-controls.png)

#### Import from (1) {#import_from_1}

The first control is a dropdown box that lists the various systems
Textpattern supports at any given time (Figure 3).

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_admin_import_fig03-impfrom.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_admin_import_fig03-impfrom.png)

For each system supported, there is generally one of two ways the
publishing system data is imported, either via a *text file* or via a
*MySQL database*, and sometimes, as in the case of Movable Type, both
methods are supported as indicated in Figure 3. If a system does not
indicate which mode is supported in the dropdown options, it could be
one or the other, but not both.

For clarity, the supported modes for the existing system options are as
follows:

-   Movable Type (file or database)
-   Blogger (file or database)
-   b2 (database)
-   Wordpress (database)

#### Section to import into (2) {#section_to_import_into_2}

The second control is a dropdown box that simply lists all the Sections
that you currently have created in Textpattern (Figure 4).

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_admin_import_fig04-sections.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_admin_import_fig04-sections.png)

**Note:** Sections are what you create in the
[sections](/home/www/zendstudio/dokuwiki/bin/doku.php?id=sections) tab.

#### Default article status (3) {#default_article_status_3}

The **Default article status** control is a dropdown box that lists
Textpattern's article status options (Figure 5). These are the same
options you choose from when first drafting an article in the
[write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write) tab.

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_admin_import_fig05-status.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_admin_import_fig05-status.png)

#### Default comments invite (4) {#default_comments_invite_4}

The **Default comments invite** control is a text box that allows you to
create a custom label for the *comments invite* link that will appear
for your respective articles (Figure 6).

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_admin_import_fig06-invite.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_admin_import_fig06-invite.png)

**Note:** The comments invite can be controlled in two other locations
in Textpattern. The first is in the Comments section of the
[basic_preferences](/home/www/zendstudio/dokuwiki/bin/doku.php?id=basic_preferences),
which controls the invite label and other comment settings for the
entire site by default. The second is in the
[write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write) tab, where
you can set the invite label for each new article you write.

### The Process {#the-process .sectionedit2#the_process}

#### Importing from a Text File {#importing_from_a_text_file}

Importing systems via a text file (such as for Movable Type and Blogger)
can be done by first exporting data into a text file, which in turn can
be imported into Textpattern. Do this as follows:

<ol>
<li>
<p>
Name the textfile

</p>
    import.txt

<p>
and place the file in the directory located at
*&lt;code&gt;/textpattern/include/import/&lt;/code&gt;*.

</p>
</li>
<li>
Go to the Import subtab (the panel you are reading about now), and make
the appropriate selections as described under the *Controls* section
above (Figures 3 through 6).

</li>
<li>
<p>
Click the *Continue* button. Textpattern will use your text file

</p>
    import.txt

<p>
and import it's contents into the Textpattern database structure. You
get a list of imported articles with a message at the end about the
status of the action.

</p>
</li>
</ol>
When it's done, you can go the the
[articles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=articles) tab
and see all your articles are now listed, which should be the case if
all went reasonably well.

See also the articles:

-   [importing_from_blogger](/home/www/zendstudio/dokuwiki/bin/doku.php?id=importing_from_blogger)
-   [importing_from_b2](/home/www/zendstudio/dokuwiki/bin/doku.php?id=importing_from_b2)
-   [importing_from_movable_type](/home/www/zendstudio/dokuwiki/bin/doku.php?id=importing_from_movable_type)
-   [importing_from_word_press](/home/www/zendstudio/dokuwiki/bin/doku.php?id=importing_from_word_press)

#### Importing from a MySQL database {#importing_from_a_mysql_database}

When you select a system from the dropdown *Import from* options (Figure
3) that is a database option, a new set of controls will appear under
the regular tab controls. The controls will consist of a common set of
configuration fields for all imported systems (Figure 7).

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_admin_import_fig07-dbdetails.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_admin_import_fig07-dbdetails.png)

However, depending on which system you are importing, there may be an
additional field specific to that system, which is talked about shortly
in the following sections.

In any case, you begin for all systems by filling in the common database
information indicated in Figure 7. *Movable Type* and *WordPress* each
has an additional, unique field to address in the **Database Data**
controls.

For *Movable Type* it will be a control called **Weblog ID** (Figure 8).

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_admin_import_fig08-mtfield.gif)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_admin_import_fig08-mtfield.gif)

For *Wordpress* it will be a control for **table prefix** (Figure 9).
Most likely you can leave the default

    wp_

if you haven't changed that when you installed WordPress (you might have
changed it if your WordPress site shared the database with another
application).

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:tab_admin_import_fig09-wpfield.gif)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:tab_admin_import_fig09-wpfield.gif)

Fill in the information accordingly and press the *Continue* button.

Textpattern will connect to your old database and import the external
system's contents into the Textpattern database structure. You get a
list of imported articles with a message at the end about the status of
the action.

When it's done, you can go the the articles tab and see if all went
well. If so, congratualations and welcome to Textpattern.
