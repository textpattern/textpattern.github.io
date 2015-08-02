h1. Common Textile Problems and Questions [todo]

Textile has been upgraded to version 2.0 as of Textpattern 4.0.4.  Version 2.0 fixes many problems, and adds new features such as a @bc.@ block modifier and extended blocks.

Some problems in earlier versions of Textile include:

h3. Inline tags aren't working

Inline tags like ==*bold*==, ==_underline_== and ==^superscript^== must normally be surrounded by whitespace (though trailing punctuation is usually fine).

==A *bold* word== -> "A *bold* word".

==A*bold*word== -> "A*bold*word".

This behaviour is intentional.  Otherwise Textile would interfere with text like @a name_with_underscores@ or @vis-a-vis@.

Textile 2.0, included in Textpattern 4.0.4 and higher, allows the following syntax:

==A[*bold*]word== -> "A<strong>bold</strong>word".

h3. Textile won't work with non-English characters, classes and styles don't work

The new version of Textile fixes most of these problems.

h3. Textile interferes with raw HTML in my article body

Textile tries to leave raw HTML alone.  In most cases, an enclosed block of well-formed raw HTML like this will be left untouched:

bc. <div class="foo">
<span>blah</span>
</div>

However, blank lines within the block will result in unwanted @<p>...</p>@ blocks and @<br />@ tags.

Blocks of HTML code that are completely enclosed by a tag will not be enclosed by @<p>...</p>@ tags.  A line that includes both HTML and unenclosed text will be processed as normal paragraph text.

To tell Textile to leave a block of HTML alone, use either the @notextile.. @ block modifier, or leave a space at the beginning of each line:

bc.. notextile.. <div>

no textile here
</div>

bc. p. Back to paragraph text.

If you'd like complete control over an article's HTML markup, select *Leave text untouched* in the Article or Excerpt Markup box on the Write page, under Advanced Options.

h3. Textile results don't match textism.com

The version of Textile running on textism.com is very old.