h1. How do I create navigation links? [todo]

*Sections* are usually the topmost navigation elements of your website (more on site structure "here":https://textpattern.com/faq/78/ive-installed-textpattern-now-what).    If you want a simple, automatic list of links to sections, use the "section_list":http://textpattern.net/wiki/index.php?title=section_list tag:

bq. @<txp:section_list wraptag="ul" break="li" />@

This puts the links in an unordered list, so you can use CSS to alter the layout as required (see "A List Apart":http://www.alistapart.com/articles/taminglists/ for some examples).

For a popup selection list, use the "popup":http://textpattern.net/wiki/index.php?title=popup tag:

bq. @<txp:popup type="s" />@

If you want more control over the content of the list (to omit certain sections, or use a specific order), the best way is with the @<txp:section />@ tag (*requires Textpattern 4.0.2+*):

bq. @<ul>@
@    <txp:section wraptag="li" link=1 title=1 name="about" />@
@    <txp:section wraptag="li" link=1 title=1 name="articles" />@
@    <txp:section wraptag="li" link=1 title=1 name="news" />@
@    <txp:section wraptag="li" link=1 title=1 name="contact" />@
@    </ul>@

If you've created "static pages":https://textpattern.com/faq/31/how-do-i-manage-static-pages, like an _about_ or _contact_ page, you can link to them by linking to the associated section:

bq. @<txp:section link=1 title=1 name="about" />@
@<txp:section link=1 title=1 name="contact" />@

Category links are specified in a similar way.  There's a "category_list":http://textpattern.net/wiki/index.php?title=category_list tag:

bq. @<txp:category_list wraptag="ul" break="li" />@

The "popup":http://textpattern.net/wiki/index.php?title=popup  tag can also be used for categories:

bq. @<txp:popup type="c" />@

Please note however that _categories are independent of sections_.  Both of these tags will link to a list of articles in _all sections_ that belong to the selected category.

For more control, you can use the @category@ tag (also *requires Textpattern 4.0.2+*):

bq. @<ul>@
@    <txp:category wraptag="li" link=1 title=1 name="products" />@
@    <txp:category wraptag="li" link=1 title=1 name="weather" />@
@    <txp:category wraptag="li" link=1 title=1 name="photos" />@
@</ul>@
