h1. Problems with code in article bodies [todo]

It is possible to put PHP and Javascript code directly inside an article body (there are some "security settings":http://textpattern.com/faq/35/can-i-use-php-code-in-article-bodies for PHP code).

However, there are some limitations.  Textile -- the article markup used by Textpattern -- doesn't understand PHP or Javascript syntax, so it can't always tell where the code starts and ends.  This means Textpattern might try to interpret part of your PHP or Javascript code as Textile markup, which will almost certainly prevent it from working.

If you have more than a few lines of PHP or Javascript code, don't put it directly in an article body.  Instead, paste it into a new _form_ of type "Misc", and use the following tag to call the code:

bq. @<txp:output_form form="my_js_code" />@

If you often find yourself calling code from article bodies, you might consider rethinking your design.  Articles are for _content_, code is more appropriate for a page template or form.  See if you can place the code in your "article form":http://textpattern.com/faq/22/how-do-i-select-which-form-is-used-to-display-articles instead.
