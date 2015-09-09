h1. How do I use custom fields? [todo]

Textpattern's _custom field_ feature allows you to attach extra information to articles: prices, URLs, phone numbers, or whatever suits your application.  It's not a substitute for a full-fledged, custom-designed database, but works well for simple designs.

Each article can have up to 10 _custom fields_.  Each custom field can contain a simple string, limited to 255 characters.

Let's say we want our Textpattern articles to have an extra field, representing a _manufacturer name_.

First, we need to set the field name.  Under *textpattern > admin > preferences > advanced*, set *Custom field 1 name* to @manufacturer@, and save the settings.  It's a good idea to use a name that is lowercase and contains no spaces.

Next, we need to add a tag to display the contents of the field.  In your *article form*, add something like this:

bq. @<p>Manufacturer: <txp:custom_field name="manufacturer" /></p>@

Finally, add the manufacturer name to each article.  Under *textpattern > content > write*, click Advanced Options, and you should see a text input box with the title *manufacturer*.  Add the manufacturer name there, and it will be displayed by the @<txp:custom_field .. />@ tag.

Custom field names are global, but you don't have to use them on every article.  To display custom fields only for a particular section, either use a different page template and article form for that section; or wrap an "if_section conditional":http://textpattern.net/wiki/index.php?title=if_section around the @<txp:custom_field .. />@ tag.

The "txp:if_custom_field":http://textpattern.net/wiki/index.php?title=if_custom_field tag may also prove useful.  It checks the value of a custom field.  For example, to hide the "Manufacturer:" text on articles that have no manufacturer name:

bq. @<txp:if_custom_field name="manufacturer">@
@<p>Manufacturer: <txp:custom_field name="manufacturer" /></p>@
@</txp:if_custom_field>@

You can also use custom fields to store URLs.  For example, if we added a second field, @manufacturer_url@:

bq. @<txp:if_custom_field name="manufacturer_url">@
@<p>Manufacturer: <a href="<txp:custom_field name="manufacturer_url" />"><txp:custom_field name="manufacturer" /></a></p>@
@</txp:if_custom_field>@


For more information, read "txp:custom_field":http://textpattern.net/wiki/index.php?title=custom_field.
