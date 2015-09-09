h1. Warning: Missing argument 2 for.. [todo]

These and similar errors occur when an _enclosing_ @<txp:...>@ tag isn't closed properly.  The function name will be the name of the tag (@<txp:if_comments_allowed>@ in the above example).

Check for errors like these in your page templates:


p. _Using an enclosing tag as self-closing_

bq. @<txp:some_tag />@ instead of 
@<txp:some_tag> ... </txp:some_tag>@ 

p. _Error in closing tag_

bq. @<txp:some_tag>@
...
@</txp:smoe_tag>@, or

bq. @<txp:some_tag>@
...
@</txp_some_tag>@, or

bq. @<txp:some_tag>@
...
@<txp:some_tag>@

p. _Missing closing tag_

bq. @<txp:some_tag>@
...
