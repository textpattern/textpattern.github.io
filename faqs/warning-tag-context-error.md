h1. Warning: tag context error [todo]

Certain Textpattern tags are only intended for use in a particular context.

"Article form tags":http://textbook.textpattern.net/wiki/index.php?title=Form_Related_Tags#Article_Form_Tags work only in an *article context*.  They refer to a single article, so they can only be used in a context that identifies one particular article.  Specifically, they may be used on an individual article page template, or in an article form that has been displayed using a @<txp:article … />@ or @<txp:article_custom … />@ tag.

Article context tags will not work in an article list page template, because list pages are not associated with any single article.

"Comment form tags":http://textbook.textpattern.net/wiki/index.php?title=Form_Related_Tags#Comment_Form_Tags may only be used in the form that is used to display each individual comment (usually named @comments@).

