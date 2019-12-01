h1. How do I select which form is used to display articles? [todo]

The form used to display articles is specified by the @<txp:article />@ tag in your page template. In the default template it looks similar to this:

bq. <div id="content">
    <txp:article />
</div>

To display articles using a different form, change the @<txp:article />@ tag to specify the form name like this:

bq. @<txp:article form="myform" />@

If no @form="…"@ attribute is specified, @<txp:article />@ will look for an article from named "default".

You can specify separate forms for list pages and individual article pages like this:

bq. @<txp:article listform="short" form="long" />@

It's also possible to use a different form for a single article, using the *Override form* selection under *Advanced Options* on the *content > write* page.
