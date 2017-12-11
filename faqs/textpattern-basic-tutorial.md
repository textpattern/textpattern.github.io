---
layout: document
category: FAQs
published: true
title: "Textpattern basic tutorial"
description: By following this simple tutorial you will gain an insight into the way Textpattern is modelled and can start to plan out your own CMS-driven website.
---

# Textpattern basic tutorial TODO

Textpattern CMS is a powerful content management system, with many ways of handling and displaying dynamic content. This can seem quite daunting upon first experience, but by following this tutorial you will gain an insight into the way Textpattern is modelled, and can then start to plan out your own CMS-driven website.

The approach outlined below starts from a blank slate and adds pieces one at a time. It's not the right approach for everyone, but assuming you want to try this method, read on.

On this page:

* [Ready, set... go!](#ready-set-go)
* [Site pages and page templates](#site-pages-and-page-templates)
* [Textpattern tags](#textpattern-tags)
* [Articles and sections](#articles-and-sections)
* [Pages and context](#pages-and-context)
* [More contexts](#more-contexts)
  * [Search](#search)
  * [Category lists](#category-lists)
* [Form templates](#form-templates)
  * [Article forms](#article-forms)
* [Adding details](#adding-details)
  * [Page title and site name](#page-title-and-site-name)
  * [CSS](#css)
  * [Conditional headers](#conditional-headers)
  * [Textpattern tag attributes](#textpattern-tag-attributes)
* [The finished template](#the-finished-template)
* [Extending the structure](#extending-the-structure)
* [Learning more](#learning-more)

## Ready, set... go!

Start from a new Textpattern installation. If you just want to test things out, you could even use [the online Textpattern demo](https://textpattern.com/demo), keeping in mind that you might be sharing it with other users, and that the demo gets wiped clean every few hours.

Log in to the Textpattern control panel. If this is a truly brand-new installation you should look at the [Diagnostics panel](https://docs.textpattern.io/administration/diagnostics-panel) first and deal with any warnings or error messages. If you see "All checks passed!", great! If not, please consult the [pre-flight checks documentation](https://docs.textpattern.io/administration/diagnostics-panel#pre-flight-checks).

Then go to the [Preferences panel](https://docs.textpattern.io/administration/preferences-panel) and set your initial preferences. Don't worry about setting every preference correct first time, you can change preference options at any time. There are plenty of help tips alongside most of the preferences to assist.

Go to the [Pages panel](https://docs.textpattern.io/administration/pages-panel). We're about to overwrite the default page template; if you want to keep a copy of the original, enter a new name for your backup, then use the 'Duplicate' link. This is optional; if you did so click the 'default' link in the list on the right to return to the default page template.

The 'Page name' above the large code editing area should be `default`. Replace the entire contents with `Hello, World!` and press 'Save'. Use the 'View site' link in the top menu, to open your site's home page in a new window. Great looking site, isn't it?! Look at the HTML page source: it is literally `Hello, World!`, followed by some status information - certainly not a valid HTML page!

Close the HTML source view; then get a new, clean, HTML file from your HTML editor. Copy the entire contents of this file and paste it in over `Hello, World!` back in the Textpattern Pages panel. Save the page template, return to the live site and refresh the page. Now you have a real, if empty, web page. Look at the page source; you'll see the HTML you pasted into the page template, again followed by status info.

## Site pages and page templates

Clearly the home page of our new Textpattern site is simply the page template `default` (plus status info). Let's add another page to the site.

Back in the [Pages panel](https://docs.textpattern.io/administration/pages-panel), enter a page name `page2` and use the 'Duplicate' link again. You now have two identical page templates: `default` and `page2`. Add links to each page: in the “page2” template add...

~~~ html
<a href="./">Home</a>
~~~

...somewhere in the `<body>` and save. Now open the `default` page template by clicking its link in the list, and add...

~~~ html
<a href="./?s=page2">Page 2</a>
~~~

...somewhere in the `<body>` and save.

There's one more task before we can see the new page. Switch to the [Sections panel](https://docs.textpattern.io/administration/sections-panel), and create and edit a new section called `page2`. In the 'Uses page' dropdown for this section, select `page2` and then press 'Save'.

Return to the live site and reload the page. Now you have a two-page site and can link back and forth: note the URLs as you do so. Look at the HTML source for Page 2; once again you can see it is simply the contents of your new page template.

You could continue adding templates and sections in this way, putting all your content into the templates, adding links manually as above, and creating an entire website. However, more concise and efficient solutions are just a few Textpattern tags away!

In a traditional, static website, there's an HTML file for every page. You might say the two are equivalent: page = HTML file. Our Textpattern site is currently much the same, apparently: page = page template. But 'template' means reusable pattern or framework, and that is just how a page template is meant to be used in Textpattern - as the pattern for many different pages. The page templates we've created so far aren't real templates - they're just static HTML.

## Textpattern tags

We turn our static page templates into functional ones by adding [Textpattern tags](https://docs.textpattern.io/tags/tag-basics/), which are placeholders for dynamic content.

Return to the [Pages panel](https://docs.textpattern.io/administration/pages-panel) and to the `default` template. Delete the anchor to Page 2 we added earlier; in its place enter...

~~~ html
<txp:section_list />
~~~

...and resave the template.

Before looking at the results, go to the [Sections panel](https://docs.textpattern.io/administration/sections-panel). Find the `articles` section, edit it and change its 'Uses page' setting to `default`, then press the 'Save' button for this section. Do the same for your `page2` section: change its 'Uses page' setting to `default`. While you're here, change its 'Section title' to `Page 2`. Save your changes.

Go to the live site and re-load the home page. Now there are two links: 'Articles' and 'Page 2'. Click each link and observe the URL: the URL for 'Articles' will have your base URL followed by `?s=articles` (in messy URL mode) or `articles` (in clean URL mode), and the URL for 'Page 2' will end in either `?s=page2` (or `page2`). Otherwise the pages are identical. We no longer have a link to the home page, though, so let's add that in: return to the template and edit the `<txp:section_list />` tag we added earlier so it looks like this:

~~~ html
<txp:section_list include_default="1" />
~~~

Now the pages on the live site have three links. 'My site' (a link to the home page) has been added to the top of the list. Perhaps you've already realized that `<txp:section_list />` is a Textpattern tag, and that setting its `include_default` attribute caused it to include the link to the home page. Note that it uses the same syntax as an HTML tag, and is mainly distinguished by the `txp:` prefix. All Textpattern tags generally follow this convention.

Our three pages are still identical, other than the URL, so let's add some content. In the default template, below the `<txp:section_list />` tag, add this:

~~~ html
<txp:article>
    <h2><txp:title /></h2>
</txp:article>
~~~

Look at the results on the live site. Check all three links. Note how the home and Articles pages now have 'Welcome to Your Site!' below the section links. Look at the page source; the new line is in `<h2>...</h2>` tags. That is, the `<txp:title />` tag you added to the template has been replaced by an article title ('Welcome to your site' is a sample article included in the initial installation).

## Articles and sections

'Page 2' is empty but for the section links, so let's add an article to it. Go to the [Write panel](https://docs.textpattern.io/administration/write-panel). Enter 'My second article' in the 'Title' field at top. Look for the 'Section' in the side panel and select `page2`. Press 'Publish' and return to the live site. Look at each page again: 'Page 2' shows the article title we just added in the Write panel, 'Articles' is unchanged, and the home page shows both articles.

The new article appears on 'Page 2' because we assigned it to that section (in Textpattern an article must belong to a section). The 'Default' section is a special case: no articles are directly assigned to it, but it displays articles from all sections. That's why 'Page 2' and 'Articles' only show what's in their associated sections, while the home page shows both: the home page represents the 'Default' section.

Add another article: go to the [Write panel](https://docs.textpattern.io/administration/write-panel), enter 'My third article' as the title, and press 'Publish'. What happens on the live site? The new article appears on the 'Articles' page, because that is the section it was assigned to by default, and also appears on the home page; 'Page 2' remains unchanged.

## Pages and context

The three pages on the live site all use the same page template. They show different content because some Textpattern tags are **context sensitive**. Context is essentially what can be gleaned from the URL (if the style of URL with a `?` is new to you, research **URL query strings** for an explanation).

The URLs we've seen so far give a value for the section. Context can include other factors, but section is the essential one - every page in a Textpattern site belongs to a section. We've already seen how the section determines which page template will be used, and also how it tells the `<txp:article />` tag which articles to display.

The next most important facet of context is whether the page shows a single article or a list. Go back to the default template and edit the `<txp:article />` tag so that it looks like this:

~~~ html
<txp:article>
    <h2><txp:permlink><txp:title /></txp:permlink></h2>

    <txp:if_individual_article>
        <txp:body />
    <txp:else />
        <txp:excerpt />
    </txp:if_individual_article>
</txp:article>
~~~

Go to the [Articles panel](https://docs.textpattern.io/administration/articles-panel) and a list of the articles you added will appear: select and edit 'My third article' again. In the 'Body' editing area enter 'Third article: body' and in the 'Excerpt' area enter 'Third article: excerpt'; press 'Save'. Now do the same for 'My second article', putting relevant text in the 'Body' and 'Excerpt' fields.

Return to the live site and reload the home page (or simply click on the 'My site' link). The article excerpts you just added appear in this list. You'll also see the excerpts on the 'Articles' and 'Page 2' pages.

Now click one of the article titles. We see a different view: there is only one article, its body is shown instead of the excerpt, and below that is a message about comments (or a comment input form, if you are looking at 'Welcome to your site'). Adding the `<txp:permlink />` tag has turned each article title into a link to its individual article page.

## More contexts

**Search** and **category** are other contexts that are commonly built into a Textpattern-powered site.

### Search

Add this to your `default` template, above the `<txp:section_list />` tag:

~~~ html
<txp:search_input />
~~~

Then modify the `<txp:article />` tag to this:

~~~ html
<txp:article>
    <h2><txp:permlink><txp:title /></txp:permlink></h2>

    <txp:if_individual_article>
        <txp:body />
    <txp:else />
        <txp:if_search>
            <txp:search_result_excerpt />
        <txp:else />
            <txp:excerpt />
        </txp:if_search>
    </txp:if_individual_article>
</txp:article>
~~~

Now the live pages have a search input box. Try a search of 'body' (there's no 'Search' button by default, so just enter the term and enter). Note how each article listed shows the search term highlighted, thanks to the `<txp:search_result_excerpt />` tag. Also note the URL: `?q=body`. Context comes from URL, so in this case the context is search results (the `q` stands for 'query').

### Category lists

Add this to your `default` template, below the `<txp:section_list />`:

~~~ html
<txp:category_list wraptag="ul" break="li" />
~~~

A list of three linked items now appears below the section list. Try clicking them: as usual, note both the URL and what appears on the page. The three categories, with their absurd names, are included in the default installation, and the 'Welcome to your site' article is assigned to two of them.

Create some new article categories inthe [Categories panel](https://docs.textpattern.io/administration/categories-panel), then go to the [Article panel](https://docs.textpattern.io/administration/articles-panel) and edit and give your new articles some categories, by selecting them from the pull-down boxes on the 'Category 1' and 'Category 2' items in the Write panel sidebar. Return to the live site and see how this changes the category links and the resulting lists.

## Form templates

Textpattern forms (see [Form templates](https://docs.textpattern.io/themes/form-templates-explained), not to be confused with [HTML forms](https://www.w3.org/TR/html401/interact/forms.html)) are reusable template chunks, a convenient way to keep your templates tidy and also to share code and markup among templates. For example, on my Textpattern sites I nearly always have a form called 'head', which contains any common site-wide code between opening `<head>` and closing `</head>` tags. Then at the top of each template I call the form via a `<txp:output_form />` tag thusly:

~~~ html
<txp:output_form form="head" />
~~~

### Article forms

A special Textpattern form type is the **article form**. In our template we have been using `<txp:article>` as a container tag (see [self-closed versus container tags](https://docs.textpattern.io/tags/tag-basics/self-closed-versus-container-tags)), and it's starting to get unwieldy. We would gain a lot of flexibility (and also tidy up the default template) by putting the tags in our...

~~~ html
<txp:article>
   ...contained code...
</txp:article>
~~~

...container into a form template instead. Then we use...

~~~ html
<txp:article />
~~~

...as a self-closing tag and call the form. If you don't specify an attribute `form` when using `<txp:article />` this way, it generally uses the 'default' article form. The exception is search results, in which context `<txp:article />` looks for a form called 'search_results'.

Go to the [Forms panel](https://docs.textpattern.io/administration/forms-panel). We're going to overwrite the 'default' and 'search_results' form templates, so if you want to keep the originals copy each of them and make new form templates to hold the backups.

Load the 'default' form into the editor by clicking its link in the sidebar list. Replace the entire contents of the form with:

~~~ html
<h2><txp:permlink><txp:title /></txp:permlink></h2>
<txp:if_individual_article>
    <txp:body />
<txp:else />
    <txp:excerpt />
</txp:if_individual_article>
~~~

Save the change. Now select 'search_results' for editing and replace its contents with:

~~~ html
<h2><txp:permlink><txp:title /></txp:permlink></h2>
<txp:search_result_excerpt />
~~~

Save the change. Return to the [Pages panel](https://docs.textpattern.io/administration/pages-panel) and in the default template replace the entire `<txp:article>` container tag with this: `<txp:article />`.

The live site will work exactly as before, but now the default template is much cleaner, and by splitting search results into its own form we've made the article display logic much simpler.

## Adding details

There's a myriad of available Textpattern tags (see the [Tag reference](https://docs.textpattern.io/tags/)) for adding dynamic content and control logic. We've only scratched the surface, so let's add a few details to our rudimentary site.

### Page title and site name

Add a

    <title>

element to the default template's

    <head>

(or replace the existing

    <title>

if there is one):

    <title><txp:page_title /></title>

Note how each page on the live site now shows an appropriate title. If
you want to change the base title to something other than “My Site”, do
so in
[Admin→Preferences](/home/www/zendstudio/dokuwiki/bin/doku.php?id=basic_preferences);
“Site name” is the first item in the list. While you're here, change
“Site slogan”. Back to the default template, add this above the

    search_input

:

    <h1><txp:link_to_home><txp:site_name /></txp:link_to_home></h1>
    <p><txp:site_slogan /></p>

and remove the

    include_default

attribute from

    section_list

, because the home page link is now handled by the

    link_to_home

tag.

### CSS

Add

    <txp:css format="link" />

to the

    <head>

. Your site now has CSS. See
[styles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=styles) to edit
the stylesheet. In
[Presentation→Sections](/home/www/zendstudio/dokuwiki/bin/doku.php?id=sections),
note that each section is associated with one of these name stylesheets,
allowing you to set section-specific styles.

### Conditional headers

Add these conditional blocks just above

    article

:

    <txp:if_search>
    <h1>Search results for “<txp:search_term />”</h1>
    </txp:if_search>
    <txp:if_category>
    <h1>Articles in category “<txp:category />”</h1>
    </txp:if_category>

Enter some searches and click the category links to see how this gives
you appropriate sub-headings for search results and category list pages.

### Textpattern tag attributes

Most Textpattern tags allow you to set options through tag attributes.
We've seen a few of these in action above. For our

    category_list

we used the

    wraptag

and

    break

attributes to format the list as an HTML

    ul

element. Let's do the same with our section list:

    <txp:section_list wraptag="ul" break="li" />

## The finished template

The template should now look something like this:

~~~ html
<!DOCTYPE html> 
<head>
	<meta charset="utf-8">
	<title><txp:page_title /></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <txp:css format="link" />
</head>
<body>
    <h1>
        <txp:link_to_home>
            <txp:site_name />
        </txp:link_to_home>
    </h1>
    <p><txp:site_slogan /></p>
    <txp:search_input />

    <txp:section_list wraptag="ul" break="li" />
    <txp:category_list wraptag="ul" break="li" />

    <txp:if_search>
        <h1>
            Search results
            <q><txp:search_term /></q>
        </h1>
    </txp:if_search>

    <txp:if_category>
        <h1>
            Articles in category
            <q><txp:category /></q>
        </h1>
    </txp:if_category>

    <txp:article />
</body>
</html>
~~~

## Extending the structure

Sections are the framework of a Textpattern site. We started the tutorial by naming a new section `Page 2`, but as we've seen, a section is much more than a page. On a real site you'll name your sections according to the primary level of site structure; generally this is the same as your top-level menu items.

Textpattern does not have native support for subsections, so is not well suited to building hierachical site structures. This may seem like a serious limitation, but the beauty of a dynamic site is how easy it is to cross-link related content, making it easier for users to find what they need without delving through multiple layers of site structure. Traditional, hierarchical sites are perhaps more convenient for their designers than their users.

In designing your Textpattern site, explore how to use search and category linking to make it easy for users to jump straight to the content they want.

## Learning more

This is just a bare outline of how to build a Textpattern-powered site. To continue your learning path, participate in the [Textpattern CMS support forum](https://forum.textpattern.io/), read tutorials and [Textpattern tips](http://textpattern.tips/), and study the [Tag reference](https://docs.textpattern.io/tags/).
