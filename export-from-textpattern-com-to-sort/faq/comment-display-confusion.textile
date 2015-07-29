h1. Comment display confusion [todo]

Earlier versions of Textpattern were inflexible in the way comments were displayed.  The list of comments, and comment input form, were always appended to the end of an article on an individual article page.  This made it impossible to shift the comments to a different part of the layout (like a separate column), or display them on list pages.

Since RC5, there are some new comment tags that provide greater flexibility.

The default behaviour is to mimic older versions, by automatically appending comments and the comment input form to articles.  You can disable this behaviour by turning off the _Automatically append comments to articles?_ option on *textpattern > admin > prefs*.

If you disable that setting, you'll need to manually include the necessary comment tags in your article form, or comments won't be displayed at all.  (Conversely, if you use these comments tags without disabling the _Automatically append comments to articles?_ setting, you'll see comments displayed *twice*).

The important tags are:

* "txp:comments":http://textpattern.net/wiki/index.php?title=comments - displays the list of comments.  By default, this uses the form named "comments" to display each comment.
* "txp:comments_form":http://textpattern.net/wiki/index.php?title=comments_form - displays the comment input form.  By default, the input form markup is stored in the form named "comment_form".
* "txp:if_comments_allowed":http://textpattern.net/wiki/index.php?title=if_comments_allowed - checks if comments are permitted for the current article

The default _forms_ are:

* "comments":http://textpattern.net/wiki/index.php?title=Default_Forms#comments - this is used by the @<txp:comments />@ tag to display each comment in the list
* "comment_form":http://textpattern.net/wiki/index.php?title=Default_Forms#comment_form - this is the comment _input_ form, as displayed by @<txp:comments_form />@
* "comments_display":http://textpattern.net/wiki/index.php?title=Default_Forms#comments_display - this contains the code to display the comment input form, preview, and list of comments for an article.

You'll find a minimal set of comment tags in the default "comments_display":http://textpattern.net/wiki/index.php?title=Default_Forms#comments_display form.

If _Automatically append comments to articles?_ is turned on, this form is used automatically each time an article is displayed.

If you've turned off _Automatically append comments to articles?_, append this code (or something like it) to your article form as a starting point.