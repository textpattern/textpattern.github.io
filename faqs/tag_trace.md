\\n[mininav_troubleshooting](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?id=&media=mininav_troubleshooting)

In [Debugging
mode](/home/www/zendstudio/dokuwiki/bin/doku.php?id=basic_preferences),
Textpattern appends a **Tag Trace** to the HTML output of each page.
This is your key to working out which Textpattern tags are being
executed and their outcome.

View the HTML source of the page, and scroll to the bottom. The trace
looks something like this:

    [Page: default]
    <txp:css/>
    <txp:page_title/>
    <txp:link_to_home>
        <txp:site_name/>
    </txp:link_to_home>
    <txp:site_slogan/>
    <txp:linklist wraptag="p" />
        [SQL (0.000112): select Form from `txp_form` where name` = 'plainlinks' limit 1]
        [Form: plainlinks]
        [SQL (0.000153): select * from txp_link where 1 order by linksort ]
    ...

Some things to check:

<ul>
<li>
<p>
The lines

</p>
    [Page: default]

<p>
and

</p>
    [Form: plainlinks]

<p>
indicate that a particular [Page templates](http://docs.textpattern.io/themes/page-templates-explained) or
[Form templates](http://docs.textpattern.io/themes/form-templates-explained) has been
loaded. Make sure it's the right one

</p>
</li>
<li>
<p>
Is the code in question shown in the tag trace at all? If not, it might
have been excluded by a conditional tag (

</p>
    <txp:if_...>

<p>
).

</p>
</li>
<li>
If the problem code is in an **article form**, **link form** or
**comment form**, is it being loaded? There might not be any
articles/links/comments to display at all. The SQL query for the
preceeding tag might give you a hint.

</li>
</ul>
If you can't fathom it out, post the ***relevant parts*** of the tag
trace in a new topic on the [Forum](http://forum.textpattern.com/) along
with a description of the problem or what you expect to see, and someone
will endeavour to help you out.
