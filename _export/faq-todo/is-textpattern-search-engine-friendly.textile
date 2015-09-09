h1. Is Textpattern search engine friendly? [todo]

Yes.  Textpattern employs many recommended usability and accessibility techniques, which are friendly to both users and search engines, right out of the box.

The default page template is clean, minimal xhtml, with CSS stylesheets linked externally.  Textile automatically generates valid XHTML for page content.

Textpattern supports "clean" URLs on most systems (like the URL of this page, @http://textpattern.com/faq/120/is -textpattern-search-engine-friendly@).  Each article URL is unique, to avoid problems with duplicate content, and the URL title and page title can be set independently.  Though pages are generated dynamically, from a spider's point of view they are generally indistinguishable from static HTML.

Missing or deleted pages are handled correctly with a 404 response.  There are no session IDs or cookie checks to interfere with seach engine spiders.  The /section/id/title URL structure makes it easy to exclude specific sections with robots.txt.

Meta keywords can be set per-article, and page titles are unique.  There is a built-in "txp:breadcrumb":http://textpattern.net/wiki/index.php?title=breadcrumb tag.  A site map is easy to create with the "txp:article_custom tag":http://textpattern.net/wiki/index.php?title=article_custom.  

Textpattern's basic organisation tends to suit a flat, broad site structure, which is generally regarded as search-engine-friendly, rather than deep nesting, which can be harder for both users and spiders to navigate.

More advanced techniques can be implemented using "custom fields":http://textpattern.com/faq/111/how-do-i-use-custom-fields and "plugins":http://forum.textpattern.com/viewtopic.php?id=2193.
