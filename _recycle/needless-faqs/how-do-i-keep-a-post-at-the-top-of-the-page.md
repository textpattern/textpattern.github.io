h1. How do I keep a post at the top of the page? [todo]

This is what *Sticky* articles are for.

The Sticky status means an article has been published, but is not included in the regular list of articles.  It's displayed only when requested with the @status="sticky"@ attribute.  For example:

bq. @<txp:article status="sticky" limit=1 />@
@<txp:article limit=10 />@

..will display the most recent Sticky article, followed by the 10 most recent Live articles.  On a section page, both tags will select articles from the current section only.  On the front page, these tags will select articles from sections that have _On front page?_ set to Yes.

To display a specific Sticky article, rather than the most recent, use the following tag:

bq. @<txp:article_custom status="sticky" id="123" />@

..where _123_ is the ID number of the article you want to show.  You can use this to show a sticky article in a section other than the one it belongs to, or to pin a specific article to the front page of your site.  The _article_custom_ tag ignores the URL, so the selected section has no effect.

A commonly requested variation is to display an introduction on a section page (or the front page), with headlines or manually crafted links to individual article pages.  For that, you can combine Sticky articles with the conditional tag method outlined "in this faq":https://textpattern.com/faq/24/how-do-i-show-only-an-excerpt-in-article-lists: 

bq. @<txp:if_article_list>@
@<!-- section page: display the sticky article -->@
@<txp:article status="sticky" limit=1 />@
@<txp:else />@
@<!-- article page: display the live article -->@
@<txp:article limit=1 />@
@</txp:if_article_list>@
