h1. Search result troubleshooting [todo]

Some common issues with searching:

*Blank page*

If your search results page is _completely_ blank (a zero byte page), the problem is probably a fatal error that is not displayed because of your _Production Status_ setting.  See "this FAQ":http://textpattern.com/faq/74/blank-page-after-editing-a-page-template for more information.

*Page layout is displayed, but no articles*

If your search results page shows its normal page layout, but with no articles, you should check three things:

1. That the sections containing the articles in question have _Include in site search_ set to _Yes_ on *textpattern > presentation > sections*.

2. That the search term you're using really does match some articles.  Test the same search term in the  _Search Body & Title_ box on *textpattern > content > articles*, and make sure that finds at least one *Live* article.  If not, use a single, common word, and try varying the case.  Case sensitive search results are caused by an incorrect collation setting on your textpattern database or table.

3. If you're using a special section such as @/search/@ to display your search results, make sure your @<txp:article />@ tag doesn't 
specify @searchall=0@ - this will force it to look for articles in the @search@ section.  @searchall=1@ is the default; this tells the article tag to display results from all sections that have _Include in site search_ set to _Yes_.

*Wrong articles are displayed*

If your search results page displays the wrong articles - the same articles as your front page, for example - it's probably because you're using the @<txp:article_custom />@ tag instead of @<txp:article />@.  article_custom is "context insensitive":http://textpattern.com/faq/85/what-does-article_custom-do - that is, it always displays the same list of articles, regardless of the URL or query parameters.

Either change your page template to use @<txp:article />@ instead, or use a separate section and template to display the search results.
