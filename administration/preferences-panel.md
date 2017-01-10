---
layout: document
category: Administration
published: true
title: Preferences panel
description: The Preferences administration panel is where you configure the everyday operation of your Textpattern site.
---

# Preferences panel TODO

The Preferences administration panel is where you configure the everyday operation of your Textpattern site. Along with the [Languages administration panel](http://docs.textpattern.io/administration/languages-panel), most of Textpattern's site-wide settings can be configured and fine-tuned. Preferences are grouped for convenience:

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

**Live:** This mode is best suited production (live) Textpattern sites (i.e. your site is ready to serve pages to visitors) and uses fewest server resources. In 'Live' mode, no errors or diagnostics will be displayed to your visitors.

**Testing:** This mode is best suited for the initial setup and design of a stable release of Textpattern. Any PHP errors and selected Textpattern warnings will be displayed on public pages. Browser caching is disabled. Performance information will be included in HTML comments at the end of every Textpattern page, including:

* the time it took the server to build the page ("Runtime")
* the number of database queries executed
* approximate peak memory usage

**Debugging:** This mode is best suited for diagnosing problems in Textpattern Pages, Forms, plugins and PHP code. PHP notices will be displayed, in addition to the errors and warnings shown in 'Testing' mode. Browser caching is disabled.

Performance information will be included in HTML comments at the end of every Textpattern page, including:

* the time it took the server to build the page ("Runtime")
* the number of database queries executed
* approximate peak memory usage
* a Textpattern tag trace (i.e. all Textpattern tags processed while building the page)

It's normal to see some PHP notices in 'Debugging' mode. A lone PHP notice is not necessarily an indicator that something is wrong, it's there to aid troubleshooting if a problem arises.

### Time zone

Textpattern's displayed time should typically be set to your local or target audience time zone. Textpattern defaults to the localized time as indicated by the server time zone (i.e. the time set by the server Textpattern is installed to).

The standard time system for all Internet-related synchronizations is UTC ([Coordinated Universal Time](https://en.wikipedia.org/wiki/Coordinated_Universal_Time)). A numeric value in parentheses refers to the time offset in seconds when compared to UTC. Textpattern uses GMT notation instead of UTC, but they are identical.

### Automatically adjust Daylight Saving Time setting?

This setting allows Textpattern to alter when Daylight Savings Time occurs in your locale. If this is set to 'No', you will be able to change the 'DST enabled' preference below manually.

### Daylight Savings Time enabled?

If the time zone selected above is subject to [Daylight Saving Time](https://en.wikipedia.org/wiki/Daylight_saving_time) (and 'Automatically adjust Daylight Saving Time setting?' is set to 'No' above) you should select 'Yes' manually when Daylight Saving Time commences and 'No' when it ends.

### Date format

The 'Date format' control allows you to select how you want your date and time formats to appear in your articles by default from a variety of options. Dates are output in your written articles via the `<txp:posted />` and `<txp:modified />` tags.

### Archive date format

The 'Archive date format' is a drop-down menu that provides the same options as the 'Date format' menu, but applies to articles viewed away from the front page. As before, the dates are output in your written articles (in this case in your archival section) via the `<txp:posted />` and `<txp:modified />` tags.

### Article URL pattern

The 'Article URL pattern' drop-down list is intended to make it easier to establish flexible (or 'Clean' URLs) in your site, which in turn is a nice usability feature for your web site visitors. The drop-down list provides different options, one for 'messy' URLs (which is the option for **not** having clean URLs), and various patterns for clean URLs; each having a specific path format.

Getting clean URLs to work may take a combination of further steps, addressed in @@TODO: managing clean URLs@@.

### Doctype

Select which HTML [doctype](https://www.w3.org/wiki/Doctypes_and_markup_styles) you wish to use (either HTML5 or XHTML).

### Logging

The 'Logging' preference allows you to select what kinds of visiting activity Textpattern should record when such activity occurs. The recorded information is displayed in the [Visitor logs administration panel](http://docs.textpattern.io/administration/visitor-logs-panel) for you to review. This Logging control is a drop-down menu with three options.

1. **None:** By default Textpattern will not log any visitor information at all.
2. **All hits:** Textpattern will collect information for all site visits.
3. **Referrers only:** Only record information about visitors from another location. This option allows you to see what kind of traffic your site is getting, while at the same time eliminating any log entries that might result from your own access to the site while, for example, making any site updates (generally you do not need to see your own activity on your site).

### Logs expire after how many days?

When you are using Textpattern for logging (see above), you can set how long (in days) those logs should be kept. '7' will keep the logs available for seven days.

### Accept comments?

This is a global setting for whether or not you want to allow your articles to accept comments. This setting can be overridden on an article-by-article basis in the [Write administration panel](http://docs.textpattern.io/administration/write-panel) as you write new articles.

## Admin preferences

### Image directory

The root-relative URI (without opening or closing slashes) of the directory (folder) that holds images uploaded through the [Images administration panel](http://docs.textpattern.io/administration/images-panel). By default this is `images`, and you only need to change this if you have renamed and/or moved this directory.

### File directory path

The full path (file path, not URI) to the directory (folder) for files uploaded via the [Files administration panel](http://docs.textpattern.io/administration/files-panel). By default it is named `files` and is in the root directory of the website. As with the Image directory, you only need to change this if you have renamed and/or moved this directory.

### Maximum file size of uploads (in bytes)

Maximum size for file uploads via the [Files administration panel](http://docs.textpattern.io/administration/files-panel). Note that this value is also limited by the configuration of PHP on your web server; if Textpattern detects that your PHP configuration only allows smaller downloads it will automatically correct this value downwards. If you want to allow larger file uploads via upload from the browser you have to talk with your host (the relevant values in `php.ini` are `post_max_size`, `upload_max_filesize` and `memory_limit`).

Image uploads are not restricted by this value. The maximum allowed size for images is always ~1MB (unless restricted by PHP as explained above).

### Temporary directory path

Full path (absolute file path, not URI) for this directory, which is required by Textpattern during uploads. By default it is named `tmp` and is at the root level of the Textpattern installation.

### Plugin cache directory path

This setting is mainly used for plugin developers. When specified, you can put the plugin source file (not compiled) in this directory and Textpattern will load it automatically, so you can easily edit the plugin and immediately see the effect it has without having to install/activate the plugin. **Beware** though that by using this method, a broken plugin (which fails to compile) may also break Textpattern!

It is recommended that you load plugins through the standard Plugins administration panel on a production site, rather than using the plugin cache directory.

**Note:** Do not specify the same directory for both 'Temporary directory path' and 'Plugin cache directory path', as this will cause problems (Textpattern would try to run the contents of temporary log files as plugins).

### SMTP envelope sender address

This preference should be left blank unless you experience problems with sending email in Textpattern (i.e. no email is sent at all). Should that problem arise, you can enter any valid email address here, although preferably one that has the same domain name as the website where you've installed Textpattern (i.e. if your website is `example.com`, you might use `you@example.com`).

### Send login details from this email address

Specify an email address which is used as the sender’s 'From:' address on messages with login information for new users.

If this preference is left blank or contains an invalid email address, Textpattern uses the name and address of the currently logged-in user instead.

### Use ISO-8859-1 encoding in emails (default is UTF-8)?

Textpattern uses UTF-8 encoding wherever possible by default, including for outgoing emails. However, some older email clients (including some versions of Microsoft Outlook) do not have proper UTF-8 support. If you encounter garbled characters in emails, this setting will convert text to ISO-8859-1 encoding before sending them.

**Note:** If you are using a language the characters of which cannot be represented in ISO-8859-1, this setting will unfortunately not help you. You should try finding a UTF-8 (or Unicode) compatible email client.

### Enable XML-RPC server?

If you wish to use [XML-RPC](https://en.wikipedia.org/wiki/XML-RPC) for controlling Textpattern remotely (e.g. desktop or mobile apps) you must switch the XML-RPC server on by setting this to 'Yes'.

### Default administration panel

The Textpattern administration interface panel that will appear first when anybody logs in.

### Admin-side theme

The default admin-side theme that will be used when anybody logs into Textpattern. A number of pre-installed admin themes are included with Textpattern, and you can also add custom theme packages to the `textpattern/admin-themes` directory to make them available for use.

## Publish preferences

### Default publishing status

Defines the [publishing visibility status](http://docs.textpattern.io/administration/write-panel#status) of newly-created Textpattern articles.

Note this preference setting does not affect the status or articles created or edited prior to any change.

### Prevent widowed words in article titles?

'Widowed word' refers to the final word of a sentence shown on a new line when the sentence is too long to fit on one line. In printed works, widowed words are considered sloppy typography and should be avoided. Setting this preference to 'Yes' will ensure that long article titles lines never have only the last word on a new line. Instead, the two last words will appear on a new line.

**Note:** This setting can prove problematic in responsive pages at smaller page widths, because the non-breaking space character between the last two words may cause titles to overspill their parent container. In that case, set this preference to 'No'.

### Use excerpts on articles?

By choosing 'No' the excerpt field will not be shown to authors on the [Write administration panel](http://docs.textpattern.io/administration/write-panel#excerpt).

### Allow form override?

This setting allows article authors to override the Form template to be used when their article is rendered. If enabled, an 'Override form' dropdown will be available under 'Advanced options' on the [Write administration panel](http://docs.textpattern.io/administration/write-panel#override-form).

### Attach titles to permalinks?

This setting will attach a automatically-generated version of the article title to the URL. It is either generated automatically or can be manually overridden in 'URL-only title' when editing an article on the [Write administration panel](http://docs.textpattern.io/administration/write-panel#url-only-title).

The setting will only have an effect when you are using clean URLs. For certain languages this may result in long and ugly URLs, in which case you probably want to set this to 'No'.

### Permalink title URL pattern

This setting only has an effect when 'Attach titles to permalinks?' above is set to 'Yes', and defines the method by which article URLs are constructed and assigned when a non-messy [Article URL pattern](#article-url-pattern) is used.

When an article is published, its URL is generated from the article title unless a specific URL is provided in in the 'URL-only title' field on the [Write administration panel](http://docs.textpattern.io/administration/write-panel#url-only-title).

Take the following example article title: "Ann and Bob eat cake"...

When the 'Permalink title URL pattern' option is set to 'Hyphenated (title-like-this)', the URL for the article would be:

~~~
http://example.com/ann-and-bob-eat-cake
~~~

When the 'Permalink title URL pattern' option is set to 'Intercapped (TitleLikeThis)', the URL for the article would be:

~~~
http://example.com/AnnandBobeatcake
~~~

### Send Last-Modified header?

When set, Textpattern will read a visitor’s HTTP `If-Modified-Since` header (if one exists) and compare it to the last site update. If nothing has changed since the visitor last loaded the page (i.e. if the timestamp the browser sends is the same as the last site update), then a header is sent back instructing the visitor’s browser to use its cached version of the page.

This can reduce bandwidth consumption, page load times, and web server load.

### Publish expired articles?

When set to 'Yes', expired articles will continue to show on your site after their expiry date has elapsed. You can use [if_expired](http://docs.textpattern.io/tags/if_expired) to show alternate content or markup for expired articles.

When set to 'No', expired articles will be removed from the public site and return a "410 Gone" HTTP status instead. Visitors hitting an expired article will be shown a custom page template named "error_410" if it's present.

### Ping pingomatic.com?

This will send a [ping](https://en.wikipedia.org/wiki/Ping_(blogging)) to [Ping-O-Matic](http://pingomatic.com/) whenever you publish a new article. Ping-O-Matic is a aggregation service to notify listed websites that your website has been updated.

### Use Textile

Textile is a utility intended to simplify the conversion of plain text to HTML. When enabled, Textile will process the body text of articles and return structurally sound HTML.

Textile also offers a powerful but easy-to-learn set of commands with which to format text, define structures such as lists, headers and blockquotes, and insert links and images.

The setting you choose here becomes the default for excerpt and body markup on the [Write administration panel](http://docs.textpattern.io/administration/write-panel#url-only-title). You can choose to allow complete Textile processing, to convert line breaks into HTML paragraph markers or not convert any text at all.

### Use DNS lookup in visitor logs?

This setting only has an effect when [Logging](#logging) is turned on. Using DNS will, where possible, translate IP addresses in your logs to hostnames. In some instances this might slow down your site, in which case you might want to set this to 'No'.

### Use plugins?

This allows you to turn off all support for Textpattern plugins. This is useful if you are debugging errors on your site, and you want to make check if one or more plugins are involved.

### Use admin-side plugins?

Admin-side plugins can change the operation of the administration interface. They might hook into already existing actions, like editing or publishing articles, or they might add new panels for added/extended functionality.

### Allow PHP in pages?

When enabled, this setting allows PHP code within Page templates and Form templates. PHP code must have opening and closing PHP tags omitted, and also be enclosed within Textpattern [php](http://docs.textpattern.io/tags/php) tags.

### Allow PHP in articles?

When enabled, this setting will allow use of PHP within articles. The author must have sufficient privileges to do so (by default, only @@Publishers@@ and @@Managing Editors@@ can). PHP code must have opening and closing PHP tags omitted, and also be enclosed within Textpattern [php](http://docs.textpattern.io/tags/php) tags.

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

### Include email in Atom feeds?

This allows you to include the email address of the author (as set in their user account) of an article in the *author* part of your Atom feeds.

### Use email address to construct feed ids (default is site URL)?

Feed items in Atom, require a unique ID. To generate IDs unique to your site, Textpattern allows you to choose between either an email address or your domain name to include in these IDs. The email address will be the first one used when creating the site. Unless you are likely going to be changing your domain name, it is probably safe to set this to 'No'.

## Comments preferences

If you set [Accept comments?](#accept-comments) to 'Yes', this region of the Preferences administration panel is where you establish your global settings for article comments (if set to 'No', this region is omitted).

### Comments on by default?

If this is set to 'Yes', comments will be automatically enabled for every article published. If set to 'No', you must enable comments on the [Write administration panel](http://docs.textpattern.io/administration/write-panel#onoff) each time you want to accept comments.

Note that allowing comments can be turned on or off at any time, on a per-article basis.

### Default comments invite

The text in this edit field will be automatically set in the comment invitation field on the [Write administration panel](http://docs.textpattern.io/administration/write-panel#invitation) for new articles. The comment invitation may also be controlled on a per-article basis.

### Moderate comments?

With this set to 'Yes', every new comment will have its visibility turned off until it has been reviewed. You must manually moderate and make each comment visible (a message will be emailed to the article author when a new comment has been received).

### Comments disabled after

This is a selection of time periods during which comments will be accepted for a given article. The time periods begin when a given article is first published in *live* status. The duration options range from 1 to 6 weeks and *never*.

**Note:** Keep in mind that the longer you keep comments open on a given article, the more you increase the likelihood of comment spam. For this reason, it is not recommended that you select 'never'; however, the decision is ultimately yours to make, as well as the management of comment spam.

### Automatically append comments to articles?

This setting determines whether comments and the comment form are automatically appended to all individual articles (by automatically including the contents of the `comments_display` form).

The majority of the time, you will want this set to 'No', as this allows greater flexibility to the positioning of your comments in your site design. You will need to add the [comments](http://docs.textpattern.io/tags/comments) tag manually in any article-based templates where you want comments to appear.

If you are experiencing duplicate display of comments in an article, then chances are your templates have the [comments](http://docs.textpattern.io/tags/comments) tag in a template but also have 'Automatically append comments to articles?' set to 'Yes' too.

TODO





## Custom fields preferences

TODO





## TODO: TO BE SORTED

### Comments mode

In "popup" mode, a tiny browser window will pop up for the viewer to enter the comment. In "nopopup" mode, the main article page will change to show the comment entry form.

### Comments date format

This control will select the date and time format for the posting time of comments.

### Present comments as a numbered list?

If you want to use an HTML ordered list to display your user comments, choose 'Yes'. If you choose 'No', your comments will be output as blocks of text without automatic numbers, thus numbering (if any) will have to be done by you.

Some commenting plugins require this to be set to 'No' before they work properly

### Mail comments to author?

If set to 'Yes', whenever a comment is made against an article, the author will be emailed notification of the event, along with the contents of the comment.

### Require user's name?

If set to 'Yes', people that want to comment on your blog will have to enter a name in the comment-form. They will receive an error message otherwise.

### Require user's email address?

If set to 'Yes', people that want to comment on your blog, will have to enter an email address in the comment-form. They will receive an error message otherwise.

### Never display email address?

This setting controls whether the email address of a commenter should be shown publicly.

### Apply rel="nofollow&quot; to comments?

This will add an additional attribute to the links made in comments. It is intended to be a measure that takes away the incentive for comment-spammers and was initiated by a range of search engines and software-writers. You can find out more about it by reading [Google's announcement](http://googleblog.blogspot.com/2005/01/preventing-comment-spam.html).

**Note:** This setting does not influence the functionality or ranking of your site. It may prevent or diminish the influence of your comments when some search engines rank sites linked to from those comments.

### Disallow user images?

With this option set to 'Yes', images included in comments will be stripped out.

### Allow more Textile markup in comments?

When set to 'Yes', comments may contain Textile elements which would otherwise be treated as plain text:

* headings
* ordered and unordered lists
* foot notes
* tables
* code
* extended block syntax (bc.., bq.., etc.)

For security reasons, raw HTML is transformed into regular text.

### Spam blocklists (comma-separated)

The blocklist providers entered here, will be contacted when a comment is posted to your blog and the IP of the comment poster will be checked. If the IP is listed, it means there have been spamming complaints made about this IP in the past and a comment will be rejected.

You can enter a list of domain names that should be seperated by commas. Potential blocklists can be found at [dmoz](http://dmoz.org/Computers/Internet/Abuse/Spam/Blacklists/), but be aware that it is your responsibility to make sure you can trust those blacklist-providers before you add any.

#### New comment means site updated?

The database keeps track of when the last change to your site has happened. When this setting is set to 'Yes', a new comment will also update this value. This value is used for example for the "Send Last-Modified header" functionality.

### Custom fields

This region is where ten (10) custom fields can be defined. New installations of Textpattern define two custom fields for demonstration purposes: *custom1* and *custom2*. When custom fields have names such as these, they automatically appear under the *Advanced Options* section of the [write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write) panel so you can make use of them, as needed, in context of a given article.

**Important notes on creating custom field names:**

Custom field names may include letters (uppercase or lowercase), numbers, and under scores, but no spaces or other special characters should be used. For example, *custom1*, *Custom1*, and *Custom_1* are all valid name constructs, while *custom 1* and *custom !* are not.

(**Attention:** you might find that you can use spaces in custom field names and it works in some situations. But this is \*not advised\*â€"and may eventually become impossible anywayâ€"because there are instances where custom field names are used as attributes in other Textpattern tags and thus required to be non-breaking strings, e.g.,

    <txp:article_custom customfieldname="value" />

. In this example, "customfieldname" represents a custom field name, which must be a single string in this case to work correctly. If the defined custom field name has one or more spaces, it won't work correctly.)

Also, there are certain names **reserved** by Textpattern, which should not be used to name custom fields, or it could cause your code to not work as expected. **Do not use the following for custom field names:**

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
* Any other [tag attribute](http://docs.textpattern.io/tags/tag-attributes-cross-reference), just in case

A symptom of a name clash is when you go to check or display the contents of a custom field and receive unexpected (or no) output. In this case, make sure your custom field names are not any of the reserved names listed above.

To remove a custom field, simply clear its name. **Don't forget to save changes made in the panel.**

### Compensate for persistent connections mod_deflate bug?

Some mod_deflate versions have a bug that breaks subsequent requests when keep-alive is used. Dropping the connection is the only reliable way to fix this. Setting this preference to 'Yes' will close the connection, forcing the browser to reconnect for the next request.

[Next: Languages panel](http://docs.textpattern.io/administration/languages-panel)
