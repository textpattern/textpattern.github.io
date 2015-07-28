h1. Non-ASCII characters are missing or incorrect [todo]

This is most commonly caused by:

* A missing DOCTYPE in your page template
* A missing or incorrect character set in your page template
* Using characters from a different character set (e.g. latin1 characters, when the charset is utf-8)
* The @mbstring.encoding_translation@ setting is turned on.  This automatically converts all page output to some other character set, often ISO8859-1.

You can check the mbstring settings with @php -i@ or @phpinfo();@.  If @mbstring.encoding_translation@ is on, ask your host about turning it off.

Textpattern has built-in support for Unicode.  This means you don't have to do anything special for non-ASCII characters to work.  Just write articles using a modern browser, and enter any characters you like in the article title, body, and excerpt.

Don't specify a legacy character set in your page doctype or HTML @<meta>@ tags.   The character set for all Textpattern pages should always be "utf-8".  If you use anything else, non-ASCII characters will be encoded incorrectly.

