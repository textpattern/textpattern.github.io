h1. Problems with nested txp:if_.. tags [todo]

Textpattern version 4.0.7 and later supports nested tags (i.e. one tag inside another) *without any constraint*.  
 
Older versions of Textpattern had limited capabilities in this area. Upgrading to the <txp:section name="download">latest Textpattern release</txp:section> is the recommended solution. 

Nesting a tag inside itself did not work in older Textpattern releases before 4.0.7:

bq. @<txp:if_foo>@
@<txp:if_foo>@
@...@
@</txp:if_foo>@
@</txp:if_foo>@


If an upgrade is beyond consideration, there are other ways to nest tags: To work around the problem, put the inner block in a Misc form and use output_form, like this:

bq. @<txp:if_foo>@
@<txp:output_form form="myform" />@
@</txp:if_foo>@

p. _myform_:

bq. @<txp:if_foo>@
@...@
@</txp:if_foo>@

