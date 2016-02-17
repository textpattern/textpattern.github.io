# Keywords DEPRECATED [todo:pw]

~~~ html
<txp:keywords />
~~~


The **keywords** tag is a *single* tag that Textpattern will replace with the keywords associated with the article being displayed. The tag can be used in an article "Form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=forms_explained, or within "pages":/home/www/zendstudio/dokuwiki/bin/doku.php?id=pages (templates), either wrapped within a given article tag, or directly in the template itself so long as the context is with a single article (as opposed to an article list). For keywords metadata, see "meta_keywords":/home/www/zendstudio/dokuwiki/bin/doku.php?id=meta_keywords tag.

## Attributes

This tag has no attributes.

h3(sectionedit2#examples). Examples

h4(#example_1display_keywords_in_context_of_an_article_form). Example 1: Display keywords in context of an article Form

In this example, keywords are used in an article Form along with other article components. The keywords themselves are used like a list of topical “tags”, *e.g._, like you would use for more granular searching. The keywords would be presented (via CSS) horizontally (ideally) above the article's excerpt.

~~~ html
<h3><txp:permlink><txp:title /></txp:permlink></h3>
<p><txp:posted /></p>
<p><txp:keywords /></p>
<txp:excerpt />
<txp:body />
~~~

Other tags used: [permlink](permlink), [title](title), [posted](posted), [excerpt](excerpt), [body](body).

### Example 2: Use keywords to fill &lt;code&gt;meta&lt;/code&gt; element values

In this example, keywords are used directly in a *Page* (template) to insert `content=""` values in a `meta` element.

~~~ html
<meta name="keywords" content="<txp:keywords />" />
~~~

This works if the context is a single article being displayed.

The same result can be done by putting the keywords inside an "if_individual_article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_individual_article tag (though a bit more code than necessary).

~~~ html
<txp:if_individual_article>
    <meta name="keywords" content="<txp:keywords />" />
</txp:if_individual_article>
~~~

In both of the above, if a given article has keywords associated with it, they will fill the meta value. If not, the meta element remains with no `content=""` values. This might be okay if you know for sure all articles will have keywords assigned.

If not, a metadata tag in your template with no value might not be desired. In which case you could set it up as a condition; if there are no keywords on the article, the entire meta element is not added to the template.

~~~ html
<txp:if_keywords>
    <meta name="keywords" content="<txp:keywords />" />
</txp:if_keywords>
~~~

Either of these uses might work well for certain pages where a single article is in context, but it doesn't account for other page contexts, like home pages with complex content layouts, or pages displaying article lists (rather than single articles). In other words, these are not copy/paste solutions for every template in your site. You may, in fact, create some metadata values manually if the context of certain pages doesn't change much.

Other tags used: [if_individual_article](if-individual-article), [if_keywords](if-keywords).

## Related plugins

"cbe_keywords":http://textpattern.org/plugins/1231/cbe_keywords uses keywords to offer tagging features.

"chh_keywords":http://textpattern.org/plugins/523/chh_keywords provides tags to create a link list of an articleâ€™s keywords, browse lists of articles by keyword, and list all keywords in a tag cloud.

"rah_metas":http://textpattern.org/plugins/851/rah_metas, an SEO- and meta-tool, includes several keyword related attributes.

"ras_if_article_keywords":http://textpattern.org/plugins/801/ras_if_article_keywords is a conditional tag that compares a keyword list as an attribute against the keywords associated with a particular article.

"tru_tags":http://textpattern.org/plugins/584/tru_tags uses keywords to offer tagging features.

"wet_haystack":http://textpattern.org/plugins/1046/wet_haystack-custom-fulltext-search-index-builder allows site publishers to modify the default search behaviour by adding additional article fields to the set of indexed content, including keywords.
