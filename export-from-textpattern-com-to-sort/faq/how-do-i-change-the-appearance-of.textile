h1. How do I change the appearance of.. [todo]

Most tags that display content with markup support some (though not necessarily all) of the following attributes:

* _wraptag_ - a tag that wraps around content; typically @ul@ by default
* _class_ - CSS class applied to the wraptag; typically uses the tag name by default
* _break_ - a tag used to wrap or separate each item in a list (of articles, links, etc); typically @li@ by default
* _breakclass_ - CSS class applied to each break tag

It's not necessary to include &lt; and &gt; in these attributes.  If you use the tag names only, Textpattern will handle common self-closing tags correctly.  For example:

bq. @<txp:section_list wraptag="div" break="br" />@

produces something like this, with @<br />@ tags following each item:

bq. @<div class="section_list">@
@<a href="/section1/">section1</a><br />@
@<a href="/section2/">section2</a><br />@
@</div>@

While this:

bq. @<txp:section_list wraptag="ol" break="li" />@

produces @<li>@ tags that surround each item:

bq. @<ol class="section_list">@
@<li><a href="/section1/">section1</a></li>@
@<li><a href="/section2/">section2</a></li>@
@</ol>@

A detailed list of tags and their supported attributes can be found in the "Textpattern Tag Reference":http://textpattern.net/wiki/index.php?title=Category:Tag_Reference.  The "Attribute Cross Reference":http://textpattern.net/wiki/index.php?title=Attributes_Cross-reference lists the tags that support each attribute.
