h1. How do I do if_not_something? [todo]

Textpattern includes a number of conditional "txp:if_...":http://textbook.textpattern.net/wiki/index.php?title=Alphabetical_Tag_Listing tags.

All of the built-in conditional tags support the @<txp:else />@ tag.  It works like this:

bq. @<txp:if_section name="about">@
@This section is "about"@
@<txp:else />@
@This section is not "about"@
@</txp:if_section>@

To do _if not section_, simply leave the first part empty:

bq. @<txp:if_section name="about">@
@<txp:else />@
@This section is not "about"@
@</txp:if_section>@

The same technique can be used with any @<txp:if_...>@ tag.
