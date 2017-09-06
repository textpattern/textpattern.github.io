h1. How do I show only an excerpt in article lists? [todo]

Textpattern provides two main text fields per article: the _Body_ and the _Excerpt_. The Body is the main article content. The Excerpt is normally used for a summary, introductory paragraph, abstract or similar.

To implement a "Read More" link, we'll display the Excerpt on list pages (such as the front page and section pages), and the Body on the individual article ('permlink') pages. There are two ways to do this: one by using separate _forms_ for the list and article pages; and another by using a single article form with a @<txp:if_article_list>@ tag.

*Method 1:*

Use two article forms: one that shows only the excerpt, and one that shows the full article. Your main article form (typically 'default') would normally contain a @<txp:body />@ tag, which displays the complete article.

Create a *new article form* named "excerpt", containing something like this:

bq. @<txp:excerpt />@
@<txp:permlink>read more</txp:permlink>@

Your *default form* normally contains something like this (edited for brevity):

bq. @<h3><txp:permlink><txp:title /></txp:permlink></h3>@
@<txp:excerpt />@
@<txp:body />@

In your *page template*, use @<txp:article form="default" listform="excerpt" />@.

This means that the *default* form will be used for full article pages, and the *excerpt* form will be used for list pages. To change the appearance of either page (e.g. to remove the excerpt from the full article page), edit the appropriate form.

(For more information the article tag and forms, see "'How do I select which form is used to display articles?'":https://textpattern.com/faq/22/how-do-i-select-which-form-is-used-to-display-articles)

*Method 2:*

Use an *article form*, containing something like this:

bq. @<txp:if_article_list>@
@<! - list page: display the short version - >@
@<txp:excerpt />@
@<txp:permlink>read more</txp:permlink>@
@<txp:else />@
@<! - article page: display the complete article - >@
@<txp:body />@
@</txp:if_article_list>@

If you want to include the excerpt as well as the body on the article page, just add a @<txp:excerpt />@ tag above @<txp:body />@.

*Conditional Layout*

With either of the above methods, you can use the @<txp:if_excerpt>@ tag *inside the article form* to lay out articles with and without excerpts differently. For example, to apply separate CSS classes to the excerpt and body:

bq. @<txp:if_excerpt>@
@<! - this article has an excerpt - >@
@<div class="excerpt">@
@<txp:excerpt />@
@</div>@
@</txp:if_excerpt />@
@<div class="body">@
@<txp:body />@
@</div>@

The same "txp:if_excerpt":http://textbook.textpattern.net/wiki/index.php?title=if_excerpt tag can be used on the list page to handle articles that have no Excerpt set. For example, to display the article Body when the Excerpt is empty:

bq. @<txp:if_excerpt>@
@<! - the article has an excerpt - >@
@<txp:excerpt />@
@<txp:permlink>read more</txp:permlink>@
@<txp:else />@
@<! - there is no excerpt - >@
@<txp:body />@
@</txp:if_excerpt>@

If you need to automatically generate an Excerpt from the Body, there are several plugins that will help. You'll find them at "Textpattern Resources":http://textpattern.org/ or on the "Textpattern Plugins Forum":https://forum.textpattern.com/viewforum.php?id=13.
