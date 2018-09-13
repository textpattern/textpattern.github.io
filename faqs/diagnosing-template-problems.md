h1. Diagnosing template problems [todo]

We get many requests on the forum for help with template problems.  Typically, these are caused by a few simple mistakes or misunderstandings.  Below is a brief guide to diagnosing common problems.  Please take the time to follow this before asking for help on the forum - it makes it much quicker and easier for others to answer your question.

When a page template doesn't display the output you expect:

h4(#messages). Check for error messages in Testing mode

Set your Production Status to _Testing_ in *textpattern > admin > prefs*.  _Live_ mode suppresses all error messages for security reasons; _Testing_ ensures they are displayed.  Reload the page in question and look for errors.

If there is an error associated with a tag, the message should identify that tag.

One common error to check for is @Warning: Missing argument 2 for …@.  This usually indicates a @<txp:…>@ tag that hasn't been "closed properly":https://textpattern.com/faq/72/warning-missing-argument-2-for.

If you see some other error message, search the "FAQ":/faq/ and "forum":https://forum.textpattern.com/ for more information, using the main keywords from the error message.

h4(#syntaxerrors). Check for template syntax errors

Some types of syntax errors in @<txp:…>@ tags will cause a silent error.  If your page is completely blank, or a large portion of it is empty, examine your template for XML syntax errors like the ones listed in "this FAQ entry":https://textpattern.com/faq/74/blank-page-after-editing-a-page-template

h4(#disable-plugins). Disable plugins

Sometimes a plugin can interfere with Textpattern's normal operation.  If you have plugins installed, try disabling them and see if it fixes the problem.  Disable them one at a time and re-test the problem page after each so you can identify the problem plugin.

If you've identified a particular plugin as the culprit, the "plugin forum":https://forum.textpattern.com/viewforum.php?id=13 is the best starting place to find help.

h4(#rtfm). Double check the documentation

If you've isolated the problem to a particular tag, double check its "documentation":http://textbook.textpattern.net/wiki/index.php?title=Alphabetical_Tag_Listing.  Make sure the tag really does what you think (common errors include substituting @<txp:article_custom />@ for @<txp:article />@, and @<txp:if_section>@ for @<txp:if_article_section>@), and ensure that the tag name and attribute names are spelled correctly and are lowercase.

Some tags work only in a particular context.  "Article Form tags":http://textbook.textpattern.net/wiki/index.php?title=Form_Related_Tags#Article_Form_Tags, for example, work only in a form that has been loaded by a @<txp:article form="myform" />@ or @<txp:article_custom form="myform" />@ tag.  Similarly, Comment Form, Link Form and File Download Form tags only work in comment, link, and file download lists respectively.  Check the list of "Form Related Tags":http://textbook.textpattern.net/wiki/index.php?title=Form_Related_Tags to confirm that you're using the tag in the right place.

h4(#stylesheet-problems). Rule out CSS stylesheet problems

Sometimes a page template can be working perfectly, but appear to be incorrect due to a CSS stylesheet problem.  Switch to a neutral stylesheet (perhaps the "default style":http://textbook.textpattern.net/wiki/index.php?title=Default_Styles, or an empty stylesheet), and make sure that the unstyled content is correct.

If the stylesheet isn't being applied to the document at all, or isn't working in some browsers, view the HTML source of your page and find the CSS URL.  Typically it looks like this:

bq. @<link rel="stylesheet" href="http://example.com/textpattern/css.php?s=default" type="text/css" media="screen" />@

Open that URL (@http://example.com/textpattern/css.php?s=default@) in your browser and check for obvious problems - a 404 Not Found error, or error messages or other junk at the top or bottom of the stylesheet.

h4(#isolate). Isolate the problem code

Try simplifying your code and moving it to a fresh template, one small portion at a time.  Start with a template that you know to be reliable - the "default page":http://textbook.textpattern.net/wiki/index.php?title=Default_Pages is a good choice - and test one small block at a time.

If the problem still occurs on the clean template, you know it's caused by that particular fragment of code.  Try reducing the code to the smallest fragment that still produces the problem - this will make it easier to identify the exact cause.

If the problem occurs on the default page template with no changes at all, it's not a template problem.

h4(#tagtrace).  Check the tag trace

In *Debugging* mode, Textpattern appends a _Tag Trace_ to the HTML output of each page.  View the HTML source of the page, and scroll to the bottom.  The trace looks something like this:

bq. @[Page: default]@
@<txp:css/>@
@<txp:page_title/>@
@<txp:link_to_home>@
@	<txp:sitename/>@
@</txp:link_to_home>@
@<txp:site_slogan/>@
@<txp:linklist wraptag="p" />@
@	[SQL (0.000112): select Form from `txp_form` where name` = 'plainlinks' limit 1]@
@	[Form: plainlinks]@
@	[SQL (0.000153): select * from txp_link where 1 order by linksort ]@
@…@

Some things to check:

* The lines @[Page: default]@ and @[Form: plainlinks]@ indicate that a particular _page template_ or _form_ has been loaded.  Make sure it's the right one.
* Is the code in question shown in the tag trace at all?  If not, it might have been excluded by a conditional tag (@<txp:if_…>@).
* If the problem code is in an _article form_, _link form_ or _comment form_, is it being loaded?  There might not be any articles/links/comments to display at all.  The SQL query for the preceeding tag might give you a hint.
