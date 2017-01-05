h1. How do I make an archive page? [todo]

(This technique requires Textpattern 4.0.2+)

Here's a step-by-step method for creating a page that lists all articles with headings for each month (or year):

1. Create a new article form (*presentation > forms*).  Call it *monthly_article*:

bq. @<!-- show the year -->@
@<txp:if_different>@
@<h2><txp:posted format="%Y" /></h2>@
@</txp:if_different>@
@<!-- show the month -->@
@<txp:if_different>@
@<h3><txp:posted format="%B" /></h3>@
@</txp:if_different>@
@<!-- article title and link -->@
@<txp:permlink><txp:title /></txp:permlink>@
@<br />@

2. Copy an existing page template (such as *default*) to a new one named *archive_list*.

3. Edit the *archive_list* template.  In the main content block, replace the @<txp:article />@ tag with this:

bq. @<txp:article_custom limit=99999 form="monthly_article" />@

4. Create a section named *archive*, *list*, or similar.  The section page (http://example.com/archive/ or http://example.com/?s=archive) will be used to display the list of articles.  Select *archive_list* as the page template ("Uses page:").

*Variations*

The *monthly_article* form above will display the year and month separately.  You can combine them together like this:

bq. @<txp:if_different><h3><txp:posted format="%B %Y" /></h3></txp:if_different>@

The @format@ string can include any of the format specifiers supported by "PHP's strftime function":http://www.php.net/manual/en/function.strftime.php.  (Beware, Windows doesn't support all of those).  @<txp:if_different>@ only displays its enclosed content when that content _changes_.

To include an excerpt, timestamp, category name or other information with each article link, simply use the appropriate "article form tags":http://textbook.textpattern.net/wiki/index.php?title=Form_Related_Tags#Article_Form_Tags in the *monthly_article* form.

To display the articles in an unordered list, use a @li@ tag in the *monthly_article* form:

bq. @<li>@
@<txp:permlink><txp:title /></txp:title>@
@</li>@

..and, in the *archive_list* page template, wrap the @article_custom@ tag in a @ul@:

bq. @<ul><txp:article_custom limit=99999 form="monthly_article" /></ul>@

To display only articles from a specific section or category, change the @article_custom@ tag:

bq. @<txp:article_custom limit=99999 form="monthly_article" section="products" />@

or:

bq. @<txp:article_custom limit=99999 form="monthly_article" category="weather" />@

To group articles by something other than date, such as section, create a form named *section_article*:

bq. @<!-- show the section -->@
@<txp:if_different>@
@<h2><txp:section title=1 /></h2>@
@</txp:if_different>@
@<!-- article title and link -->@
@<txp:permlink><txp:title /></txp:title>@
@<br />@

And change the @article_custom@ tag to sort by section:

bq. @<txp:article_custom limit=99999 form="section_article" sort="section desc" />@
