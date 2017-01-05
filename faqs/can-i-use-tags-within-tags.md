h1. Can I use tags within tags? [todo]

Textpattern supports nested tags -- that is, enclosing one tag within another.  For example, from the "default article form":http://textbook.textpattern.net/wiki/index.php?title=Default_Forms:

bq. @<txp:permlink><txp:title /></txp:permlink>@

It is also possible to use one tag as an _attribute_ for another by embracing the attribute with single quotes:

bq. @<txp:article_custom section='<txp:section />' />@

Single quotes serve as an indicator to Textpattern that it should feed the *result* of the embedded tag into the outer tag's attribute, as opposed to the *literal text* which is used by embracing an attribute value with the usual double quotes.

See the weblog post on <txp:permlink id="318" title="Tag parser - part 1: new features">Textpattern's tag parser</txp:permlink> for an in-depth explanation.

