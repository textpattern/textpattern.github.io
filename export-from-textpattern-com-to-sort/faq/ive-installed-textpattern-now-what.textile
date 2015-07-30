h1. I've installed Textpattern.  Now what? [todo:dw]

This content will largely be rewritten into an admin-side highlights page. Leave it to me. — Destry

======

Textpattern is a blank slate.  Though it almost always works out-of-the-box, and includes a simple layout and structure to get you started, you'll need to learn some basic concepts in order to shape it to your needs.

Briefly, the important concepts in Textpattern are:

*Sections*

Sections are the topmost divisions of your web site.  A newspaper site might have sections like "Politics", "Sport", "Weather", and so on.  These usually correspond to URLs such as @http://example.com/politics/@, @http://example.com/sport/@, etc.

Sections are managed in the Textpattern administration panel under *presentation > sections*.

Each section contains any number of articles.  Sections can look the same, or each one can have a unique page layout.

A section page - like @http://example.com/sport/@ - will typically display a *list* of recent articles in that section, much like a weblog.  It doesn't have to be a weblog, however: it might display a single article (as in a 'static' page like an About page), or a list of articles organized in some other fashion (as in this "FAQ section":/faq/).

*Articles*

Articles are where you store your content.  Each article has a title, excerpt, body, and can contain user-submitted comments.

Each article belongs to one section (and only one).

Every article has its own unique page and URL, usually called an *individual article page* or *permlink page*.  URL modes are configurable, but it often looks like @http://example.com/mysection/123/my-article-title@.

To write a new article, go to *content > write* in the Textpattern administration panel.  To edit or remove existing articles, go to *content > articles*.

*Page Templates*

Page templates determine the HTML code used to display *list* and *individual article* pages.  Each *section* has an associated page template that's used when displaying lists or articles in that section.  You can share the same page template between multiple sections, or create a unique one for each section if you wish.

Page templates contain *textpattern tags*, which are used to insert dynamic content into the page.  For example, the @<txp:article />@ tag will display the article(s) associated with the current URL.

Page templates are managed in the *presentation > pages* tab of the administration interface.  To assign a template to a particular section, go to *presentation > sections*.

*Forms*

Forms are short snippets of HTML used to display repeated content.  Each form has a *type*: @article@, @link@, @misc@, etc.

An *article form* is used by the @<txp:article />@ tag to determine how to display each article on the page, for example.

Like *page templates*, *forms* can contain Textpattern tags.  The *article form* will typically include the @<txp:title />@ and @<txp:body />@ tags, for example, which display the article's title and body respectively.

You can use *misc forms* for snippets of HTML code you use on each page, such as a header or footer.  ("read how":http://textpattern.com/faq/32/how-do-i-reuse-chunks-of-html)

Forms are managed in the *presentation > forms* administration tab.

*Styles*

Styles are CSS stylesheets.  Like *page templates*, each *section* has an associated *style*.  You can use a unique style for each section, or share one between many sections.

Styles are managed in the *presentation > style* tab.  To assign a style to a section, go to *presentation > sections*.

*The Front Page*

The front page of your Textpattern site - typically @http://example.com/@ - works as a container for all sections.  The front page has its own *page template* and *style* setting; just like sections, it can have a unique page template and style, or share them with other sections.

You can't assign articles directly to the front page.  Instead, each section has a setting ("On front page?") that determines whether or not the articles in that section should be displayed on the front page.

*Images and Files*

Textpattern has a built in administration interface for uploading and managing images and files.

The *content > images* tab is used to upload and manage images that are displayed as content in a page, as elements in a layout, in an image gallery, or within an article body.  Several built-in "Textpattern tags":http://textbook.textpattern.net/wiki/index.php?title=Alphabetical_Tag_Listing are available for using images in a page template or form: @<txp:image />@, @<txp:article_image />@, etc.

The *content > files* tab is used to upload and manage files that are made available for users to download.  A number of "file_download":http://textbook.textpattern.net/wiki/index.php?title=Alphabetical_Tag_Listing template tags are available for creating file download lists.

Alternatively, you can upload and manage images or files manually using FTP and similar programs.  You'll have to use hard-coded HTML and URLs to reference these files, however.  (Be careful when using "relative URLs":http://textpattern.com/faq/77/images-are-broken-on-certain-pages).
