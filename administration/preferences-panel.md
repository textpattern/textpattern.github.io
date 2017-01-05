---
layout: document
category: Administration
published: true
title: Preferences panel
description: The Preferences administration panel is where you configure the everyday operation of your site.
---

# Preferences panel

The Preferences administration panel is where you configure the everyday operation of your site. Along with the [Languages administration panel](http://docs.textpattern.io/administration/languages-panel)), most of Textpattern's site-wide settings can be configured and fine-tuned. Preferences are grouped for convenience:

On this page:

* [Site preferences](#site-preferences)
* [Admin preferences](#admin-preferences)
* [Publish preferences](#publish-preferences)
* [Feeds preferences](#feeds-preferences)
* [Comments preferences](#comments-preferences)
* [Custom fields preferences](#custom-fields-preferences)

## Site preferences

Site preferences are global settings for your Textpattern site. They include settings for your site name, website address, server location, time & date, visitor logging and article comment functionality.

### Site name

The 'Site name' is the title of your website. By default, Textpattern fills this field with "My site", though it can be changed to your preference. An example for a travel-centric website might be "Around The World In 80 Stays", and a coffee shop might have a website called "Brewster's Java Joint".

### Site URL

The 'Site URL' is the homepage address where your Textpattern site is viewed. This should be set to your domain or hostname, omitting both the `https://` or `http://` protocol and the trailing forward slash (`/`). For example:

~~~
www.example.com
~~~

If you enforce dropping the `www` by way of a rewrite rule, use

~~~
example.com
~~~

If you run Textpattern in a site subdirectory, append the directory name

~~~
example.com/subdirectory
~~~

### Site slogan

The 'Site slogan' is an optional site subheading, motto, or other quote for your site. Considering the examples for Site URL above, "Around The World In 80 Stays"; a slogan of "Adventures Of A Global Explorer" would be relevant here. Likewise, the coffee shop might choose a slogan of "The Best Morning Brew, Since 2002!". The Site slogan should be plain text (i.e. no markup) as it is HTML-escaped before output.

### Production status

The 'Production status' choice defines the level of error reporting and diagnostic information provided by Textpattern. There are three options, as described below.

**Live**: This mode is best suited production (live) Textpattern sites (i.e. your site is ready to serve pages to visitors) and uses fewest server resources. In 'Live' mode, no errors or diagnostics will be displayed to your visitors.

**Testing**: This mode is best suited for the initial setup and design of a stable release of Textpattern. Any PHP errors and selected Textpattern warnings will be displayed on public pages. Browser caching is disabled. Performance information will be included in HTML comments at the end of every Textpattern page, including:

-   the time it took the server to build the page ("Runtime")
-   the number of database queries executed
-   approximate peak memory usage

**Debugging**: This mode is best suited for diagnosing problems in Textpattern Pages, Forms, plugins and PHP code. PHP notices will be displayed, in addition to the errors and warnings shown in Testing mode. Browser caching is disabled.

Performance information will be included in HTML comments at the end of every Textpattern page, including:

-   the time it took the server to build the page ("Runtime")
-   the number of database queries executed
-   approximate peak memory usage
-   a Textpattern tag trace (i.e. all Textpattern tags processed while building the page)

It's normal to see some PHP notices in 'Debugging' mode. A lone PHP notice is not necessarily an indicator that something is wrong, it's there to aid troubleshooting if a problem arises.

#### Time zone {#time_zone}

This control is where you set Textpattern's displayed time to be the
same as your local time. Textpattern calculates the local time based on
the server time (i.e. the time used by the server your Textpattern
package is installed on); thus, if the server time is not your local
time, you will need to adjust the time offset here.

The time system that is standard for all Internet-related
synchronizations is UTC ([Coordinated Universal
Time](http://en.wikipedia.org/wiki/UTC) ), which is the time system your
Web servers are likely using as well. When UTC is not offset at all, it
is equal to Greenwich Mean Time (GMT), and all global time zones are
then either offset forward or backward from this point. Hence,
Textpattern uses the notation of GMT plus the time offset value in this
control (Figure 3).

Figuring the time offset for your own Textpattern installation is easy.
Look at the table below and find your respective time region in the
first column, "Time zone". In the second column, "UTC Offset", you will
see values with a "-" or "*" next to them, these are the number of hours
you will offset backward ("-") or forward ("*"), with respect to UTC (or
similarly, GMT). For example, if you are living in France, your time
region will be "Central European Time", which indicates one hour forward
of UTC. So in the time zone control you would select "GMT +01:00" to
adjust your UTC offset, and to ensure your articles reflect dates and
times accurate to where you are.

Table 1: Converting Universal Time to Standard Local Times\^ Time Zone\^
UTC Offset |

<table>
<col width="50%" />
<col width="50%" />
<tbody>
<tr class="odd">
<td align="left">
Pacific Standard Time\
UTC -8

</td>
<td align="left">
Mountain Standard Time\
UTC -7

</td>
</tr>
</tbody>
</table>
#### DST enabled? {#dst_enabled}

The "Daylight Savings" control is a pair of radio buttons for "Yes" and
"No" which allow you to adjust the UTC time established in the previous
section for daylight savings. Unfortunately, Textpattern will not do
this for you automatically based on your time zone settings, you need to
remember to do it yourself. If your region of the world follows a
daylight savings schedule (see [Worldwide Daylight
Saving](http://webexhibits.org/daylightsaving/g.html) ), you would turn
this setting on when daylight savings began, and turn it off when
daylight savings was over.

#### Date format {#date_format}

The "Date Format" control allows you to select how you want your date
and time formats to appear in your articles by default. There are
several options to choose from (Figure 4). Dates are output in your
written articles via the

    [[posted]]

tag.

#### Archive date format {#archive_date_format}

The *Archive date format* is a drop-down menu that provides the exact
same options as the *Date format* menu (see Figure 4 above), but enables
you to create different date formats for the Archive section of your
site. This might be of interest depending on your site audience. As
before, the dates are output in your written articles (in this case in
your archival section) via the

    [[posted]]

tag.

#### Permanent link mode {#permanent_link_mode}

The *Permanent link mode* drop-down list is intended to make it easier
to establish flexible (or [Clean
URLs](/home/www/zendstudio/dokuwiki/bin/doku.php?id=glossary#clean_urls))
in your site, which in turn is a nice usability feature for your Web
site visitors. The drop-down list currently provides six different
options (Figure 5), one for "messy" URLs (which is the option for NOT
having clean URLs), and five for clean URLs; each having a specific path
format.

If you want clean URLs to work for your site, this is the very first
step to making it happen, by selecting one of the options other than
"messy." However, it is usually not as simple as just selecting one of
these options to make clean URLs work. Getting clean URLs to work may
take a combination of steps, addressed in
[managing_clean_urls](/home/www/zendstudio/dokuwiki/bin/doku.php?id=managing_clean_urls).

#### Use Textile {#use_textile}

Textile is a meta-formatting language that lets site authors format work
without having to know HTML completely. This option may be set to select
usage of Textile in articles; disable Textile but keep smart replacement
of line breaks and special characters; or disable article manipulation
entirely.

#### Logging

The "Logging" control allows you to select what kinds of visiting
activity Textpattern should record when such activity occurs. The
recorded information is displayed in the
[visitor_logs](/home/www/zendstudio/dokuwiki/bin/doku.php?id=visitor_logs)
panel for you to review. This *Logging* control is a drop-down menu with
three options (Figure 6).

-   **All hits**: By defaualt Textpattern will collect information for
    all site hits.
-   **Referrers only**: The *Referrers only* option will only record
    information about visitors from another location. This option is
    often the most popular choice because it allows you to see what kind
    of traffic your site is getting, while at the same time eliminating
    any log entries that might result from your own access to the site
    while, for example, making any site updates (generally you do not
    need to see your own activity on your site).
-   **None**: You can also choose to not log any information at all.

#### Accept comments? {#accept_comments}

This is a global setting (in this case for any article in any *Section*)
for whether or not you want to allow your articles to accept comments.
This is simply controlled with the "Yes" and "No" radio buttons,
respectively. This setting can be overridden on an article-by-article
basis in the
[write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write) tab as you
write new articles.

### Comments {#comments .sectionedit3#comments}

If you set **Accept comments** to

    yes

, the bottom region of the Site Preferences view is where you establish
your global settings for article comments.

#### On by default? {#on_by_default}

Permission for commenting is regulated on a per-article basis. This
option controls the default setting for newly authored articles.

#### Default invite {#default_invite}

The text in this edit field will be automatically set in the comment
invitation field on the
[write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write) page for
new articles. The comment invitation may also be controlled on a
per-article basis.

#### Moderate comments? {#moderate_comments}

Controls whether or not comments should be immediately published to an
article ("No"), or if they should first be screened by a site
administrator for approval ("Yes"). Although having them published
immediately is more rewarding for the commenter, and less overhead
management for the site owner, there is a certain level of risk. One
might choose to moderate comments if there is a high degree of comment
spam activity, or if comments are tending to be inappropriate, indecent,
etc.

#### Disabled after {#disabled_after}

This is a selection of time periods during which comments will be
accepted for a given article. The time periods begin when a given
article is first published in *live* status. The duration options range
from 1 to 6 weeks and *never*.

**Note:** Keep in mind that the longer you keep comments open on a given
article, the more you increase the likelihood of comment spam. For this
reason, it is not recommended that you select "never"; however, the
decision is ultimately yours to make, as well as the management of
comment spam.

#### Automatically append comments to articles {#automatically_append_comments_to_articles}

If "Yes", comments are added to articles irrespective of whether you add
a [comments](/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments) tag
or not. If you see comments doubled up on an article page, either set
this to "No" or alter your comment form.

#### Comments mode {#comments_mode}

In "popup" mode, a tiny browser window will pop up for the viewer to
enter the comment. In "nopopup" mode, the main article page will change
to show the comment entry form.

#### Comments date format {#comments_date_format}

This control will select the date and time format for the posting time
of comments.

#### Present comments as a numbered list? {#present_comments_as_a_numbered_list}

If you want to use an HTML ordered list to display your user comments,
choose "Yes". If you choose "No", your comments will be output as blocks
of text without automatic numbers, thus numbering (if any) will have to
be done by you.

Some commenting plugins require this to be set to "No" before they work
properly

#### Mail comments to author? {#mail_comments_to_author}

If set to "Yes", whenever a comment is made against an article, the
author will be emailed notification of the event, along with the
contents of the comment.

\[todo: needs to be marged with perferences doc - no advanced prefs
panel in Textpattern 4.6 - also, document this change\]

\\n[mininav_admin_subtabs](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?id=&media=mininav_admin_subtabs)

[![](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?media=file:advanced-prefs.png)](/home/www/zendstudio/dokuwiki/bin/lib/exe/detail.php?id=&media=file:advanced-prefs.png)

The
[advanced_preferences](/home/www/zendstudio/dokuwiki/bin/doku.php?id=advanced_preferences)
is where you enhance your site beyond just what is essential for basic
function; for example, folder locations, custom fields, and the
specifics on your publishing needs, just to name a few. All of the
*Advanced Preferences* features are discussed on this page. **<span
class="screenshots. needs but 4.2.0, to Updated Edit:"></span>**

### Advanced Preferences {#advanced-preferences .sectionedit1#advanced_preferences}

As of Textpattern verson 4.2.0, the *Advanced Preferences* view is
composed of six different regions. At the bottom of the view is a Save
button, which should be clicked after *any* changes to *any* region are
made.

#### Admin

The Admin section is composed of ten controls detailed in the following
sections.

##### Image directory {#image_directory}

The root-relative URI (without opening or closing slashes) of the
directory (folder) that holds images uploaded through the
[Images](/home/www/zendstudio/dokuwiki/bin/doku.php?id=images_panel)
panel. By default this is "images", and you only need to change this if
you have renamed and/or moved this directory.

##### File directory path {#file_directory_path}

The full path (file path, not URI) to the directory (folder) for files
uploaded via the
[files](/home/www/zendstudio/dokuwiki/bin/doku.php?id=files) panel. By
default it is named "files" and is in the root directory of the website.
As with the Image directory, you only need to change this if you have
renamed and/or moved this directory.

##### Maximum file size of uploads (in bytes) {#maximum_file_size_of_uploads_in_bytes}

Maximim size for file uploads via the
[files](/home/www/zendstudio/dokuwiki/bin/doku.php?id=files) panel. Note
that this value is also limited by the configuration of PHP on your Web
server; if Textpattern detects that your PHP configuration only allows
smaller downloads it will automatically correct this value downwards. If
you want to allow larger file uploads via upload from the browser you
have to talk with your host. (The relevant values in *php.ini* are

    post_max_size

,

    upload_max_filesize

and

    memory_limit

.)

**Note:** Image Uploads are not restricted by this value. The maximum
allowed size for images is always \~ 1MB (unless restricted by PHP as
explained above).

##### Temporary directory path {#temporary_directory_path}

Full path (file path, not URI) for this directory, which is needed by
Textpattern during uploads. By default it is named "tmp" and is at the
root level of the installation. You should not need to change this.

##### Plugin cache directory path {#plugin_cache_directory_path}

Leave this empty unless you are using a plugin that requires it, or you
are a plugin developer and want to test uncompiled plugins. No such
directory is included by default.

##### SMTP envelope sender address {#smtp_envelope_sender_address}

This preference should be left blank unless you experience problems with
sending email in Textpattern (i.e. no email is sent at all). Should that
problem arise, you can enter any valid email address here, although
preferably one that has the same domain name as the website where you've
installed Textpattern (i.e. if your website is example.com, you might
use you@example.com).

##### Use ISO-8859-1 encoding in e-mails sent (default is UTF-8)? {#use_iso-8859-1_encoding_in_e-mails_sent_default_is_utf-8}

For whatever reason (can someone give one?) you might want to use
ISO-8859-1 character encoding for emails, but the more internationally
friendly UTF-8 unicode is set by default, so why change?

##### Enable XML-RPC server {#enable_xml-rpc_server}

XML-RPC is an integral part of Textpattern, but disabled by default. To
use
[xml-rpc_for_desktop_publishing](/home/www/zendstudio/dokuwiki/bin/doku.php?id=xml-rpc_for_desktop_publishing)
(publishing to your Textpattern site remotely), switch the server on by
setting this to "Yes".

##### Default admin tab {#default_admin_tab}

Set this to the panel you want to appear when you log in.

##### Admin-side theme {#admin-side_theme}

Set the theme (appearance) of the admin panels. As of Textpattern 4.5,
three themes are offered. "Classic" is the original theme with two rows
of tabs. "Remora" is the updated Classic theme with a single row of tabs
with drop-down menus. "Hive" is a modern, responsive theme and the basis
of our future UI direction.

#### Comments

##### Require user's name? {#require_user_s_name}

If set to "Yes", people that want to comment on your blog will have to
enter a name in the comment-form. They will receive an error message
otherwise.

##### Require user's email address? {#require_user_s_email_address}

If set to "Yes", people that want to comment on your blog, will have to
enter an email address in the comment-form. They will receive an error
message otherwise.

##### Never display email address? {#never_display_email_address}

This setting controls whether the email address of a commenter should be
shown publicly.

##### Apply rel="nofollow&quot; to comments? {#apply_rel_nofollow_to_comments}

This will add an additional attribute to the links made in comments. It
is intended to be a measure that takes away the incentive for
comment-spammers and was initiated by a range of search engines and
software-writers. You can find out more about it by reading [Google's
announcement](http://googleblog.blogspot.com/2005/01/preventing-comment-spam.html).

**Note:** This setting does not influence the functionality or ranking
of your site. It may prevent or diminish the influence of your comments
when some search engines rank sites linked to from those comments.

##### Disallow user images? {#disallow_user_images}

With this option set to "Yes", images included in comments will be
stripped out.

##### Allow more Textile markup in comments? {#allow_more_textile_markup_in_comments}

When set to "Yes", comments may contain Textile elements which would
otherwise be treated as plain text:

-   headings
-   ordered and unordered lists
-   foot notes
-   tables
-   code
-   extended block syntax (bc.., bq.., etc.)

For security reasons, raw HTML is transformed into regular text.

##### Spam blacklists (comma-separated) {#spam_blacklists_comma-separated}

The blacklist providers entered here, will be contacted when a comment
is posted to your blog and the IP of the comment poster will be checked.
If the IP is listed, it means there have been spamming complaints made
about this IP in the past and a comment will be rejected.

You can enter a list of domain names that should be seperated by commas.
Potential blacklists can be found at
[dmoz](http://dmoz.org/Computers/Internet/Abuse/Spam/Blacklists/), but
be aware that it is your responsibility to make sure you can trust those
blacklist-providers before you add any.

##### New comment means site updated? {#new_comment_means_site_updated}

The database keeps track of when the last change to your site has
happened. When this setting is set to "Yes", a new comment will also
update this value. This value is used for example for the "Send
Last-Modified header" functionality.

#### Custom Fields {#custom_fields}

This region is where ten (10) custom fields can be defined. New
installations of Textpattern define two custom fields for demonstration
purposes: *custom1* and *custom2*. When custom fields have names such as
these, they automatically appear under the *Advanced Options* section of
the [write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write) panel
so you can make use of them, as needed, in context of a given article.

**Important notes on creating custom field names:**

Custom field names may include letters (uppercase or lowercase),
numbers, and under scores, but no spaces or other special characters
should be used. For example, *custom1*, *Custom1*, and *Custom_1* are
all valid name constructs, while *custom 1* and *custom !* are not.

(**Attention:** you might find that you can use spaces in custom field
names and it works in some situations. But this is \*not advised\*â€"and
may eventually become impossible anywayâ€"because there are instances
where custom field names are used as attributes in other Textpattern
tags and thus required to be non-breaking strings, e.g.,

    <txp:article_custom customfieldname="value" />

. In this example, "customfieldname" represents a custom field name,
which must be a single string in this case to work correctly. If the
defined custom field name has one or more spaces, it won't work
correctly.)

Also, there are certain names **reserved** by Textpattern, which should
not be used to name custom fields, or it could cause your code to not
work as expected. **Do not use the following for custom field names:**

-   annotate
-   article_image
-   authorid
-   body
-   category
-   category1
-   category2
-   comments_count
-   comments_invite
-   excerpt
-   form
-   keywords
-   limit
-   offset
-   posted
-   section
-   sort
-   status
-   thisid
-   title
-   url_title
-   Any other [tag
    attribute](http://textpattern.net/wiki/index.php?title=Attributes_Cross-reference),
    just in case

A symptom of a name clash is when you go to check or display the
contents of a custom field and receive unexpected (or no) output. In
this case, make sure your custom field names are not any of the reserved
names listed above.

To remove a custom field, simply clear its name. **Don't forget to save
changes made in the panel**.

#### Feeds

##### Syndicate article excerpt only? {#syndicate_article_excerpt_only}

If this is set to "No", then feeds will always contain the full article
bodies. If this is set to "Yes", feed items will contain an excerpt
instead of the article body where it is available.

##### How many articles should be included in feeds? {#how_many_articles_should_be_included_in_feeds}

This is the maximum number of current articles to be syndicated at a
time, in RSS/Atom format. Recommended: a low value, such as 5 through 15

##### Show comment count in feeds? {#show_comment_count_in_feeds}

When set to "Yes", this setting will append the number of comments to
your article titles in your XML feeds.

##### Include email in Atom feeds? {#include_email_in_atom_feeds}

This allows you to include the email address of the author (as set in
their user account) of an article in the author part of your Atom feeds.

##### Use email address to construct feed ids (default is site URL)? {#use_email_address_to_construct_feed_ids_default_is_site_url}

Feed items in Atom, require a unique ID. To generate IDs unique to your
site, Textpattern allows you to choose between either an email address
or your domain name to include in these IDs. The email address will be
the first one used when creating the site. Unless you are likely going
to be changing your domain name, it is probably safe to set this to
"No".

#### Publish

##### Prevent widowed words in article titles? {#prevent_widowed_words_in_article_titles}

In typesetting, a "widow" refers to the last word in a given block of
text that happens to wrap to the next line by itself. Allowing widows in
printed work is generally considered a visually sloppy thing to do.

By default, Textpattern prevents widow words from happening in article
**titles** by automatically adding a no-break value between the last two
words. So instead of a widow, there will be two (or more) words on the
last line, or none at all, depending on your word count and the width of
the containing element of your titles.

This preference allows you to turn that functionality off by saying
"No". As a result, your titles will wrap without interference. This may
be more preferable if your page layout is responsive, as titles with a
no-break between two long words could potentially break the layout at
smaller screen widths, resulting in text spilling out of the container
area.

##### Articles use excerpts? {#articles_use_excerpts}

By choosing "No" the excerpt field will not be shown to the author on
the article-editing screen.

##### Allow form override? {#allow_form_override}

This setting allows article authors to override the form to be used when
their article is rendered. If enabled, an "Override form" dropdown will
be available under "Advanced Options", when editing an article.

##### Attach titles to permalinks? {#attach_titles_to_permalinks}

This setting will attach a dirified version of your article-title to
your URL, it is either generated automatically or can be manually
overridden in the "Advanced Options" when editing an article.

This setting will only have an effect when you are using clean URLs. For
certain languages this may result in long and ugly URLs, in which case
you probably want to set this to "No".

##### Permalink title URL pattern {#permalink_title-like-this_default_is_titlelikethis}

This setting only has an effect when "Attach titles to permalinks" is
set to "Yes". When dirifying article-titles for use in URLs, you have
the option of:

1.  Hyphenated (title-like-this) - Using all lowercase letters, and
    replacing spaces with hyphens.
2.  Intercapped (TitleLikeThis) - Completely removing spaces, and using
    CamelCase, which means that the beginning of new words will be
    marked by uppercase letters.

##### Send "Last-Modified&quot; header? {#send_last-modified_header}

When set, Textpattern will read a visitor's HTTP If-Modified-Since
header (if one exists) and compare it to the last site update. If
nothing has changed since the visitor last loaded the page (i.e. if the
timestamp the browser sends is the same as the last site update), then a
header is sent back instructing the visitor's browser to use its cached
version of the page.

This can reduce bandwidth consumption, page load times, and reduce the
load on the webserver.

##### Publish expired articles? {#publish_expired_articles}

When set to "Yes", expired articles will continue to show on your site
after their expiry date has elapsed. You can use
[if_expired](/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_expired)
to show alternate content or markup for expired articles.

When set to "No", expired articles will be removed from the public site
and return a "410 Gone" HTTP status instead. Visitors hitting an expired
article will be shown a custom page template named "error_410" if it's
present .

##### Compensate for persistent connections mod_deflate bug? {#compensate_for_persistent_connections_mod_deflate_bug}

Some mod_deflate versions have a bug that breaks subsequent requests
when keep-alive is used. Dropping the connection is the only reliable
way to fix this. Setting this preference to "Yes" will close the
connection, forcing the browser to reconnect for the next request.

##### Ping pingomatic.com? {#ping_ping-o-maticcom}

Whenever you publish a new article, Textpattern will send a ping to
[Ping-O-Matic](http://pingomatic.com/). Recommended: "Yes" for live
sites, "No" for sites in development.

##### Logs expire after how many days? {#logs_expire_after_how_many_days}

When you are using Textpattern for logging, you can set how long (in
days) those logs should be kept. "7" will keep the logs available for
seven days.

**Note:** The logs only get cleared when you view the logs, and will
otherwise continue to build in size.

##### Use DNS? {#use_dns}

This setting only has an effect, when "Logging" in "Site Preferences" is
turned on. Using DNS will allow you to translate IP adresses in your
logs to host-names. For some servers this might subjectively slow down
your site, in which case you might want to turn this off.

##### Maximum URL length (in characters) {#maximum_url_length_in_characters}

This prevents URLs that are longer than specified from functioning. It
could be helpful in damage limitation.

##### Use plugins? {#use_plugins}

This allows you to turn off support for plugins. You might want to do
this if you find strange errors happening on your site, and you want to
make sure that it is not the fault of plugins.

##### Use admin-side plugins? {#use_admin-side_plugins}

Admin-side plugins are those which can change the operation of the
administration interface. They might hook into already existing actions,
like editing or publishing articles, or they might add new tabs for
added/extended functionality.

##### Allow PHP in pages? {#allow_php_in_pages}

When enabled, this setting allows PHP code within page and form
templates. PHP code must be without both opening and closing PHP tags,
and enclosed within
[php](/home/www/zendstudio/dokuwiki/bin/doku.php?id=php) tags.

##### Allow PHP in articles? {#allow_php_in_articles}

When enabled, this setting will allow use of PHP within articles. The
author must have sufficient privileges to do so. PHP code must be both
without opening and closing PHP tags, and enclosed within
[php](/home/www/zendstudio/dokuwiki/bin/doku.php?id=php) tags.

##### Allow raw php? {#allow_raw_php}

When enabled, this setting allows raw PHP code to be used. Normally this
isn't allowed, and PHP code must be without both opening and closing PHP
tags, and enclosed within txp:php tags. This setting is for backwards
compatible purposes only, and it is recommended to be set to "No".
