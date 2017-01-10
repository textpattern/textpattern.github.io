---
layout: document
category: Administration
published: true
title: Preferences panel
description: The Preferences administration panel is where you configure the everyday operation of your site.
---

# Preferences panel TODO

The Preferences administration panel is where you configure the everyday operation of your site. Along with the [Languages administration panel](http://docs.textpattern.io/administration/languages-panel), most of Textpattern's site-wide settings can be configured and fine-tuned. Preferences are grouped for convenience:

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

This is a global setting for whether or not you want to allow your articles to accept comments. This setting can be overridden on an article-by-article basis in the [Write panel](http://docs.textpattern.io/administration/write-panel) as you write new articles.

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

TODO

## Feeds preferences

TODO

## Comments preferences

If you set [Accept comments?](#accept-comments) to 'Yes', this region of the Preferences administration panel is where you establish your global settings for article comments (if set to 'No', this region is omitted).

TODO

## Custom fields preferences

TODO





## TODO: TO BE SORTED

### Use Textile

Textile is a meta-formatting language that lets site authors format work without having to know HTML completely. This option may be set to select usage of Textile in articles; disable Textile but keep smart replacement of line breaks and special characters; or disable article manipulation entirely.

### Comments on by default?

Permission for commenting is regulated on a per-article basis. This option controls the default setting for newly authored articles.

### Default invite

The text in this edit field will be automatically set in the comment invitation field on the [write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write) page for new articles. The comment invitation may also be controlled on a per-article basis.

### Moderate comments?

Controls whether or not comments should be immediately published to an article ('No'), or if they should first be screened by a site administrator for approval ('Yes'). Although having them published immediately is more rewarding for the commenter, and less overhead management for the site owner, there is a certain level of risk. One might choose to moderate comments if there is a high degree of comment spam activity, or if comments are tending to be inappropriate, indecent, etc.

### Disabled after

This is a selection of time periods during which comments will be accepted for a given article. The time periods begin when a given article is first published in *live* status. The duration options range from 1 to 6 weeks and *never*.

**Note:** Keep in mind that the longer you keep comments open on a given article, the more you increase the likelihood of comment spam. For this reason, it is not recommended that you select "never"; however, the decision is ultimately yours to make, as well as the management of comment spam.

### Automatically append comments to articles?

If 'Yes', comments are added to articles irrespective of whether you add a [comments](/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments) tag or not. If you see comments doubled up on an article page, either set this to 'No' or alter your comment form.

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

### Syndicate article excerpt only?

If this is set to 'No', then feeds will always contain the full article bodies. If this is set to 'Yes', feed items will contain an excerpt instead of the article body where it is available.

### How many articles should be included in feeds?

This is the maximum number of current articles to be syndicated at a time, in RSS/Atom format. Recommended: a low value, such as 5 through 15

### Show comment count in feeds?

When set to 'Yes', this setting will append the number of comments to your article titles in your XML feeds.

### Include email in Atom feeds?

This allows you to include the email address of the author (as set in their user account) of an article in the author part of your Atom feeds.

### Use email address to construct feed ids (default is site URL)?

Feed items in Atom, require a unique ID. To generate IDs unique to your site, Textpattern allows you to choose between either an email address or your domain name to include in these IDs. The email address will be the first one used when creating the site. Unless you are likely going to be changing your domain name, it is probably safe to set this to 'No'.

### Prevent widowed words in article titles?

In typesetting, a "widow" refers to the last word in a given block of text that happens to wrap to the next line by itself. Allowing widows in printed work is generally considered a visually sloppy thing to do.

By default, Textpattern prevents widow words from happening in article **titles** by automatically adding a no-break value between the last two words. So instead of a widow, there will be two (or more) words on the last line, or none at all, depending on your word count and the width of the containing element of your titles.

This preference allows you to turn that functionality off by saying 'No'. As a result, your titles will wrap without interference. This may be more preferable if your page layout is responsive, as titles with a no-break between two long words could potentially break the layout at smaller screen widths, resulting in text spilling out of the container area.

### Articles use excerpts?

By choosing 'No' the excerpt field will not be shown to the author on the article-editing screen.

### Allow form override?

This setting allows article authors to override the form to be used when their article is rendered. If enabled, an "Override form" dropdown will be available under "Advanced Options", when editing an article.

### Attach titles to permalinks?

This setting will attach a dirified version of your article-title to your URL, it is either generated automatically or can be manually overridden in the "Advanced Options" when editing an article.

This setting will only have an effect when you are using clean URLs. For certain languages this may result in long and ugly URLs, in which case you probably want to set this to 'No'.

### Permalink title URL pattern

This setting only has an effect when "Attach titles to permalinks" is set to 'Yes'. When dirifying article-titles for use in URLs, you have the option of:

1. Hyphenated (title-like-this) - Using all lowercase letters, and replacing spaces with hyphens.
2. Intercapped (TitleLikeThis) - Completely removing spaces, and using CamelCase, which means that the beginning of new words will be marked by uppercase letters.

### Send Last-Modified header?

When set, Textpattern will read a visitor's HTTP If-Modified-Since header (if one exists) and compare it to the last site update. If nothing has changed since the visitor last loaded the page (i.e. if the timestamp the browser sends is the same as the last site update), then a header is sent back instructing the visitor's browser to use its cached version of the page.

This can reduce bandwidth consumption, page load times, and reduce the load on the webserver.

### Publish expired articles?

When set to 'Yes', expired articles will continue to show on your site after their expiry date has elapsed. You can use [if_expired](/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_expired) to show alternate content or markup for expired articles.

When set to 'No', expired articles will be removed from the public site and return a "410 Gone" HTTP status instead. Visitors hitting an expired article will be shown a custom page template named "error_410" if it's
present.

### Compensate for persistent connections mod_deflate bug?

Some mod_deflate versions have a bug that breaks subsequent requests when keep-alive is used. Dropping the connection is the only reliable way to fix this. Setting this preference to 'Yes' will close the connection, forcing the browser to reconnect for the next request.

### Ping pingomatic.com?

Whenever you publish a new article, Textpattern will send a ping to [Ping-O-Matic](http://pingomatic.com/). Recommended: 'Yes' for live sites, 'No' for sites in development.

### Use DNS?

This setting only has an effect, when "Logging" in "Site Preferences" is turned on. Using DNS will allow you to translate IP adresses in your logs to host-names. For some servers this might subjectively slow down your site, in which case you might want to turn this off.

### Maximum URL length (in characters)

This prevents URLs that are longer than specified from functioning. It could be helpful in damage limitation.

### Use plugins?

This allows you to turn off support for plugins. You might want to do this if you find strange errors happening on your site, and you want to make sure that it is not the fault of plugins.

### Use admin-side plugins?

Admin-side plugins are those which can change the operation of the administration interface. They might hook into already existing actions, like editing or publishing articles, or they might add new tabs for added/extended functionality.

### Allow PHP in pages?

When enabled, this setting allows PHP code within page and form templates. PHP code must be without both opening and closing PHP tags, and enclosed within [php](/home/www/zendstudio/dokuwiki/bin/doku.php?id=php) tags.

### Allow PHP in articles?

When enabled, this setting will allow use of PHP within articles. The author must have sufficient privileges to do so. PHP code must be both without opening and closing PHP tags, and enclosed within [php](/home/www/zendstudio/dokuwiki/bin/doku.php?id=php) tags.

### Allow raw php? 

When enabled, this setting allows raw PHP code to be used. Normally this isn't allowed, and PHP code must be without both opening and closing PHP tags, and enclosed within txp:php tags. This setting is for backwards compatible purposes only, and it is recommended to be set to 'No'.

[Next: Languages panel](http://docs.textpattern.io/administration/languages-panel)
