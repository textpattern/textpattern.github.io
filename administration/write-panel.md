---
layout: document
category: Administration
published: true
title: Write panel
description: The Write panel reveals the various features for managing articles on your website, which includes creating new articles, editing existing articles.
---

# Write panel

<img class="img--bordered" width="680" height="422" alt="Figure 2" src="/img/47x/admin-panel-write.png" srcset="/img/47x/admin-panel-write.png 1x, /img/47x/admin-panel-write@2x.png 2x">

The Write panel is the default panel of the administration side of Textpattern; it opens when you log in to the administration-side (see Figure 1). The exceptions are when 1) you log in after a new update of your Textpattern installation, in which case you're initially routed to the [Languages panel](/administration/languages-panel), or 2) if you change the default panel to something else via the preference for it in the **Admin** section of the [Preferences panel](/administration/preferences-panel). (The Languages and Preferences panels are both under the main Admin menu.)

The Write panel reveals the editing fields for article content, and various controls for managing content display and publication, such as content organization, date and time, associated images, how you want to format your text, and so on.

On this page:

* [Panel layout: main editing area](#panel-layout-main-editing-area)
  * [Title](#title)
  * [Body](#body)
  * [Excerpt](#excerpt)
  * [Article view](#article-view)
* [Panel layout: secondary area](#panel-layout-secondary-area)
  * [Publish/Save button](#publishsave-button)
  * [Write panel articles navigation](#write-panel-articles-navigation)
  * [Sort and display](#sort-and-display)
  * [Date and time](#date-and-time)
  * [Meta](#meta)
  * [Comment options](#comment-options)
  * [Article image](#article-image)
  * [Custom fields](#custom-fields)
  * [Advanced options](#advanced-options)
  * [Text formatting help](#text-formatting-help)
  * [Recent articles](#recent-articles)
* [Final notes to be aware of](#final-notes-to-be-aware-of)

## Panel layout: main editing area

The contents of the Write panel are arranged in two columns (see Figure 1). The items in each region are discussed in in the following sections, beginning with the first column, which is the *main editing area*.

The first column of the Write panel is where the main creating, drafting and editing of your article takes place. There are four components of this region - three that constitute an article itself, and one that allows different ways of viewing that article as you draft/edit it. They are described below (it should be noted that you must have content in at least one of the article content fields - **Title**, **Body**, or **Excerpt** - before you can save an article draft, but you do not need to have all fields filled).

### Title

This field is simply where you type the *title* (for the most parts the main heading, but other heading systems are possible) of your article. You cannot use any formatting in this field (i.e. HTML or Textile, formatting will be added by an article form (see [Form templates](/themes/form-templates-explained)). The Textpattern tag that is used to output the title of articles is:

~~~ html
<txp:title />
~~~

See the [title tag](/tags/title) documentation for usage.

### Body

This large field is where the article is actually written (or pasted, if you prefer drafting your articles in another text editor). The [Article view](#article-view) works in combination with this field. The primary article tag that is used to output the body of articles is:

~~~ html
<txp:body />
~~~

See the [article tag](/tags/article) documentation for usage.

### Excerpt

This field is where you would add an excerpt, which is a brief bit of text about the article itself. This field is not required, but such a decision would be founded on how you ultimately wanted to establish your website's presentation and architecture. For example, a typical use of an excerpt is for article lists on a home page, where only a title and excerpt for each article is shown in the list; the excerpt provides a little indication about what the full article is about, and the title acts as a link to the full article itself, but when you go to the full article the excerpt is no longer seen.

In Textpattern, the excerpt is not part of the article body but rather is a discrete content item managed separately; however, like the body, you can use Textile (or HTML) to format text in the excerpt. The tag used to output the article excerpt is:

~~~ html
<txp:excerpt />
~~~

See the [excerpt tag](/tags/excerpt) documentation for usage.

### Article view

At the top of the main editing area are three vertical tabs labeled 'Text', 'HTML', and 'Preview'; these provide three different views of your article-in-progress, as described below:

<img width="200" height="29" alt="Figure 2" src="/img/47x/admin-panel-write-article-view.png" srcset="/img/47x/admin-panel-write-article-view.png 1x, /img/47x/admin-panel-write-article-view@2x.png 2x">

* **Text**: This tab is active by default and is the one you actually draft your article in. The Text view works just like a regular text editor (not a word processor). To give your text formatting, you will have to know either Hypertext Markup Language (HTML), or use a text filter such as (the default) Textile. Textile is a remarkably simple text editing syntax that allows you to format text for the web without having to know HTML (more about using text filters is provided in the section [Text formatting help](#text-formatting-help) below).
* **HTML**: This tab will show you what your article looks like in HTML format, assuming you have used HTML or Textile to do any formatting. If you have, you will see the resulting HTML syntax incorporated in your text. You cannot do any editing in this view, it is for previewing your HTML work-in-progress only.
* **Preview**: This tab will show you what your text will look like (whether you used HTML or Textile) once it is live on the Web. You cannot do any editing in this view, it is for previewing your work-in-progress only.

As you write or edit an article, you may choose to do so using Textile, or you may want to add a single image to the article before posting. The options in the left column provide help in these and other areas, so we will go over those next.

## Panel layout: secondary area

The second column of the Write panel provides options for editing as well as content, each covered below.

### Publish/Save button

The first thing to be aware of has to do with the button that publishes/saves your article and settings. Basically, there are two button labels you will see when working in the write panel; 'Publish' (new article state) and 'Save' (existing article state). When drafting a new article, the button will read as *Publish*. This might be a bit confusing because the word 'Publish' would suggest your article is going directly live to the world when you select this button; however, that will only be true if you set the article's status to be either *Live* or *Sticky*, as already discussed earlier. If this was a new article, and you changed your status to draft (for example), then this button would still read as 'Publish' (even though you were just saving a draft), and not go live to the world. Basically, the 'Publish' label is the default label.

Once you publish an article for the first time, no matter what the status (*Draft*, *Live*, etc.), then the next time you edit your article in the write panel, the button will change to read as 'Save'. The Save button will behave exactly the same as the 'Publish' button, despite whatever article status you happen to want to select (if not *Live*).

When publishing or saving an article, Textpattern gives a feedback in the *message area*. When an article will be public (live or sticky), message reads "Article posted." - when another Status (Draft, Hidden, Pending) is active, message is "Article saved as *status mode*.". Sometimes there will be an additional info and need to modify something - most likely dealing with an identical URL, e.g. "Article posted. The same URL-only title is used by 2 different articles.".

### Write panel articles navigation

This region only appears when you work on articles you have already saved, as follows:

There is a link 'Create new'. It will abandon all unsaved edits of the current article and open a new empty Write panel.

There is a link 'Duplicate'. It will create a duplicate of the current article and open a new Write panel to allow you yo edit the duplicate further.

There is a link 'View'. It will open the public-side view of the current article in a new browser window.

Two navigation buttons - *Previous* and *Next* (when applicable) - let you navigate from one article (in the article catalogue) to another without having to leave the Write panel (another option is to select articles from under the [Recent articles](#recent-articles) link on the right side of the panel, as discussed below. The navigation buttons will rotate through your articles catalogue from the reference point of the article you happen to be viewing at the time. When you select the previous button you will move to the article that is one above the one you are at in the catalogue. When you select the next button you will move down one article in your catalogue.

### Sort and display

#### Status

Public (published) or Private (not published): The first and most important publishing control is the article _status_; a series of options for indicating the status of your article. If you select *Draft*, *Hidden* or *Pending*, your article will not be visible online, but if you select *Live* or *Sticky* it will be visible. The specific function of each status mode is described in following sections.

Status assignment depends on the *Privileges* of a user. Depending on your site's publishing objectives, or number of contributors, not every user may have the same privileges, as set in the "users":/home/www/zendstudio/dokuwiki/bin/doku.php?id=users panel. If multiple contributors support a site and different roles are set, it may be that some users will only be able to choose a subset of these status modes.

##### Draft

The *Draft* status means pretty much what it implies: your article is not finished, it is a draft. Select this mode if you are starting an article (or revising an existing article) but you do not expect to finish it in one sitting. By selecting draft your article will be saved to the database, but it will not be made live to the world. You can come back anytime to work on the draft article, and change the status when you are ready.

##### Hidden

The *Hidden* status might seem a bit odd, but it does have a purpose - think of it as a gaff hook to pull a bad actor off stage; in this case a 'bad' (of course it needn't be bad) article offline. In Textpattern, the Hidden status is a way to pull a live article from being viewable to the world without deleting it so that it might be revamped (or held in limbo) for an *undetermined* amount of time (or until a decision is made as to whether or not is should just be deleted). While *Draft* is used as a document status for revision control and publishing workflow, *Hidden* is merely a quick way to pull an article out of circulation. **Note:** If you have a *determined* time period for an article to be public, it might be better to set it 'Live' and use 'Publish date' and 'Expire date' as needed.

##### Pending

The status of *Pending* is primarily intended for versioning activities - for example where multiple contributors are working on the same article, or where someone can finish an article, but where the article can *only be published* by an authorized user with a particular user role. 'Pending' is the final Status that can be assigned by 'Freelancer' and 'Designer' - it indicates, that an authorized user may start reviewing, editing and publishing it.

As long as the article is in one of Draft, Hidden, or Pending mode, changes made to its title are assigned to its URL-only title. If you, however, gave the article intentionally a URL-only title thats different from the article's title, this field remains untouched.

##### Live

A *Live* article status means that when you select the 'Publish' button (all new articles will use a button that reads 'Publish', after that, the button will read 'Save') the article will be posted for the world to see, so you generally want your article in question to be pretty much done if you select this mode. (This status and the next one, *Sticky*, are the only two publicly-viewable modes.) However, you can always unpublish an article that has been made live by coming back to the Write panel and selecting the *Hidden* status above (or deleting it altogether).

For those privileges who have the rights to assign *Live*, this button will be selected by default whenever you start a new article. 'Freelancer' and 'Designer' aren't privileged to assign 'Live'. Their articles have to be published by higher privileges. Once published they cannot modify even own articles any longer.

##### Sticky

A *Sticky* article is also considered 'live'; however, it won't show up with your other live articles in normal article flow (such as those output with `<txp:article />`), nor will it appear in any article output lists you might have. The sole purpose of making an article sticky is to give it the status (or rather the appearance) of being static on a page. The sticky status is intended for things like 'about' pages, articles that are pinned to the top of a page, or snippets of text that are displayed on pages outside the regular flow of articles.

Same privilege restrictions apply for 'Freelancer' and 'Designer' as in *Live*.

To implement a sticky article you need to do two things:

1. Write the article you want to be sticky.
2. Create a code snippet for the sticky output and insert it in the Page template you want the sticky article to appear.

A code snippet might be something like this (though certainly not the only structure):

~~~ html
<txp:if_article_list>
    <txp:article form="myshortform" status="sticky" />
</txp:if_article_list>

<txp:article limit="5" />
~~~

Generally speaking, what the snippet of code above is saying is: "if an article list, display the sticky article using the form called `myshortform` - then underneath the sticky article, output regular article flow but only show the last five articles."

#### Section

In Textpattern each article must be assigned to a 'Section' (see @@Sections@@). This control provides a drop-down menu to select the Section that you want. If you need to create or modify a section, you can get to the Sections panel using the 'Edit' link.

For a new article the *default section* is automatically preselected. You can override this assignment by selecting another Section of your choosing (for saved articles the assigned section will be selected and displayed in the drop-down menu).

There is a Sections provided in a default install of Textpattern: **Article**, which here is the 'default section' mentioned above; it is used for Textpattern's base article flow. This section is simply provided because it is often desired in a website and the folks at Textpattern are saving you a small step by creating it for you; you can use it (though you may have to modify settings depending on what you want) or delete it - it's up to you!

Sections basically control in what area of your website your article will be displayed. You can use Sections in combination with Categories to create very diverse content management strategies, giving your website visitors the impression of a structured, hierarchical site architecture. More description of Sections is out of scope here, but review later documentation chapters for more insight.

#### Category

This control - provided for assigning categories - is composed of two drop-down menus (empty by default) and an 'Edit' link. Assigning categories of course only works if *there is* at least one article category in the [Categories panel](/administration/categories-panel) (there are three sample ones in a default install). The 'Edit' link will open the Categories panel, where you can create or edit categories.

The drop-down menus will both list *all* categories by their *title*. This basically allows you to put an article in up to two different categories, which you can then manipulate later according to your planned site architecture and content presentation (such level of discussion is out of scope here). For saved articles this control will show existing category assignments.

### Date and time

This part might be considered two *different* functions: Publish date/time and Expire date/time.

#### Publish date/time

By default, at the moment of *opening the Write panel* Textpattern adds the current date and time to the text boxes provided, thus marking the beginning of work. Unless you specifically indicate a different date and time this time will be saved when publishing the article, thus documenting the beginning of your work. If you rather want the current time *when finally publishing* (or re-publishing) the article ('Live' and public), then you should mark the check box 'Set timestamp to now' (saved: 'Reset time to now') before you press 'Publish' or 'Save' in order to set the article public. This option will always establish the date and time at the moment you select the 'Publish' or 'Save' button as the article's publish-timestamp, no matter what status you give it.

To change your article's date and time value to something other than the current time_, leave the aforementioned box unchecked and type in the date and time you want in the 'Publish date' and 'Publish time' fields provided. If the time is in the future and the Status is 'Live', the article will automatically be published at the given time.

If you are interested in documenting the time when an article has been originally published (whether by its true creating time or by an arbitrary time of first publishing), you shouldn't update the timestamp to 'now' when modifying. The timestamp defines the order of articles when an article list is created by publishing time - a change thus will reflect in the sequence of articles. If you nevertheless want to indicate a 'last modified' date, you can use the [modified](/tags/modified) tag in your Article type [Form templates](/themes/form-templates-explained).

If you need the timestamp for publishing schedules apart from marking an origin, you need to indicate the origin otherwise: If you do *not* modify after your 'origin' date, you could use the [modified](/tags/modified) tag as an indicator. Else you could provide a custom field (e.g. 'first_published') for that task.

#### Expire date/time

In the same way you can set a deliberate publishing date/time for an article, you can also set a time when it will expire and thus vanish (or unpublish) from particular page or the whole website - depending on your site's setup. Using expire-preferences and a set of expire-tags you can achieve a sophisticated way of publishing and removing articles though at the same time keeping them active for permanent links or an archive.

### Meta

#### URL-only title

The URL-only title field ('URL' meaning [Uniform Resource Locator](https://en.wikipedia.org/wiki/Uniform_Resource_Locator)), is a very handy feature that allows you to modify the [Permalink](https://en.wikipedia.org/wiki/Permalink) URL for the article as it would appear, for example, in the the address bar of a web browser if you were using 'Clean URLs'. This is particularly useful if the title of your article uses non-ASCII characters, such as what might be involved with certain languages.

If you leave this field blank, the URL title will be generated from the actual article title, which is recommended for URL health reasons.

For interdependencies between article status and URL-only title see the [Pending](#pending) status explanation above.

#### Description

The Description text area allows you to provide a concise description of the article. This might be used to display an SEO-friendly meta description for search engines (using the [meta_description](/tags/meta_description) tag) or for providing a shorthand explanation of the article content in search results perhaps (in a similar fashion to using the [Excerpt](#excerpt) text area if you are already utilising that field for another purpose).

#### Keywords

The Keywords text area allows you to specify a comma-separated list of words that relate to your article. This list might be used to generate a list of keywords for search engines (using the [meta_keywords](/tags/meta_keywords) tag). You may also use keywords to help locate articles later by essentially 'tagging' your articles with related words so that - when searching within Textpattern - you can more easily find what you are looking for. To add keywords, simply type them into the text field provided and separate them with a comma.

### Comment options

**Note:** The Comment options region in the Write panel is actually a second-level setting for managing comments at *per article* level; you should have already configured your settings for first-level (site-level) comment management, which is handled in the [Preferences panel](/administration/preferences-panel) at 'Publish' and 'Comments'. There you will find different Comments settings that need your consideration about how to handle comments for all articles in your site by default. If the preference 'Accept comments?' is set to 'No', then the Comment options section will not appear in the Write panel. Two of the settings - 'On by default?' and 'Default invite' - will determine the defaults in the Comments control at article level. Here, as described below, you can adjust the behaviour as you desire for a particular article.

#### On/Off

With a pair of on/off radio buttons you either accept or deny comments for the given article.

#### Invitation

The Invitation field that allows you to customize the text for the link that users will see if comments are 'on'.

The comment link itself will lead to the location in your site where a visitor can actually add a comment to your article. By default the link text is "Comment", but other possibilities might include: "Leave a comment…", "Speak up!", "Respond", etc. - whatever you want. If you choose to have a single invitation for use with all of your articles then it is easiest to just set that value in your site-level Comments settings in the [Preferences panel](/administration/preferences-panel).

### Article image

The Article image option enables associating one or more images with an article, as opposed to entering the image into the article itself, and is commonly used in conjunction with the [article_image](/tags/article_image) tag. This allows images to appear in the same place across many articles, yet still be easily changed later.

This feature could be used to power:

* A photoblog, where a photo or gallery of shots is associated with an article, which might contain details about where the images were taken, or what kind of equipment was used to take it.
* A portfolio, where an illustration or a screenshot of a website is associated with an article, which contains details about the project or the client involved.
* A news site, where each article has, optionally, one main image that is always placed at the top of the article, and maybe other images used throughout the text (you can use the `offset` attribute of the [images](/tags/images) tag to skip images you have already displayed).

There are two ways to assign an image to an article:

1. By ID (as it appears in the [Images panel](/administration/images-panel); this only works for images managed through the Textpattern Images panel).
2. By an absolute URL to the image, such as `/images/imagefile.png`.

**Note:** to harness the additional features provided by Textpattern tags such as `<txp:images />`, it is recommended to use image IDs to call article images.

Once the image is associated with an article, [article_image](/tags/article_image) is used to display it by placing this tag within 'article' type [Form templates](/themes/form-templates-explained).

#### Tip: Using the article image field in relation with captioned figures

You are not limited to the `article_image` tag. As long as the image is in _context of the article_ (aka _article context_), which it is when adding the ID value to this field, then you can use the [images](/tags/images) tag too. This could be useful if you wanted to pull individual data values from the image's details (see [Images panel](/administration/images-panel) documentation).

For example, here we take advantage of _article context_ by using the `images` and `image_info` tags (and their attributes), along with HTML tags, to display the image as a figure with caption:

~~~ html
<figure>
   <txp:images>
      <img src="/images/<txp:image_info type="id, ext" />" />
      <txp:image_info type="caption" wraptag="figcaption" />
   </txp:images>
</figure>
~~~

That block of markup (with the middle lines written in [short-form tag notation](/tags/tag-basics/shortform-vs-longform-usage)) could be used in an article form, as mentioned, or directly in an article's **Body** or **Excerpt** fields.

If you're adding the markup directly to an article content field, and the Write panel editor is set for using Textile (as described in the _Advanced options_ section below), then you would want to perhaps compact the new-line breaks and indents, and begin the block with the `notextile. ` escape element so Textile doesn't apply additional HTML markup erroneously. The idea being you never have to touch the markup again once added to the article. The image itself and all associated parameters would be managed in the [Images panel](/administration/images-panel) editor.:

~~~ html
notextile. <figure><txp:images><img src="/images/<txp:image_info type="id, ext" />" /><txp:image_info type="caption" wraptag="figcaption" /></txp:images></figure>
~~~

(While the code example doesn't wrap well here, it will wrap in the Write panel editor.)

This example can only be done for _one_ image in context. You cannot use the **Article image** field to indicate three image IDs and expect Textpattern to know how to parse them into three different blocks of markup. You can still use different blocks of markup to create different figures in an article, but you would have to declare the IDs for the additional images in the opening `images` tag (i.e. `<txp:images id="n">`, where “n” is the ID value). In fact, you could do all the figures this way and not use the **Article image** field at all. But if you only have one image per article, using the field is a good way to go.

See the [article_image](/tags/article_image) tag documentation for other ideas about using the **Article image** field with _multiple_ image IDs.

### Custom fields

Custom fields are defined in the **Custom fields** section of the [Preferences panel](/administration/preferences-panel), which then makes them available for use here in the Write panel. The data you enter is *limited to 255 characters*, and is output by whatever constructs you create using the [custom_field](/tags/custom_field) tag, and possibly the [if_custom_field](/tags/if_custom_field) tag.

### Advanced options

Advanced options contains extended options for the particular article being edited.

#### Article markup and Excerpt markup

There are two options regarding markup: 'Article markup' (for the *Body* text area) and 'Excerpt markup' (for the *Excerpt* text area). By default *full* Textile-markup is turned on by 'Use Textile'. You can turn off *all* markup by choosing 'Leave text untouched'. If you want a minimum of comfort you can choose *Convert line breaks* - single line breaks will be converted to line breaks and double line breaks will get paragraphs. If you have installed alternative text filters in addition to Textile, they will also be available options here.

#### Override form

The option 'Override form' offers the possibility that single articles may use a different Form template than the overall Form template specified. Let's look at an example for a possible use of this…

In your blog, you normally publish articles which are pure text. So your default form contains only the tags for title, body, etc. On every first day of the month however, you publish a photo of your garden. For this, you need the [article_image](/tags/article_image) tag in your form. So you create a form called `garden_image` which, among other tags, contains [article_image](/tags/article_image). Whenever you want to publish a photo along with your text, you choose 'Override form' and then `garden_image` from the drop-down list. This way, just this article will use the form `garden_image` for being displayed whereas all other articles will continue to use the default form.

### Text formatting help

Depending on the text filters you have installed (i.e. Textile (the default), Markdown, etc.) you can access a quick reference guide here showing the text formatting syntax for common text formatting (note this is *not* a comprehensive list of all formatting options).

### Recent articles

The last option is 'Recent articles', and there's not much to say about this option other than it toggles a list of titles for the last ten *most recently modified* articles (new or edited). This makes it easier to move between articles you might want to work on without actually having to jump between the Write panel and the [Articles panel](/administration/articles-panel).

## Final notes to be aware of

Especially if you like to save your work from time to time while not yet finished, you should take care of the article's *Status*: By default it is 'Live' (although you can change that setting in the [Preferences panel](/administration/preferences-panel)) - so using 'Save' (or 'Publish') in an unfinished state without altering its status to 'Draft' (recommended) or 'Hidden' will make an article **public** before its time. Pay attention!

When you are done with writing or editing an article, particularly if it's a new article, you will want to make sure you have the various controls on the secondary column of the Write panel configured appropriately. These regard *publishing* an article (or keep it unpublished) in various ways. They come in two portions: Controls you always need statically at the top and a portion of optional controls which you can use for further fine-tuning.

[Next: Articles panel](/administration/articles-panel)
