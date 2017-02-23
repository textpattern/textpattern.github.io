---
layout: document
category: Administration
published: true
title: "Hello, World!"
description: The Hello, World! approach means to start from a blank slate and add pieces one at a time.
---

# Hello, World! TODO

Moving from traditional, static web development to dynamic, CMS-based development can be a challenge. Obviously you have to learn the new tool - the CMS. But for many the harder part is understanding dynamic publishing, a new way of thinking about website design. Trying to learn both at once is a steep learning curve, but is manageable with the right step-by-step approach.

The "Hello, World!" approach means to start from a blank slate and add pieces one at a time. It's not the right approach for everyone, but assuming you want to try this method, read on:

### Ready, set ...

Start from a new Textpattern installation. If you want to save [the few
minutes it takes to
install](http://ipsedixit.net/txp/115/textpattern-quickstart-screencast),
you could even use [the online Textpattern demo at
opensourcecms.com](http://php.opensourcecms.com/scripts/details.php?scriptid=86&name=Textpattern),
keeping in mind that you might be sharing it with other users, which
could get mighty confusing, and that the demo gets wiped clean every two
hours.

Log in to the Textpattern control panel. If this is a truly brand-new
installation you should look at
[Admin→Diagnostics](/home/www/zendstudio/dokuwiki/bin/doku.php?id=diagnostics)
first and deal with any warnings or error messages. The one error you
can leave for now is “Clean URL test failed”, because it can be fussy to
fix and Textpattern will still work with “messy” URLs, which this
tutorial will use. If you see “All checks passed!”, great.

Go to
[Admin→Preferences](/home/www/zendstudio/dokuwiki/bin/doku.php?id=basic_preferences).
Find the 'Article URL pattern' setting and change it to '?=messy'. Click
Save. Do this even if the clearn URL test passed, because this tutorial
will use messy URLs.

### Go! {#go .sectionedit2#go}

Go to
[Presentation→Pages](/home/www/zendstudio/dokuwiki/bin/doku.php?id=pages).
We're about to overwrite the default page template; if you want to keep
a copy of the original, find the “copy page as” input, enter a name for
your backup, and click “Copy”. This is optional (there's a copy at
[Default
Pages](/home/www/zendstudio/dokuwiki/bin/doku.php?id=default_pages)); if
you did so click the “default” link in the list on the right to return
to the default page template.

The message above the large central editing area should be “You are
editing page template **default**”. Replace the entire contents with
“Hello, World!” and click “Save”. Click the “View Site” link in the top
menu, to open your site's home page in a new window. Great looking site,
isn't it! Look at the HTML page source: it is literally “Hello, World!”,
followed by some status information - certainly not a valid HTML page.

Close the HTML source view; then get a new, clean, HTML file from your
HTML editor. Copy the entire contents of this file and paste it in over
“Hello, World!” back in the Textpattern control panel. Save the
template, return to the live site and refresh the page. Now you have a
real, if empty, web page. Look at the page source; you'll see the HTML
you pasted into the page template, again followed by status info.

### Site pages and page templates {#site-pages-and-page-templates .sectionedit3#site_pages_and_page_templates}

Clearly the home page of our new Textpattern site is simply the page
template “default” (plus status info). Let's add another page to the
site. Back in
[Presentation→Pages](/home/www/zendstudio/dokuwiki/bin/doku.php?id=pages),
go to the “copy page as” box, enter “page2” and click “Copy”. You now
have two identical page templates: “default” and “page2”. Add links to
each page: in the “page2” template add

    <a href="./">Home</a>

somewhere in the

    <body>

and save. Open the “default” page template by clicking its link in the
right-hand list, and add

    <a href="./?s=page2">Page 2</a>

and save.

There's one more task before we can see the new page. Switch to
[Presentation→Sections](/home/www/zendstudio/dokuwiki/bin/doku.php?id=sections),
enter “page2” in the input field at top, and click “Create”. Scroll down
and find the section you just created. In the “Uses Page” dropdown for
this section, select “page2”, then save (be sure to use the save button
at the bottom of the “page2” section).

Return to the live site and reload the page. Now you have a two-page
site and can link back and forth: note the URLs as you do so. Look at
the HTML source for Page 2; once again you can see it is simply the
contents of your new page template.

You could continue adding templates and sections in this way, putting
all your content into the templates, adding links manually as above, and
creating an entire website. You could also [build a working harpsichord
entirely out of Lego blocks](http://www.henrylim.org/Harpsichord.html),
which would be just about as easy to build and keep in tune.

In a traditional, static website, there's an HTML file for every page.
You might say the two are equivalent: page = HTML file. Our Textpattern
site is currently much the same, apparently: page = page template. But
“template” means reusable pattern or framework, and that is just how a
page template is meant to be used in Textpattern - as the pattern for
many different pages. The page templates we've created so far aren't
real templates - they're just static HTML.

### Textpattern tags {#textpattern-tags .sectionedit4#textpattern_tags}

We turn our static page templates into functional ones by adding
***Textpattern tags***, which are placeholders for dynamic content.
Return to
[Presentation→Pages](/home/www/zendstudio/dokuwiki/bin/doku.php?id=pages)
and the “default” template. Delete the anchor to Page 2 we added
earlier; in its place enter

    <txp:section_list />

and save the template.

Before looking at the results, go to
[Presentation→Sections](/home/www/zendstudio/dokuwiki/bin/doku.php?id=sections).
Find the listing for the “about” section and click its “X” button. A
dialog box will pop up asking if you really want to delete it - click
“OK”. Now find the “articles” section and change its “Uses Page:”
setting to “default”, then click the Save button for this section. Do
the same for your “page2” section: change its “Uses Page:” setting to
“default”. While you're here, change its “Section title” to “Page 2”.
Save your changes.

Go to the live site and re-load the home page. Now there are two links:
“Articles” and “Page 2”. Click each link and observe the URL: the URL
for “Articles” will have your base URL followed by “?s=articles”, and
the URL for “Page 2” will end in “?s=page2”. Otherwise the pages are
identical. We no longer have a link to the home page, though, so let's
add that in: return to the template and edit the

    section_list

tag we added earlier so it looks like this:

    <txp:section_list include_default="1" />

Now the pages on the live site have three links: “My Site”, a link to
the home page, has been added to the top of the list. Perhaps you've
already realized that

    section_list

is a Textpattern tag, and that setting its

    include_default

attribute caused it to include the link to the home page. Note that it
uses the same syntax as an HTML tag, and is mainly distinguished by the
“txp:” prefix. All Textpattern tags follow this convention.

Our three pages are still identical, other than the URL, so let's add
some content. In the default template, below the

    section_list

tag, add this:

    <txp:article>
    <h2><txp:title /></h2>
    </txp:article>

Look at the results on the live site. Check all three links. Note how
the home and Articles pages now have “Welcome to Your Site!” below the
section links. Look at the page source; the new line is in

    h2

tags. That is, the

    title

tag you added to the template has been replaced by an article title.
(“Welcome to Your Site!” is a sample article included in the
installation.)

### Articles and sections {#articles-and-sections .sectionedit5#articles_and_sections}

“Page 2” is empty but for the section links, so let's add an article to
it. Go to
[content](/home/www/zendstudio/dokuwiki/bin/doku.php?id=content), which
automatically puts you at
[Content→Write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write).
Enter “My Second Article” in the “Title” field at top centre. Look for
the “Section” pulldown at right, and select “page2”. Click “Publish” and
return to the live site. Look at each page again: “Page 2” shows the
article title we just added in
[Content→Write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write),
“Articles” is unchanged, and the home page shows both articles.

The new article appears on Page 2 because we assigned it to that section
(in Textpattern an article must belong to a section). The “Default”
section is a special case: no articles are directly assigned to it, but
it displays articles from all sections. That's why “Page 2” and
“Articles” only show what's in their associated sections, while the home
page shows both: the home page represents the “Default” section. Try
this: in the live site, enter the base URL plus “?s=default”. It gets
you the home page.

Add another article: go to
[Content→Write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write),
enter “My Third Article” as the title, and click “Publish”. What happens
on the live site? The new article appears on the “Articles” page,
because that is the section it was assigned to by default, and also
appears on the home page; “Page 2” remains unchanged.

### Pages & context {#pages-context .sectionedit6#pages_context}

The three pages on the live site all use the same page template. They
show different content because some Textpattern tags are ***context
sensitive***. Context is essentially what can be gleaned from the URL.
(If the style of URL with a “?” is new to you, research ***query
string*** for an explanation.)

The URLs we've seen so far give a value for the section (the “s”
parameter in the query string). The base URL doesn't do this explicity,
but as we saw with the “?s=default” experiment, even the base URL
implies a section. Context can include other factors, but section is the
essential one - every page in a Textpattern site belongs to a section.
We've already seen how the section determines which page template will
be used, and also how it tells the

    article

tag which articles to display.

The next most important facet of context is whether the page shows a
single article or a list. Go back to the default template and edit the

    article

tag so that it looks like this:

    <txp:article>
    <h2><txp:permlink><txp:title /></txp:permlink></h2>
    <txp:if_individual_article>
    <txp:body />
    <txp:else />
    <txp:excerpt />
    </txp:if_individual_article>
    </txp:article>

Go to
[Content→Write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write) and
click on the “Recent Articles” link at left. Links to the two articles
you added will appear: click “My Third Article”. In the **Body** editing
area enter “Third article: body” and in the **Excerpt** area enter
“Third article: excerpt”; click Save. Now do the same for “My Second
Article”, putting relevant text in the **Body** and **Excerpt** fields.

Return to the live site and re-load the home page (or simply click on
the “My Site” link). The article excerpts you just added appear in this
list. You'll also see the excerpts on the “Articles” and “Page 2” pages.
Now click one of the article titles. We see a different view: there is
only one article, its body is shown instead of the excerpt, and below
that is a message about comments (or a comment input form, if you are
looking at “Welcome to Your Site!”).

Adding the

    permlink

tag has turned each article title into a link to its individual article
page. Note the URLs of these pages, with query strings like “?id=3”.
Every article has a unique ID number, which you can see in
[Content→Articles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=articles).
The “s” parameter - section - doesn't appear in these URLs, because
section is implied (every article belongs to a section).

### More contexts {#more-contexts .sectionedit7#more_contexts}

***Search*** and ***category*** are other contexts that are commonly
built into a Textpattern site.

#### Search

Add this to the default template, above the

    section_list

:

    <txp:search_input />

Then modify the

    article

tag to this:

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

I've added some indenting to make the structure clearer, but you don't
have to indent the tags in your template if you don't want to.

Now the live pages have a search input box. Try a search on “body”
(there's no “Search” button, so just enter the term and hit the Return
key). Note how each article listed shows the search term highlighted,
thanks to the

    search_result_excerpt

tag. Also note the URL: “?q=body”. Again, context comes from URL, so in
this case the context is search results (the “q” stands for “query”).

#### Category lists {#category_lists}

Add this to the template, below the

    section_list

:

    <txp:category_list wraptag="ul" break="li" />

A list of three linked items now appears below the section list. Try
clicking them: as usual, note both the URL and what appears on the page.
The three categories, with their absurd names, are included in the
default installation, and the “Welcome to Your Site!” article is
assigned to two of them.

Create some new article categories in
[categories](/home/www/zendstudio/dokuwiki/bin/doku.php?id=categories),
then go to
[Content→Write](/home/www/zendstudio/dokuwiki/bin/doku.php?id=write) and
give your new articles some categories, by selecting them from the
pull-down boxes on the right side of the page. Return to the live site
and see how this changes the category links and the resulting lists.

### Forms {#forms .sectionedit8#forms}

Textpattern forms (see [Form templates](https://docs.textpattern.io/themes/form-templates-explained),
not to be confused with [HTML forms](http://htmlhelp.com/reference/html40/forms/form.html)) are
reusable template chunks, a convenient way to keep your templates tidy
and also to share code and markup among templates. For example, on my
Textpattern sites I nearly always have a form called “page_top”, which
contains the doctype declaration, the opening

    <html>

tag, the

    <head>

, and the opening

    <body>

tag. Then at the top of each template I call the form thusly:

    <txp:output_form form="page_top" />

#### Article forms {#article_forms}

A special Textpattern form type is the ***article form***. In our
template we have been using

    article

as a container tag (see [Self-closed versus Container
Tags](/home/www/zendstudio/dokuwiki/bin/doku.php?id=self-closed_versus_container_tags)),
and it's starting to get unwieldy. We would gain a lot of flexibility
(and also tidy up the default template) by putting the tags in our

    article

container into a form instead. Then we use

    article

as a self-closing tag and call the form. If you don't specify an article
form when using

    article

this way, it generally uses the “default” article form. The exception is
search results, in which context

    article

looks for a form called “search_results”.

Go to [Forms administration panel](https://docs.textpattern.io/administration/forms-panel).
We're going to overwrite the “default” and “search_results” forms, so
if you want to keep the originals copy each of them and make new forms
to hold the backups. Again, this is optional, because you can always
retrieve “the
[default_forms](/home/www/zendstudio/dokuwiki/bin/doku.php?id=default_forms).

Load the “default” form into the editor by clicking its link in the
right-hand list. Replace the entire contents of the form with:

    <h2><txp:permlink><txp:title /></txp:permlink></h2>
    <txp:if_individual_article>
    <txp:body />
    <txp:else />
    <txp:excerpt />
    </txp:if_individual_article>

and save the change. Select “search_results” for editing and replace
its contents with:

    <h2><txp:permlink><txp:title /></txp:permlink></h2>
    <txp:search_result_excerpt />

and save the change. Return to
[Presentation→Pages](/home/www/zendstudio/dokuwiki/bin/doku.php?id=pages)
and in the default template replace the entire

    article

container tag with this:

    <txp:article />

The live site will work exactly as before, but now the default template
is much cleaner, and by splitting search results into its own form we've
made the article display logic much simpler.

### Adding details {#adding-details .sectionedit9#adding_details}

There's a myriad of available Textpattern tags (see the Tag Reference)
for adding dynamic content and control logic. We've only scratched the
surface, so let's add a few details to our rudimentary site.

#### Page title and site name {#page_title_and_site_name}

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

#### CSS

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

#### Conditional headers {#conditional_headers}

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

#### Textpattern tag attributes {#textpattern_tag_attributes}

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

#### The finished template {#the_finished_template}

The template should now look something like this:

    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
            "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title><txp:page_title /></title>
    <txp:css format="link" />
    </head>
    <body>
    <div>
    <h1><txp:link_to_home><txp:site_name /></txp:link_to_home></h1>
    <p><txp:site_slogan /></p>
    <txp:search_input />
    <txp:section_list wraptag="ul" break="li" />
    <txp:category_list wraptag="ul" break="li" />
    <txp:if_search>
    <h1>Search results for “<txp:search_term />”</h1>
    </txp:if_search>
    <txp:if_category>
    <h1>Articles in category “<txp:category />”</h1>
    </txp:if_category>
    <txp:article />
    </div>
    </body>
    </html>

### Extending the structure {#extending-the-structure .sectionedit10#extending_the_structure}

Sections are the framework of a Textpattern site. We started the
tutorial by naming a new section “Page 2”, but as we've seen, a section
is much more than a page. On a real site you'll name your sections
according to the primary level of site structure; generally this is the
same as your top-level menu items.

Textpattern does not have native support for subsections, so is not well
suited to building hierachical site structures. This may seem like a
serious limitation, but the beauty of a dynamic site is how easy it is
to cross-link related content, making it easier for users to find what
they need without delving through multiple layers of site structure.
Traditional, hierarchical sites are perhaps more convenient for their
designers than their users.

In designing your Textpattern site, explore how to use search and
category linking to make it easy for users to jump straight to the
content they want.

### Learning more

This is just a bare outline of how to build a Textpattern site. To continue your learning path, participate in the [Textpattern CMS support forum](https://forum.textpattern.com/), read the Tutorials and [Textpattern Tips](http://www.textpattern.tips/), and study the Tag Reference.
