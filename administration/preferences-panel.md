---
layout: document
category: Administration
published: true
title: Preferences panel
description: The Preferences panel is where you configure the everyday operation of your Textpattern site.
---

# Preferences panel

The Preferences panel is where you configure the everyday operation of your Textpattern site. Along with the [Languages panel](/administration/languages-panel), most of Textpattern's site-wide settings can be configured and fine-tuned. Preferences are grouped for convenience.

**Contents**

* Table of contents
{:toc}

## Site preferences

Site preferences are global settings for your Textpattern site. They include settings for your site name, website address, server location, time & date, visitor logging and article comment functionality.

### Site name

**Site name** is the title of your website. By default, Textpattern fills this field with ‘My Site’, though it can be changed to your preference.

A travel-centric website, for example, might be:

Around The World In 80 Days
{:.example}

And a coffee shop website might be

Brewster's Java Joint
{:.example}

### Site URL

**Site URL** is the homepage address where your Textpattern site is viewed. This should be set to your domain or hostname without the <i>http(s)://</i> protocol and without the trailing forward slash (<i>/</i>).

If you use ‘<i>www</i>’, then use this pattern:

www.example.com
{:.example}

If you enforce dropping the ‘<i>www</i>’ by way of a rewrite rule, use this pattern:

example.com
{:.example}

If you run Textpattern in a site subdirectory, append the directory name:

example.com/subdirectory
{:.example}

### Site slogan

**Site slogan** is an optional site subheading, motto, or other quote for your site. Considering the examples for **Site name** above

Around The World In 80 Stays<br>Adventures Of A Global Explorer
{:.example}

Likewise:

Brewster's Java Joint<br>The Best Morning Brew, Since 2002!
{:.example}

Use plain text only (i.e. no markup), as it is HTML-escaped before output.

### Production status

The **Production status** choice defines the level of error reporting and diagnostic information provided by Textpattern. There are three options:

‘Live’ is best suited for production (live) websites and uses fewest server resources. In 'Live' mode, no errors or diagnostics will be displayed to your visitors.

‘Testing’ is best suited for the initial setup and design of a stable release of Textpattern. Any PHP errors and selected Textpattern warnings will be displayed on public pages. Browser caching is disabled. Performance information will be included in HTML comments at the end of every Textpattern page, including:

* the time it took the server to build the page ("Runtime")
* the number of database queries executed
* approximate peak memory usage

‘Debugging’ is best suited for diagnosing problems in Textpattern pages, forms, plugins and PHP code. PHP notices will be displayed, in addition to the errors and warnings shown in 'Testing' mode. Browser caching is disabled. Performance information will be included in HTML comments at the end of every Textpattern page, including:

* the time it took the server to build the page ("Runtime")
* the number of database queries executed
* approximate peak memory usage
* a Textpattern tag trace (i.e. all Textpattern tags processed while building the page)

It is normal to see some PHP notices in 'Debugging' mode. A lone PHP notice is not necessarily an indicator that something is wrong, it's there to aid troubleshooting if a problem arises.

### Time zone

Textpattern's displayed time should typically be set to your local or target audience time zone. Textpattern defaults to the localized time as indicated by the server time zone (i.e. the time set by the server Textpattern is installed to).

The standard time system for all Internet-related synchronizations is UTC ([Coordinated Universal Time](https://en.wikipedia.org/wiki/Coordinated_Universal_Time)).

A numeric value in parentheses refers to the time offset in seconds when compared to UTC. Textpattern uses GMT notation instead of UTC, but they are identical.

### Automatically adjust Daylight Saving Time?

This setting allows Textpattern to alter when Daylight Savings Time occurs in your locale. If this is set to 'No', you will be able to change the 'DST enabled' preference below manually.

### Daylight Savings Time enabled?

If the time zone selected above is subject to [Daylight Saving Time](https://en.wikipedia.org/wiki/Daylight_saving_time) (and 'Automatically adjust Daylight Saving Time setting?' is set to 'No' above) you should select 'Yes' manually when Daylight Saving Time commences and 'No' when it ends.

### Date format

**Date format** allows you to select how you want your date and time formats to appear in your articles by default from a variety of options. Dates are output in your written articles via the `<txp:posted />` and `<txp:modified />` tags.

### Archive date format

**Archive date format** is a drop-down menu that provides the same options as the 'Date format' menu, but applies to articles viewed away from the front page. As before, the dates are output in your written articles (in this case in your archival section) via the `<txp:posted />` and `<txp:modified />` tags.

### Article URL pattern

The **Article URL pattern** selection control is intended to make it easier to establish flexible (or 'Clean' URLs) in your site, which in turn is a nice usability feature for your website visitors. The drop-down list provides different options, one for 'messy' URLs (which is the option for **not** having clean URLs), and various patterns for clean URLs; each having a specific path format.

Getting clean URLs to work may take a combination of further steps. See [Clean URLs do not work](/faqs/clean-urls-do-not-work) for the best we can help you with.

### Doctype

Select which HTML [doctype](https://www.w3.org/wiki/Doctypes_and_markup_styles) you wish to use (either HTML5 or XHTML).

### Logging

The Logging preference allows you to select what kinds of visiting activity Textpattern should record when such activity occurs. The recorded information is displayed in the [Visitor logs panel](/administration/visitor-logs-panel) for you to review. The selection menu has three options.

Select ‘None’ if you don’t want Textpattern to log visitor information at all. This is the default selection. When ‘None’ is selected, all logging functionality throughout the back end will be hidden in the interface and the **Visitor logs** panel link will be removed from the list of panel options in the Admin region. This helps keep unwanted functionality from being a distraction. The logging functionality all comes back again if the preference is changed to ‘Yes’.

Select ‘All hits’ if you want the logger to collect information for all site visits.

Select ‘Referrers only’ if you only want to log information about visitors from another location. This option allows you to see what kind of traffic your site is getting, while at the same time eliminating any log entries that might result from your own access to the site (e.g. while making any site updates; generally you do not need to see your own activity on your site).

### Logs expire after how many days?

When you are using Textpattern for logging (see above), you can set how long (in days) those logs should be kept. '7' will keep the logs available for seven days.

### Accept comments?

This is a global setting for whether or not you want to allow your articles to accept comments. When set to ‘No’, all comments functionality throughout the administration side will be hidden from view in the interface, and the Comments panel link will be removed from the list of panel options in the Content region. This helps keep unwanted functionality from being a distraction. The comments functionality all comes back again if the preference is changed to ‘Yes’. 

## Admin preferences

### Image directory

The root-relative URI (without opening or closing slashes) of the directory (folder) that holds images uploaded through the [Images panel](/administration/images-panel). By default this is `images`, and you only need to change this if you have renamed and/or moved this directory.

### Theme directory

The relative path (file path, not URI) to the directory (folder) that holds themes uploaded through the [Themes panel](/administration/themes-panel). By default this is `themes`, and you only need to change this if you have renamed and/or moved this directory.

### File directory path

The full path (file path, not URI) to the directory (folder) for files uploaded via the [Files panel](/administration/files-panel). By default it is named `files` and is in the root directory of the website. As with the Image directory, you only need to change this if you have renamed and/or moved this directory.

### Maximum file size of uploads (in bytes)

Maximum size for file uploads via the [Files panel](/administration/files-panel). Note that this value is also limited by the configuration of PHP on your web server; if Textpattern detects that your PHP configuration only allows smaller downloads it will automatically correct this value downwards. If you want to allow larger file uploads via upload from the browser you have to talk with your host (the relevant values in `php.ini` are `post_max_size`, `upload_max_filesize` and `memory_limit`).

Image uploads are not restricted by this value. The maximum allowed size for images is always ~1MB (unless restricted by PHP as explained above).

### Temporary directory path

Full path (absolute file path, not URI) for this directory, which is required by Textpattern during uploads. By default it is named `tmp` and is at the root level of the Textpattern installation.

### Plugin cache directory path

This setting is mainly used for plugin developers. When specified, you can put the plugin source file (not compiled) in this directory and Textpattern will load it automatically, so you can easily edit the plugin and immediately see the effect it has without having to install/activate the plugin. **Beware** though that by using this method, a broken plugin (which fails to compile) may also break Textpattern!

It is recommended that you load plugins through the standard [Plugins panel](/administration/plugins-panel) on a production site, rather than using the plugin cache directory.

Do not specify the same directory for both 'Temporary directory path' and 'Plugin cache directory path', as this will cause problems (Textpattern would try to run the contents of temporary log files as plugins).

### SMTP envelope sender address

This preference should be left blank unless you experience problems with sending email in Textpattern (i.e. no email is sent at all). Should that problem arise, you can enter any valid email address here, although preferably one that has the same domain name as the website where you've installed Textpattern (i.e. if your website is `example.com`, you might use `you@example.com`).

### Send login details from this email address

Specify an email address which is used as the sender's 'From:' address on messages with login information for new users.

If this preference is left blank or contains an invalid email address, Textpattern uses the name and address of the currently logged-in user instead.

### Use ISO-8859-1 encoding in emails (default is UTF-8)?

Textpattern uses UTF-8 encoding wherever possible by default, including for outgoing emails. However, some older email clients (including some versions of Microsoft Outlook) do not have proper UTF-8 support. If you encounter garbled characters in emails, this setting will convert text to ISO-8859-1 encoding before sending them.

If you are using a language the characters of which cannot be represented in ISO-8859-1, this setting will unfortunately not help you. You should try finding a UTF-8 (or Unicode) compatible email client.

### Enable XML-RPC server?

If you wish to use [XML-RPC](https://en.wikipedia.org/wiki/XML-RPC) for controlling Textpattern remotely (e.g. desktop or mobile apps) you must switch the XML-RPC server on by setting this to 'Yes'.

### Default panel

The Textpattern administration interface panel that will appear first when anybody logs in.

### Admin-side theme

The default admin-side theme that will be used when anybody logs into Textpattern. A number of pre-installed admin themes are included with Textpattern, and you can also add custom theme packages to the `textpattern/admin-themes` directory to make them available for use.

### Display admin-side inline help links?

If you wish to hide admin-side inline help links (Textpattern help pop-up windows) throughout the system, switch this setting to 'None'.

## Publish preferences

### Default publishing status

Defines the [status](/administration/write-panel#status) of new draft articles.

This preference setting does not affect the status or articles created or edited prior to any change.

### Prevent widowed words in article titles?

'Widowed word' refers to the final word of a sentence shown on a new line when the sentence is too long to fit on one line. In printed works, widowed words are considered sloppy typography and should be avoided.

Setting this preference to 'Yes' will ensure that long article titles lines never have only the last word on a new line. Instead, the two last words will appear on a new line.

This setting can prove problematic in responsive pages at smaller page widths, because the non-breaking space character between the last two words may cause titles to overspill their parent container. In that case, set this preference to ‘No’.

### Use excerpts on articles?

By choosing ‘No’ the excerpt field will not be shown to authors on the [Write panel](/administration/write-panel#excerpt).

### Allow form override?

This setting allows article authors to override the Form template to be used when their article is rendered. If enabled, an **Override form** selection menu will appear under **Advanced options** on the [Write panel](/administration/write-panel#override-form).

### Attach titles to permalinks?

This setting will attach the article title to the URL. It can be manually overridden in **URL-only title** when editing an article on the [Write panel](/administration/write-panel#url-only-title).

The setting will only have an effect when you are using clean URLs. For certain languages this may result in long and ugly URLs, in which case you probably want to set this to 'No'.

### Permalink title URL pattern

This setting only has an effect when <i>Attach titles to permalinks?</i> above is set to 'Yes', and defines the method by which article URLs are constructed and assigned when a non-messy [Article URL pattern](#article-url-pattern) is used.

When an article is published, its URL is generated from the article title unless a specific URL is provided in the **URL-only title** field on the [Write panel](/administration/write-panel#url-only-title).

Consider the following example title: 

Ann and Bob eat cake
{:.example}

When the **Permalink title URL pattern** option is set to 'Hyphenated (title-like-this)', the URL for the article would be:

https://example.com/ann-and-bob-eat-cake
{:.example}

When the **Permalink title URL pattern** option is set to 'Intercapped (TitleLikeThis)', the URL for the article would be:

https://example.com/AnnandBobeatcake
{:.example}

### Send &quot;Last-Modified&quot; header?

When set, Textpattern will read a visitor's HTTP `If-Modified-Since` header (if one exists) and compare it to the last site update. If nothing has changed since the visitor last loaded the page (i.e. if the timestamp the browser sends is the same as the last site update), then a header is sent back instructing the visitor's browser to use its cached version of the page.

This can reduce bandwidth consumption, page load times, and web server load.

### Publish expired articles?

When set to 'Yes', expired articles will continue to show on your site after their expiry date has elapsed. You can use [if_expired](/tags/if_expired) to show alternate content or markup for expired articles.

When set to 'No', expired articles will be removed from the public site and return a `410 Gone` HTTP status instead. Visitors hitting an expired article will be shown a custom page template named <i>**error_410**</i> if it is present.

### Use Textile

[Textile](https://textile-lang.com/) is a utility intended to simplify the conversion of plain text to HTML. When enabled, Textile will process the body text of articles and return structurally sound HTML.

Textile also offers a powerful but easy-to-learn set of commands with which to format text, define structures such as lists, headers and block quotes, and insert links and images.

The setting you choose here becomes the default for excerpt and body markup on the [Write panel](/administration/write-panel#url-only-title). You can choose to allow complete Textile processing, to convert line breaks into HTML paragraph markers or not convert any text at all.

### Use DNS lookup in visitor logs?

This setting only has an effect when [Logging](#logging) is turned on. Using DNS will, where possible, translate IP addresses in your logs to hostnames. In some instances this might slow down your site, in which case you might want to set this to 'No'.

### Enable short tag support?

Textpattern tags take the form `<txp:tag_name attribute1="value" … />`. It is possible to reduce the amount of typing involved by enabling a shorthand notation whereby the `txp:` may be omitted by following a few simple guidelines. See [Short tags and macros/shortcodes](/tags/tag-basics/short-tags-macros-shortcodes) for more information.

Setting this preference in no way affects the ability to use `<txp:output_form />` short codes to render form snippets. You can still use `<txp::shortcode />`, which will be interpreted as `<txp:output_form form="shortcode" />`.

### Use plugins?

This allows you to turn off all support for Textpattern plugins. This is useful if you are debugging errors on your site, and you want to make check if one or more plugins are involved.

### Use admin-side plugins?

Admin-side plugins can change the operation of the administration interface. They might hook into already existing actions, like editing or publishing articles, or they might add new panels for added/extended functionality.

### Allow PHP in pages?

When enabled, this setting allows PHP code within Page templates and Form templates. PHP code must have opening and closing PHP tags omitted, and also be enclosed within Textpattern [php](/tags/php) tags.

### Allow PHP in articles?

When enabled, this setting will allow use of PHP within articles. The author must have sufficient privileges to do so (by default, only @@Publishers@@ and @@Managing Editors@@ can). PHP code must have opening and closing PHP tags omitted, and also be enclosed within Textpattern [php](/tags/php) tags.

### Maximum URL length (in characters)

This prevents URLs that are longer than the specified length from functioning. It could be helpful in damage limitation and site security.

## Feeds preferences

### Syndicate article excerpt only?

If this is set to 'No', then feeds will always contain the full article bodies. If this is set to 'Yes', feed items will contain an excerpt instead of the article body where it is available.

### How many articles should be included in feeds?

This is the maximum number of current articles to be syndicated at a time, in RSS and Atom formats.

A low value, such as `5` through `15` is recommended.

### Show comment count in feeds?

When set to 'Yes', this setting will append the number of comments to your article titles in RSS/Atom feeds.

### Include email address in Atom feeds?

This allows you to include the email address of the author (as set in their user account) of an article in the *author* part of your Atom feeds.

### Use email address to construct feed IDs (default is site URL)?

Feed items in Atom, require a unique ID. To generate IDs unique to your site, Textpattern allows you to choose between either an email address or your domain name to include in these IDs. The email address will be the first one used when creating the site. Unless you are likely going to be changing your domain name, it is probably safe to set this to 'No'.

## Comments preferences

If you set [Accept comments?](#accept-comments) to 'Yes', this region of the Preferences panel is where you establish your global settings for article comments (if set to 'No', this region is omitted).

### Comments on by default?

If this is set to 'Yes', comments will be automatically enabled for every article published. If set to 'No', you must enable comments on the [Write panel](/administration/write-panel#onoff) each time you want to accept comments.

Note that allowing comments can be turned on or off at any time, on a per-article basis.

### Default comments invite

The text in this edit field will be automatically set in the comment invitation field on the [Write panel](/administration/write-panel#invitation) for new articles. The comment invitation may also be controlled on a per-article basis.

### Moderate comments?

With this set to 'Yes', every new comment will have its visibility turned off until it has been reviewed. You must manually moderate and make each comment visible (a message will be emailed to the article author when a new comment has been received).

### Comments disabled after

This is a selection of time periods during which comments will be accepted for a given article. The time periods begin when a given article is first published in *live* status. The duration options range from 1 to 6 weeks and *never*.

**Note:** Keep in mind that the longer you keep comments open on a given article, the more you increase the likelihood of comment spam. For this reason, it is not recommended that you select 'never'; however, the decision is ultimately yours to make, as well as the management of comment spam.

### Automatically append comments to articles?

This setting determines whether comments and the comment form are automatically appended to all individual articles (by automatically including the contents of the `comments_display` Form template).

The majority of the time, you will want this set to 'No', as this allows greater flexibility to the positioning of your comments in your site design. You will need to add the [comments](/tags/comments) tag manually in any article-based templates where you want comments to appear.

If you are experiencing duplicate display of comments in an article, then chances are your templates have the [comments](/tags/comments) tag in a template but also have 'Automatically append comments to articles?' set to 'Yes' too.

### Comments mode

If 'current window' is selected (recommended) the current window will be refreshed to display only the current article, with comments beneath.

If 'popup window' is selected, a new browser window will open when the comments link is selected (this uses the `popup_comments` Form template).

### Comments date format

This control will select the date and time format for the posting time of comments.

### Email comments to author?

If set to 'Yes', whenever a new comment is received on an article, a copy will be sent via email to that article's author.

### Present comments as a numbered list?

Determines whether article comments will be wrapped with the HTML `<ol>` tag and individual comments will be wrapped in the `<li>` tag (causing comments to be presented as a numbered list), or whether individual comments will be wrapped with the `<div>` tag instead.

With either value, you can override the tags used on an individual Form template basis by modifying the [comments](/tags/comments) tag, found in the `comments_display` Form template.

### New comment means site updated?

The Textpattern database keeps track of when the most recent change to your site took place. When this setting is set to 'Yes', a new comment will also update this value. This value is used for example for [Send Last-Modified header](#send-last-modified-header) functionality.

### Comments require commenter's name?

If set to 'Yes', people that want to comment on your article will have to enter a name in the comment input form. They will not be able to submit a comment if they do not supply a name.

### Comments require commenter's email address?

If set to 'Yes', people that want to comment on your article will have to enter an email address in the comment write form. They will be unable to post a comment if they do not supply an email address.

### Hide commenter's email address?

This setting controls whether the email address of a commenter should be shown publicly.

It's recommended that email addresses should not be shown, as courtesy to your users, but there may be certain situations when showing commenter email addresses is desirable.

### Apply rel=&quot;nofollow&quot; to comments?

If set to 'Yes', this will add an additional attribute to the links made in comments. It is intended to be a measure that takes away the incentive for comment spammers and was initiated by a range of search engines and software developers. You can find out more by reading [Google's announcement](https://googleblog.blogspot.com/2005/01/preventing-comment-spam.html).

**Note:** This setting does not influence the functionality of your site. It may prevent or diminish the influence of your comments when some search engines rank sites linked to from those comments.

### Strip commenter's images from comments?

With this option set to 'Yes', any images included in comments will be stripped out.

### Allow more Textile markup in comments?

When set to 'Yes', comments may contain Textile elements which would otherwise be treated as plain text:

* headings
* ordered and unordered lists
* footnotes
* tables
* code
* extended block syntax (`bc..`, `bq..`, etc.)

For security reasons, raw HTML is transformed into regular text.

### Spam blocklists (comma-separated)

The [blocklist](https://en.wikipedia.org/wiki/Blacklisting) providers entered here will be queried when a comment is posted to your blog, and the IP address of the comment poster will be checked. If the IP address is listed it means there has been one or more spamming reports made about this IP in the past, and the comment will be rejected.

Additionally, checks on approved comments will take place when an article is viewed on the front-side. If you encounter slowness when displaying articles with comments, consider disabling spam blocklists by removing the blocklist address(es).

You can enter a list of domain names here, separated by commas. Please note that it is your responsibility to ensure blocklists are fit for purpose.

## Custom fields preferences

This region is where custom fields can be defined (new installations of Textpattern define two custom fields for demonstration purposes: `custom1` and `custom2`). These in turn appear under the 'Custom fields' section of the [Write panel](/administration/write-panel#custom-fields) so you can make use of them, as needed, in context of a given article.

**Important notes on creating custom field names:** Custom field names may include letters (uppercase or lowercase), numbers, and under scores, but no spaces or other special characters should be used. For example, `custom1`, `Custom1`, and `Custom_1` are all valid name constructs, while `custom 1` and `custom !` are not.

Also, there are certain names **reserved** by Textpattern, which should *not* be used to name custom fields, or it could cause your code to not work as expected. **Do not use the following for custom field names**:

* annotate
* article_image
* authorid
* body
* category
* category1
* category2
* comments_count
* comments_invite
* excerpt
* form
* id
* keywords
* limit
* offset
* posted
* section
* sort
* status
* thisid
* title
* url_title
* Or any other [tag attribute](/tags/tag-attributes-cross-reference), just in case!

A symptom of a name clash is when you go to check or display the contents of a custom field and receive unexpected (or no) output. In this case, make sure your custom field names are not any of the reserved names listed above.

To remove a custom field, simply clear its name.
