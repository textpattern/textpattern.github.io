h1. What does article_custom do? [todo]

The @<txp:article />@ tag is *context sensitive*.  The article(s) it displays depends on the URL of the current page.  The results will change if the URL includes a section, for example, or a category, or a search query, an article ID, or a page number parameter.  It's normally used to display the main content of a page.

The @<txp:article_custom />@ tag *ignores the page URL*.  The article(s) it displays depends only on the tag attributes.  The results won't change on a search result page, when navigating by category, section or article, or when paging.  It's typically used to display a list of articles in a sidebar.

See also "Why aren't the right articles showing up on my page?":http://textpattern.com/faq/27/why-arent-the-right-articles-showing-up-on-my-page
