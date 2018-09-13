h1. Common "How Do I?" questions [todo]

Here are some quick answers to common "How Do I?" questions.

h3. How Do I..

h4. …display something only on an individual article page?

Surround it with an "txp:if_individual_article":http://textbook.textpattern.net/wiki/index.php?title=if_individual_article tag:

bc. <txp:if_individual_article>
	<!-- displayed on individual article page only -->
</txp:if_individual_article>


h4. …display something only on list (section/front) pages?

Surround it with an "txp:if_article_list":http://textbook.textpattern.net/wiki/index.php?title=if_article_list tag:

bc. <txp:if_article_list>
	<!-- displayed on list pages only -->
</txp:if_article_list>


h4. …make an "About" page?

FAQ: "Managing Static Pages":https://textpattern.com/faq/31/how-do-i-manage-static-pages


h4. …make a reusable sidebar, header or footer?

With the "txp:output_form":http://textbook.textpattern.net/wiki/index.php?title=output_form tag.

FAQ: "How do I reuse chunks of HTML?":https://textpattern.com/faq/32/how-do-i-reuse-chunks-of-html


h4. …show a list of recent articles or comments in a sidebar?

With the "txp:recent_articles":http://textbook.textpattern.net/wiki/index.php?title=recent_articles or "txp:recent_comments":http://textbook.textpattern.net/wiki/index.php?title=recent_comments tags.

For more control over a list of recent articles, use "txp:article_custom":http://textbook.textpattern.net/wiki/index.php?title=article_custom instead.

FAQ: "How do I change the output of txp:recent_articles?":https://textpattern.com/faq/26/change-the-output-of-txp%3Arecent_articles


h4. …show a short list of articles or article links in a sidebar?

For simple lists, the recent_articles tag might do what you want (see above).

To list articles from a specific section or category, use the "txp:article_custom":http://textbook.textpattern.net/wiki/index.php?title=article_custom tag.  Create an _article form_ containing only the tags you want, for example:

bc.. <h4><txp:permlink><txp:title /></txp:permlink></h4>

<txp:excerpt />

p. Then use a tag like @<txp:article_custom limit="5" form="myformname" />@ in your sidebar.


h4. …show a short version of articles with a "read more.." link?

Use something like this in your article form:

bc.. <txp:if_article_list>
	<!-- excerpt only -->
	<txp:excerpt />
	<txp:permlink>read more..</txp:permlink>
<txp:else />
	<!-- full article body -->
	<txp:body />
</txp:if_article_list>

p. FAQ: "How do I show only an excerpt in article lists?":https://textpattern.com/faq/24/how-do-i-show-only-an-excerpt-in-article-lists

Excerpts automatically generated from the article body are possible through "plugins (Textpattern Resources: excerpts)":http://textpattern.org/categoryarchive/?c=excerpts.


h4. …break an article list into columns, or insert ads between certain articles in a list?

Use the @limit@, @offset@ and @pageby@ attributes of "txp:article":http://textbook.textpattern.net/wiki/index.php?title=article:

bc.. <txp:article limit="3" pageby="10" />

<!-- column break or advertisement -->

<txp:article limit="7" offset="3" pageby="10" />

p. Textpattern CMS support forum: "txp:article pageby attribute":https://forum.textpattern.com/viewtopic.php?id=12481


h4. …supply a special layout to the first article on a page?

Use the "txp:if_first_article":http://textbook.textpattern.net/wiki/index.php?title=if_first_article tag in your article form:

bc. <txp:if_first_article>
	<!-- display the entire first article -->
	<txp:body />
<txp:else />
	<!-- display the excerpt only for subsequent articles -->
	<txp:excerpt />
</txp_if_first_article>


h4. …apply a special layout to articles from a particular section when shown on the front page?

Use the "txp:if_article_section":http://textbook.textpattern.net/wiki/index.php?title=if_article_section tag in your article form:

bc.. <txp:if_article_section name="linklog">
	<!-- "linklog" section only -->
	<div class="linklog"><txp:body /></div>
<txp:else />
	<!-- all other sections -->
	<txp:title />

	<txp:body />
</txp:if_article_section>


h4. …apply a special layout to articles from a particular category?

Use the "txp:if_article_category":http://textbook.textpattern.net/wiki/index.php?title=if_article_category tag in your article form:

bc. <txp:if_article_category name="national">
	<!-- "national" category only -->
	<div class="linklog"><txp:excerpt /></div>
<txp:else />
	<!-- all other categories -->
	<txp:title />
	<txp:body />
</txp:if_article_category>


h4. …show a unique intro paragraph on each section page?

Post a "Sticky" article in each section containing the paragraph for that section, and display it with a @<txp:article status="sticky" />@ tag.

FAQ: "How do I keep a post at the top of the page?":https://textpattern.com/faq/84/how-do-i-keep-a-post-at-the-top-of-the-page


h4. …show the same intro paragraph on more than one section page?

Post a "Sticky" article containing the text, and display it with the tag @<txp:article_custom id="123" />@, where @123@ is the ID number of the sticky article.  Enclose it with the @<txp:if_article_list>@ tag if necessary.

FAQ: "How do I keep a post at the top of the page?":https://textpattern.com/faq/84/how-do-i-keep-a-post-at-the-top-of-the-page


h4. …show a unique banner image or similar on a particular section page?

If the page layout for each section is to be identical except for a small element, you should probably share the same page template between all sections, and use the "txp:if_section":http://textbook.textpattern.net/wiki/index.php?title=if_section tag to selectively display variations:

bc.. <txp:if_section name="weather">
	<img src="/images/cloud.jpg" />
</txp:if_section>

<txp:if_section name="sport">
	<img src="/images/cricket.jpg" />
</txp:if_section>

<!-- etc -->


h4. …add a stylesheet for printing?

Create a new style named "print", and add this to the @<head>@ portion of your page template:

bc. <txp:css format="link" media="print" n="print" />


h4. …display a random article, or a link to a random article?

Put this in your page template:

bc. <txp:article_custom sort="rand()" limit="1" form="random" />

..and create an article form named "random" containing the appropriate "article tags":http://textbook.textpattern.net/wiki/index.php?title=Category:Article_Tags, e.g:

bc.. <txp:permlink><txp:title /></txp:permlink>

<txp:excerpt />


h4. …display articles in a different order?

To sort by title in ascending alphabetical order:

bc. <txp:article sort="Title asc" />

To sort by Category 1 in descending order:

bc. <txp:article sort="Category1 desc" />

To sort by Category 1 first, then article date:

bc. <txp:article sort="Category1 asc, Posted asc" />

To sort by a custom field[1]:

bc. <txp:article sort="custom_3 asc" />


h4. …display "Top Stories" first, then regular articles?

Use a custom field to identify your top stories, and use this tag in your page template:

bc. <txp:article sort="custom_5 asc" />

Storing numbers in custom field 5 will bring articles to the top, with higher numbers shown first.



fn1. You must use the ??custom_n?? name here, not the custom field name as defined in Advanced Preferences.