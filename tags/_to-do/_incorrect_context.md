[todo:pw]

Certain Textpattern tags are only intended for use in particular places. If you see a message similar to this: “Article tags cannot be used outside an article context” then Textpattern is telling you that you shouldn't use the named tag where you have placed it.

Article form tags only work in an **article context**. They refer to one single article so they can only be used in a context that identifies one particular article. Specifically, they may be used on an individual article page template, or in an article form that has been displayed using a

~~~ html
<txp:article ... />
~~~


or

~~~ html
<txp:article_custom ... />
~~~


tag.

Article context tags will not work in an article list page template, because list pages are not associated with any single article.

Similarly, Comment form tags may only be used in the form that is used to display each individual comment (usually named

bc. comments


); File and Link form tags operate likewise.

