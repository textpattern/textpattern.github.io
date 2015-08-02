h1. Firefox tries to download my RSS feed [todo]

Textpattern identifies its RSS and Atom feeds as "application/rss+xml" and "application/atom+xml" respectively.  This is so that applications can distinguish between the different types of feeds "without having to guess":http://diveintomark.org/archives/2002/06/02/important_change_to_the_link_tag [1].

Different browsers handle "application/xml" in different ways.  Mozilla and Firefox prompt the user with a file download dialog box.

The important thing to remember is that XML feeds are not web pages.  They are not indended for viewing in a web browser.


[1]. The "old-fashioned" method was to identify feeds as "text/xml".  This merely identifies the document as XML, not as a news feed.  Nor does it provide any way to distinguish between RSS and Atom, and can lead to character set encoding problems.