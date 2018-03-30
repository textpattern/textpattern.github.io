---
layout: document
category: Development
published: true
title: Database schema reference
description: Textpattern stores all data in a database. Within that database, each table contains a different collection of information.
---

# Database schema reference

Textpattern stores all data in a database. Within that database, there are the following tables, each containing a different collection of information.[^1]

On this page:

* [textpattern](#textpattern)
* [txp_category](#txp_category)
* [txp_css](#txp_css)
* [txp_discuss](#txp_discuss)
* [txp_discuss_nonce](#txp_discuss_nonce)
* [txp_file](#txp_file)
* [txp_form](#txp_form)
* [txp_image](#txp_image)
* [txp_lang](#txp_lang)
* [txp_link](#txp_link)
* [txp_log](#txp_log)
* [txp_page](#txp_page)
* [txp_plugin](#txp_plugin)
* [txp_prefs](#txp_prefs)
* [txp_section](#txp_section)
* [txp_token](#txp_token)
* [txp_users](#txp_users)

## textpattern

Contains the articles you create on the [Write panel](https://docs.textpattern.io/administration/write-panel).

Column | Type | Description
---|---|---
ID              |INT          |Unique, auto incremented numerical ID of the article
Posted          |DATETIME     |Publication date and time
Expires         |DATETIME     |Expiration date and time (defaults to null, which indicates that the article never expires)
AuthorID        |VARCHAR(64)  |Login name of the author that created the article
LastMod         |DATETIME     |Modification date and time of the article
LastModID       |VARCHAR(64)  |Login name of the author that modified the article
Title           |VARCHAR(255) |Article Title
Title_html      |VARCHAR(255) |(reserved for future use)
Body            |MEDIUMTEXT   |Main article text (max 16MB), stored raw as typed. See also `textile_body`
Body_html       |MEDIUMTEXT   |HTML version of main article text, converted from Body field
Excerpt         |TEXT         |Article excerpt (max 64KB), stored raw as typed. See also `textile_excerpt`
Excerpt_html    |MEDIUMTEXT   |HTML version of article excerpt, converted from Excerpt field
Image           |VARCHAR(255) |Numerical ID(s) associated with this article of images managed by Textpattern, or a URL of any other image
Category1       |VARCHAR(64)  |Name of the 1st category associated with this article
Category2       |VARCHAR(64)  |Name of the 2nd category associated with this article
Annotate        |INT          |Comments enabled? (0 = no, 1 = yes)
AnnotateInvite  |VARCHAR(255) |Text used for inviting people to comment on the article
comments_count  |INT          |Number of visible comments associated with this article
Status          |INT          |Article publication status (1 = draft, 2 = hidden, 3 = pending, 4 = live, 5 = sticky)
textile_body    |VARCHAR(32)  |Markup system used for this article's Body (0 = raw, 1 = textile, 2 = convert line breaks. Default = 1)
textile_excerpt |VARCHAR(32)  |Markup system used for this article's Excerpt (0 = raw, 1 = textile, 2 = convert line breaks. Default = 1)
Section         |VARCHAR(255) |Name of the section in which this article belongs
override_form   |VARCHAR(255) |Textpattern 'Form' containing layout used for displaying this specific article, overriding the Form which is normally used to display articles. If left empty, the default layout form is used
Keywords        |VARCHAR(255) |Comma separated list of keywords (often called 'tags') that describe this article
description     |VARCHAR(255) |Meta description content for the article
url_title       |VARCHAR(255) |Title of the article as used in the URL for the permalinked article page
custom_1        |VARCHAR(255) |1st Custom field content
custom_2        |VARCHAR(255) |2nd Custom field content
custom_3        |VARCHAR(255) |3rd Custom field content
custom_4        |VARCHAR(255) |4th Custom field content
custom_5        |VARCHAR(255) |5th Custom field content
custom_6        |VARCHAR(255) |6th Custom field content
custom_7        |VARCHAR(255) |7th Custom field content
custom_8        |VARCHAR(255) |8th Custom field content
custom_9        |VARCHAR(255) |9th Custom field content
custom_10       |VARCHAR(255) |10th Custom field content
uid             |VARCHAR(32)  |Random string used to uniquely identify this article in an RSS/Atom feed. Textpattern uses `md5(uniqid(rand(),true))` to create the uid
feed_time       |DATE         |Creation date of the article (when you first save the article, regardless of Status)

Index type | Name | Definition
---|---|---
PRIMARY KEY |-                  |(ID)
INDEX       |categories_idx     |(Category1(10), Category2(10))
INDEX       |Posted             |(Posted)
INDEX       |Expires_idx        |(Expires)
INDEX       |author_idx         |(AuthorID)
INDEX       |section_status_idx |(Section(249), Status)
INDEX       |url_title_idx      |(url_title(250))
FULLTEXT    |searching          |(Title, Body)

## txp_category

Contains all the categories you create on the [Categories panel](https://docs.textpattern.io/administration/categories-panel).

Column | Type | Description
---|---|---
id          |INT          |Unique auto-incremented ID of this category
name        |VARCHAR(64)  |Category name, used in URLs. Dumbed-down from the Title. The category `root` is reserved (and invisible)
type        |VARCHAR(64)  |Type of media this category is used for: `article`, `image`, `file` or `link`)
parent      |VARCHAR(64)  |Parent category name. Determines the hierarchical place of this category compared to other categories. By default it's set to 'root' to indicate that it's a top level category
lft         |INT          |Left pointer. Used to maintain category hierarchy using the modified preorder tree traversal algorithm
rgt         |INT          |Right pointer. Used to maintain category hierarchy using the modified preorder tree traversal algorithm
title       |VARCHAR(255) |Human-friendly category title
description |VARCHAR(255) |Category description. Can be used for outputting meta data or category details on landing pages

Index type | Name | Definition
---|---|---
PRIMARY KEY | - |(id)

## txp_css

Contains the style sheets created on the [Styles panel](https://docs.textpattern.io/administration/styles-panel).

Column | Type | Description
---|---|---
name    |VARCHAR(255) |Name of the style sheet
css     |MEDIUMTEXT   |Style sheet contents
skin    |VARCHAR(63)  |The theme to which this style is associated
lastmod |DATETIME     |Modification date and time of the stylesheet

Index type | Name | Definition
---|---|---
UNIQUE |name_skin |(name(63), skin(63))

## txp_discuss

Contains all the article comments output on the [Comments panel](https://docs.textpattern.io/administration/comments-panel).

Column | Type | Description
---|---|---
discussid |INT(6) ZEROFILL |Unique auto-incremented ID of this comment
parentid  |INT             |ID of the article to which this comment belongs
name      |VARCHAR(255)    |Name of the person who commented
email     |VARCHAR(254)    |Email address of the person who commented
web       |VARCHAR(255)    |Website of the person who commented
ip        |VARCHAR(100)    |IP address of the computer used to submit this comment
posted    |DATETIME        |Date and time when this comment was submitted
message   |TEXT            |Comment message in HTML markup (max 64KB)
visible   |TINYINT         |Publication status (-1 = Spam, 0 = waiting for moderation, 1 = visible)

Index type | Name | Definition
---|---|---
PRIMARY KEY |- |   (discussid)
INDEX |parentid |(parentid)

## txp_discuss_nonce

An important part of the spam protection in the commenting system. When the comment form is shown to the user, it contains a hidden variable (nonce) with a unique code. This code is valid for 10 minutes. If the comment form is submitted, the nonce is looked up in this table and must exist, unused with a valid timestamp, for the comment to be accepted.

Column | Type | Description
---|---|---
issue_time |DATETIME     |Date and time when the 'nonce' was created
nonce      |VARCHAR(255) |Random alphanumeric string of text (md5)
used       |TINYINT      |Whether the nonce has been used for submitting a comment (0 = no, 1 = yes). A nonce cannot be used twice
secret     |VARCHAR(255) |Random alphanumeric string of text (md5) used to vary the name of the comment message textarea field, making it harder for spammers to submit comments

Index type | Name | Definition
---|---|---
PRIMARY KEY |- | (nonce(250))

## txp_file

Contains meta information on all the files uploaded through Textpattern. The files themselves are stored as normal files on disk instead of in the database.

Column | Type | Description
---|---|---
id          |INT          |Unique auto-incremented ID of this file
filename    |VARCHAR(255) |Name of the file as stored in the file system
title       |VARCHAR(255) |Title given to this file for display purposes
category    |VARCHAR(64)  |Name of the category associated with this file
permissions |VARCHAR(32)  |(reserved for future use)
description |TEXT         |File description (max 64KB)
downloads   |INT UNSIGNED |Number of times this file has been downloaded
status      |SMALLINT     |Publication status (2 = hidden, 3 = pending, 4 = live)
modified    |DATETIME     |Date and time when the file meta information was updated
created     |DATETIME     |Date and time the file was uploaded to Textpattern
size        |BIGINT       |File size in bytes
author      |VARCHAR(64)  |Login name of the author that added this file

Index type | Name | Definition
---|---|---
PRIMARY KEY |-     |(id)
UNIQUE |filename   |(filename(250))
INDEX  |author_idx |(author)

## txp_form

The `txp_form` table contains all the forms, which are created on the [Forms panel](https://docs.textpattern.io/administration/forms-panel).

Column | Type | Description
---|---|---
name    |VARCHAR(255) |Form name, dumbed down to only contain alphanumeric characters, underscores or hyphens
type    |VARCHAR(28)  |Form type: `article`, `category`, `comment`, `file`, `link`, `misc` or `section`
Form    |TEXT         |Contents of the form: HTML, Textpattern tags and text (max 64KB)
skin    |VARCHAR(63)  |The theme to which this style is associated
lastmod |DATETIME     |Modification date and time of the stylesheet

Index type | Name | Definition
---|---|---
UNIQUE |name_skin |(name(63), skin(63))

## txp_image

Contains meta information on all the images uploaded and managed in the [Images panel](https://docs.textpattern.io/administration/images-panel). The image files are not actually stored in the database, they're stored as normal files on the web server in the `/images` folder using the image ID as the filename (i.e. `1.png` for the main image and `1t.png` for the corresponding thumbnail).

Column | Type | Description
---|---|---
id        |INT          |Unique auto-incremented ID of this image
name      |VARCHAR(255) |Name of the image file as it was uploaded
category  |VARCHAR(64)  |Name of the category associated with this image
ext       |VARCHAR(20)  |File extension: `.jpg`, `.gif` or `.png`
w         |INT          |Image width in pixels
h         |INT          |Image height in pixels
alt       |VARCHAR(255) |Descriptive text used as the `alt` attribute in the HTML `<img>` tag
caption   |TEXT         |Caption for the image (max 64kB)
date      |DATETIME     |Date and time when the image was uploaded to Textpattern
author    |VARCHAR(64)  |Login name of the author that uploaded the image
thumbnail |INT          |Thumbnail available? (0 = no, 1 = yes)
thumb_w   |INT          |Thumbnail width in pixels
thumb_h   |INT          |Thumbnail height in pixels

Index type | Name | Definition
---|---|---
PRIMARY KEY |-     |(id)
INDEX |author_idx  |(author)

## txp_lang

Contains translations for the various core and plugin strings of text used throughout the public and administration sides of Textpattern. Language strings are grouped into `events` which indicate where they are used in the system.

Column | Type | Description
---|---|---
id      |INT         |Unique auto-incremented ID of this language string
lang    |VARCHAR(16) |Language code (for example: fr for French, en-gb for British English, and so on)
name    |VARCHAR(64) |Unique name that identifies the language string. This acts as a key that ties strings together across languages
event   |VARCHAR(64) |The part of Textpattern where this piece of text is used. This not only helps to keep the language strings organized for the translators, it also means only the required strings are loaded where they are needed. On the public side only the language strings with event `public` and `common` are loaded. On the administration side, the events `admin-side`, `common`, plus the panel-specific event are loaded on any given panel
owner   |VARCHAR(64) |Mandatory for non-core strings to group language strings for ease of management (e.g. deletion when a plugin is uninstalled). Core strings have no owner set. Every other string is given the designated owner, or `site` if omitted
data    |TEXT        |Translation of the language string
lastmod |TIMESTAMP   |Modification data and time of the language string

Index type | Name | Definition
---|---|---
PRIMARY KEY |- |(id)
UNIQUE |lang   |(lang, name)
INDEX  |lang_2 |(lang, event)
INDEX  |owner  |(owner)

## txp_link

Contains all the links and related information created on the [Links panel](https://docs.textpattern.io/administration//links-panel).

Column | Type | Description
---|---|---
id          |INT          |Unique auto-incremented ID of this link
date        |DATETIME     |Creation date and time of the link
category    |VARCHAR(64)  |Name of the category associated with this link
url         |TEXT         |Link destination URL
linkname    |VARCHAR(255) |Link text (plain text)
linksort    |VARCHAR(128) |String of text that can be used to customize link sorting
description |TEXT         |Description of the link (typically plain text)
author      |VARCHAR(64)  |Login name of the author that created this link

Index type | Name | Definition
---|---|---
PRIMARY KEY |-    |(id)
INDEX |author_idx |(author)

## txp_log

Contains log entries of page requests (visits) to your website, which are output on the [Visitor logs panel](https://docs.textpattern.io/administration/visitor-logs-panel). Depending on your preferences, you can either log nothing, just referrers, or all requests. Old log entries are removed automatically every time you display the visitor logs panel.

Column | Type | Description
---|---|---
id     |INT          |Unique auto-incremented ID of this log entry
time   |DATETIME     |Date and time of the visitor
host   |VARCHAR(255) |Hostname of the computer that requested the page. If DNS lookups are disabled in the preferences or if the reverse DNS lookup of the IP address failed, the IP address is stored instead
page   |VARCHAR(255) |URI of the requested page
refer  |MEDIUMTEXT   |Page from which the visitor came (Referer URL) if available
status |INT          |HTTP Status response code. Only status 200 (OK) is logged
method |VARCHAR(16)  |HTTP Request method: typically POST or GET
ip     |VARCHAR(45)  |IP address of the computer that requested the page

Index type | Name | Definition
---|---|---
PRIMARY KEY|- |(id)
INDEX |time   |(time)
INDEX |ip     |(ip)

## txp_page

Contains all the Page templates you create on the [Pages panel](https://docs.textpattern.io/administration/pages-panel).

Column | Type | Description
---|---|---
name      |VARCHAR(255) |Name of the template
user_html |TEXT         |Template contents: HTML, Textpattern tags and text (max 64KB)
skin      |VARCHAR(63)  |The theme to which this style is associated
lastmod   |DATETIME     |Modification date and time of the template

Index type | Name | Definition
---|---|---
UNIQUE |name_skin |(name(63), skin(63))

## txp_plugin

Contains all the plugins you have installed, that are displayed on the [Plugins panel](https://docs.textpattern.io/administration/plugins-panel).

Column | Type | Description
---|---|---
name         |VARCHAR(64)       |Plugin name
status       |INT               |Activation status (0 = disabled, 1 = enabled)
author       |VARCHAR(128)      |Plugin author name
author_uri   |VARCHAR(128)      |URL of the plugin author website
version      |VARCHAR(255)      |Version in [semver](https://semver.org/) dotted format
description  |TEXT              |Short description of plugin purpose (should be limited to 255 chars)
help         |MEDIUMTEXT        |Documentation in HTML or markup (Textile) format (max 64KB)
code         |MEDIUMTEXT        |Plugin code (PHP), sometimes modified by user on Plugin tab (max 16MB)
code_restore |MEDIUMTEXT        |Original plugin code (PHP) used for restoring to last-installed state (max 16MB)
code_md5     |VARCHAR(32)       |Checksum of the original plugin code, to detect if changes have been made
textpack     |MEDIUMTEXT        |Contents of any language starings the plugin uses, in all languages. When languages are installed or updated, this information is scanned and language strings automatically installed
data         |MEDIUMTEXT        |Plugin-specific data store. Overwritten when plugin is updated
type         |INT               |Where the plugin is loaded (0 = public, 1 = public + admin, 2 = library (when called), 3 = admin-only, 4 = admin-only + Ajax, 5 = public + admin + Ajax)
load_order   |TINYINT  UNSIGNED |Order in which this plugin will be loaded (1 = first, 9 = last). By default set to 5, which should not be changed unless you know what you're doing
flags        |SMALLINT UNSIGNED |16-bit value which signals the presence of optional capabilities to the core plugin loader. The four high-order bits 0xf000 are available for private use.[^2]

Index type | Name | Definition
---|---|---
UNIQUE |name            |(name)
INDEX  |status_type_idx |(status, type)

## txp_prefs

The `txp_prefs` table contains all the administration preferences.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
  Column       Type           Description
  ------------ -------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  prefs_id    integer        Unknown (always set to 1?)
  name         varchar(255)   Name that identifies this preference
  val          text           Contents/setting of this preference (max 64kB)
  type         integer        Where is it shown on the Preferences tab? (0 = basic, 1 = advanced, 2 = hidden)
  event        varchar(12)    Event to which this preference applies. Allows related preferences to be shown together on the Preferences tab
  html         varchar(64)    Type of HTML code used for display when editing this preference: yesnoradio, text_input, gmtoffset_select, logging, permlinkmodes, commentmode, weeks, languages, dateformats, prod_levels or pref_text
  position     integer        Display position of this preference among others within the same event on the Preferences tab
  user_name   varchar(64)    login name of the user to whom this preference applies (by default set to an empty string to indicate that the preference is not bound to a specific user)

</div>

## txp_section

The `txp_section` table contains all the sections you create on the [Sections panel](https://docs.textpattern.io/administration/sections-panel).

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
  Column          Type           Description
  --------------- -------------- ---------------------------------------------------------------------------------------------
  name            varchar(128)   Section name (used in URL)
  page            varchar(128)   Page template used for this section
  css             varchar(128)   Style sheet used for this section
  is_default     integer        Default section for new articles? (0 = no, 1 = yes). Only one section can be set as default
  in_rss         integer        Include articles in this section in the site's RSS or Atom XML feeds? (0 = no, 1 = yes)
  on_frontpage   integer        Show articles in this section on the front page (0 = no, 1 = yes)
  searchable      integer        Are articles in this section searchable? (0 = no, 1 = yes)
  title           varchar(255)   Section title

</div>

## txp_users

The `txp_users` table contains information for all users, as displayed on the [Users panel](https://docs.textpattern.io/administration/users-panel).

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
  Column         Type           Description
  -------------- -------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  user_id       integer        Unique auto-incremented ID of this user
  name           varchar(64)    Login name
  pass           varchar(128)   Password
  RealName       varchar(64)    Real name
  email          varchar(100)   Email address (used for sending passwords and comment notifications
  privs          integer        Privilege level (0 = none, 1 = publisher, 2 = managing editor, 3 = copy editor, 4 = staff writer, 5 = freelancer, 6 = designer). Indicates what the user is allowed to do, once logged in on the admin side
  last_access   datetime       Date and time when the user last logged in by entering a valid username and password combination
  nonce          varchar(64)    Unique identifier used for cookie authentication (do NOT touch this in plugins!)

</div>

[^1]: The size limits shown in the *Description* for various table columns (e.g. the `Body` column of the `textpattern` table) may differ slightly from the actual size limits found in the tables created by Textpattern during installation (when a column is used in multiple tables, the smallest size is used). You should consider the limits indicated here as authoritative. When in doubt, ask a developer on the forum.

[^2]: See [Plugin lifecycle management and preferences](https://docs.textpattern.io/development/) for more info.
