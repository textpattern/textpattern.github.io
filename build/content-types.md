---
layout: document
category: Construction and Presentation
published: true
title: Content types
description: Core content types, custom content types, and designing site architectures with these kinds of content needs in mind.
---

# Content types

Intro...

**Contents**

* Table of contents
{:toc}

## Articles

Articles are the lifeblood of Textpattern and contain content you wish to publish. Each article can appear in one - and only one - section of your site; visitors read it on the front-end website via whatever navigation links you expose.

There is thus a one-to-one mapping of an article to its corresponding browser URL. Examples articles include:

* "How to bake the best loaf" -> example.org/recipes/how-to-bake-the-best-loaf
* "Easy chocolate brownies" -> example.org/recipes/easy-chocolate-brownies
* "Our company history" -> example.org/about/our-company-history
* "Ode to Textpattern" -> example.org/poems/ode-to-textpattern
* "Day 59 of being a zombie" -> example.org/blog/day-59-of-being-a-zombie
* "Who's Donald Swain?" -> example.org/articles/who-s-donald-swain
{:.example}

Note the above URLs are in the default section/title format, showing that the relevant articles are in the recipes, about, poems, blog, and articles sections, respectively.

All articles written by all site authors are visible from the Content>Articles panel. Bulk operations can be performed there via the **With selected** tool or, to edit an individual article, click its title to open it in the Write panel.

You may also start a new article via the **New article** button or by visiting the Content>Write panel from the menu.

### Article structure

Every article has the following components.

#### Title

The title is an accurate representation of the content within your article. It will draw readers and search engines to it. The title itself will form the basis of the **URL-only title** which is the title as it will appear in the browser's URL bar.

#### Section

In: **Sort and display** area.

An article is published in one section only. Choose the desired section from those available in the list. The default section is defined in the **Default publishing section** selector at the top of the Presentation>Sections panel.

#### Status

In: **Sort and display** area.

Articles have a status that governs their public visibility. Draft, Hidden, and Pending articles are not visible to public site visitors, so use these indicators while an article is in development (Draft), ready for publishing review (Pending), or pulled from the site for any reason (Hidden).

The remaining two status values are used to make an article Live (visible to all) or Sticky (usually used to display at the head of every page in the section, or on landing page lists). Users with sufficient privileges logged into the back-end of Textpattern can preview articles of any status.

#### Publish date

In: **Date and time** area.

An article has a publication date. By default for articles that are being published for the first time, the **Set timestamp to now** checkbox is checked, which sets the article publication date/time to the moment the Save/Publish button is clicked. From that point on, the timestamp will remain static, regardless of the number of times the article is saved and its publication status.

If you rather want the current time *when finally publishing* (or re-publishing) the article, ensure to check the **Reset timestamp to now** checkbox before you press 'Publish' or 'Save'. This option will always set the date and time at the moment you save the article.

If you wish to alter the publication date for any reason (e.g. to schedule a post for future publication, or to adjust the order of articles in a date-ordered list) ensure the checkbox is clear and manually adjust the year, month, day, hour, minute and second values.

#### Url-only title

In: **Meta** area.

The title of the article that appears in the browser location URL bar and is, thus, visible to search engines. It should closely align with your article title and content for maximum search engine ranking opportunity.

Notes:

* Each time you save an article with Draft status, the URL-only title is automatically deduced from your article title and changes to reflect it.
* Whenever you first publish an article (make it Live/Sticky) the URL-only title is set and stays that way.
* If you subsequently change the title, the URL-only title will *not* change, as that would invalidate any search engine results.
* If you wish to alter the Url-only title by hand after publication, you may do so, but it's advised to set up a redirect (via a plugin or in your server rules) so search engines can update their links.
* The format of the article URL can be altered via the **Permalink title URL pattern** preference. Article permlinks can either by hyphenated-like-this or intercappedLikeThis.

#### Body

The article's main content.

By default, text entered here is processed via [Textile](https://textile-lang.com/) - a textfilter that is similar to Markdown (which is also available via a plugin). It allows you to write content using a shorthand syntax for bold, italic, links and so forth. As you write, you may preview your Textile-processed content by popping up the Preview subpanel: click the link above the text area. Your content will be processed through Textile and displayed. If you wish to have the content update as you type, check the Live checkbox in the Preview subpanel. Toolbar plugins are also available to assist with Textile markup in a manner similar to word processors.

If for any reason you wish to not process the content through a textfilter, you can choose one of other options. **Convert linebreaks** will just respect newlines and convert them to HTML line breaks. **Leave text untouched** does what you would expect and leaves your content exactly as you type it, using no textfilters at all.

#### Excerpt

A precis of the article's content. Useful for summarising the article or providing a lead-in. This content, along with the title, is often used on article landing pages to entice readers to click through and read the entire article.

Just like the article Body, it processes its content through a textfilter with optional preview, so see the [Body field](#body) for details.

#### Description

In: **Meta** area.

A short summary of the article, designed for use by search engines to display in search results. Limited to 255 characters, this is a very concise description of the page content.

#### Expiry date

In: **Date and time** area.

Just like the [Publish date](#publish-date) which governs when an article appears on the site, an article can be set to automatically expire (disappear for the site) at a given date/time in the future. This is useful for time-bound content such as events or short promotional campaigns.

If the values in this field are left blank, the article never expires. Otherwise, adjust the year, month, day, hour, minute and second values to set an expiry. Check the **Set expiry to now** checkbox as a shortcut to set the article expiry to the moment the Save/Publish button is clicked.

#### Keywords

In: **Meta** area.

A comma-separated list of keywords or tags that represent this article. This was historically where document keywords were housed that search engines used to build an idea of what your page was about, before semantic content took over. You may also use keywords to help locate articles later by essentially 'tagging' your articles with related words so that - when searching within Textpattern - you can more easily find an article.

As such, this field is not used very often and is likely to be repurpossed as a general purpose tagging system in a future version of Textpattern.

#### Category 1 and Category 2

In: **Categories** area.

Up to two categories may be assigned to an article to indicate what its content represents. This information can be used to filter articles grouped by category that may be from many sections.

Select a category from the drop-down lists for either Category 1 or 2. The nearby 'Edit' link will jump to the [Categories panel](#Categories) so the category tree may be manipulated.

#### Article images

In: **Article image** area.

The Article image field associates one or more (comma-separated) images with an article. Instead of adding an image inline with the body text itself, this feature is commonly used in conjunction with the [article_image](/tags/article_image) tag to display a thumbnail on the article listing page and a full-size version of the image on the individual article.

The article image could power:

* A photoblog, where a photo or gallery of shots is associated with an article, which might contain details about where the images were taken, or what kind of equipment was used to take it.
* A portfolio, where an illustration or a screenshot of a website is associated with an article, which contains details about the project or the client involved.
* A news site, where each article has, optionally, one main image that is always placed at the top of the article, and maybe other images used throughout the text (you can use the `offset` attribute of the [images](/tags/images) tag to skip images you have already displayed).

There are two ways to assign an image to an article:

1. By ID (as it appears in the Images panel; this only works for images managed through the Textpattern Images panel.
2. By an absolute URL to the image, such as `/images/my-dog.jpg`.

To harness the additional features provided by Textpattern tags such as `<txp:images />`, it is recommended to list image IDs to reference article images. This means managing Images and articles separately, ensuring images are uploaded first. If you prefer to upload images at the same time as creating articles, as well as offering drag/drop image editing and reordering, there are plugins available (such as [com_article_image](https://github.com/textpattern/com_article_image)) for this purpose.

#### Override form

In: **Sort and display** area.

When articles are displayed on the front-end website, they are processed through a page template linked to that section, which usually contains an [article tag](/tags/article). That tag passes its contents to a form for rendering article components as a list or an individual article. The form the tag uses is set by the site designer, but if you wish to override this and use a different form, you can do so using the Override form selector.

As long as the preference **Allow form override?** is on, and at least one of the entries in the **Override form types** select list is chosen, authors will see a drop-down list of available forms on the Write panel beneath **Override form**. Whichever one you select will be used to process the article.

A simple example of how to use this: imagine in your blog, you normally publish articles which are pure text. So your default form contains only the tags for title, body, etc. On every first day of the month however, you publish a photo of your garden. For this, you need the [article_image](/tags/article_image) tag in your form. So you create a form called `garden_image` which, among other tags, contains `<txp:article_image />`. Whenever you want to publish a photo along with your text, you choose 'Override form' and then `garden_image` from the drop-down list. This way, just this article will use the form `garden_image` for being displayed whereas all other articles will continue to use the default form.

That is a very simplistic example. It is perfectly possible to conditionally display the article image using the `<txp:if_article_image>` container tag in the default form. Then you do not need the Override form feature at all. But there are other instances where it is very handy to allow content authors to divert article processing to one of a number of pre-determined forms based on the type of content written. Articles can then take on completely different layouts if you wish, based on the needs of the content.

#### Custom content

In: **Custom fields** area.



#### Article level comments

In: **Comment options** area.

If the **Accept comments** preference is enabled, this area allows you to override the site-wide commenting options on a per article basis.

The site-wide **Comments** preferences govern how comments are managed, attached to articles, and the comment invitation message that's displayed to visitors to encourage them to comment on your article. Two of these settings can be overridden for an individual article:

* **On by default?** Allows you to turn comments on or off for a particular article. The default value is the same as the site-wide **Comments on by default?** preference.
* **Default invite** Allows you to change the comment invitation message for this article. The default message is the same as the site-wide **Default comments invite** preference.

### Saving, publishing and duplicating articles

From the Content>Write panel, articles can be modified at any time by the original author or other authors with enough privileges. If it is already published, the act of clicking Save will store any changes and display them immedaitely on the website to all visitors.

If an article has yet to be published (i.e. it is Draft, Pending or Hidden) clicking Save will store any changes that are viewable only by authors who are logged into the back-end. If an article is currently in one of the three unpublished states and the Status field is altered to Live or Sticky, the Save button text changes to **Publish** as a visual reminder that if you click it, the article will be made live.

There are two ways to duplicate an article:

1. *Individually*. Open an article you wish to duplicate in the Write panel, and click the Duplicate link near the Save button. This will copy the article as it is, with any changes you have made and append the new article's ID so it is easily distinguishable from the original. It will also set it to Draft status, ready for immediate editing.
2. *En masse*. From the Articles panel, select one or more article checkboxes. Using the **With selected** drop-down, select Duplicate. The selected articles will all be cloned, have their new IDs appended to the titles so they are easily distinguishable from the originals, and have their status set to Draft. Click to edit as normal.

You should remove the article ID from the title field prior to publishing the cloned articles.

### Context awareness: tags and content interaction

Textpattern is context aware, based on information given in the URL, among other signals at the individual tag level. Although there are many URL schemes - one default scheme set in Preferences, that can be optionally overridden per section - the general principle is that Textpattern knows the difference between a landing page (list of content) and an individual article. This allows you to display different content based on what the visitor wants to see.

example.org/recipes/
: This is a landing page that will put Textpattern in _article list_ context. You might elect to display 6 of your most recent articles here as a lists, with title, excerpt and a thumbnail extracted from the article content.
example.org/recipes/scrumptious-bannoffe-pie
: This triggers _individual article_ context, perhaps clicked by a visitor from the landing page in the recipes section. Here, you might showy one or more photographs in a gallery of the pie in various stages of completion, and display the ingredients and method from the Body of the article.
example.org/category/puddings
: This might be a landing page when someone clicked the 'Puddings' category from the individual article above. It would put the site in _category list_ context and you could show a list of all recipes that have the 'puddings' category selected.
example.org/author/Kim+Supercake
: This triggers _author list_ context. Perhaps you have a number of contributors to the site, and on your article list or individual article page you use the `<txp:author />` tag to show who each recipe is by. If the bannoffe pie was weritten by Kim Supercake, the visitor could then be shown a list of other recipes by this cook.

All of the the above examples use the same `<txp:article />` tag, but it behaves differently depending on what type of content the URL indicates. The conditional tags such as:

* `<txp:if_article_list>`
* `<txp:if_individual article>`
* `<txp:if_catgeory>`
* `<txp:if_author>`

can be used to choose what your pages do based on their context, so you can switch between displaying article, category, and author lists or individual article content.

Content thus goes hand in hand with the design and layout of the site, and you can select which parts of an article are displayed in each context to allow visitors to more easily find information.

## Images

## Files

## Links

## Comments

## Authors

## Categories

## Custom fields

Custom fields enable you to add site-specific content to your articles that extend the scope of the core fields defined above.

### Defining custom fields

On the Preferences panel, click the **Custom fields** item to see input text boxes for defining up to ten fields that will appear on the Write panel when defined.

#### Important notes on creating custom field names

Custom field names may include letters (uppercase or lowercase), numbers, and under scores, but no spaces or other special characters should be used. For example, `custom1`, `Custom1`, `Custom_1`, `Location` and `Project_name` are all valid name constructs, while `custom 1`, `custom !` and `Project name` are not.

Also, there are certain names **reserved** by Textpattern, which should *not* be used to name custom fields. Doing so will likely cause your site to not work as expected.

**Do not use the following for custom field names**:

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

A symptom of a name clash is when you go to check or display the contents of a custom field in an article and receive unexpected (or no) output. In this case, make sure your custom field names are not any of the reserved names listed above.

To remove a custom field, simply clear its name and save the changes.
