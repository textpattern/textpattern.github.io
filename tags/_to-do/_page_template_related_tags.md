[todo:pw]

"alphabetical_tag_listing":/home/www/zendstudio/dokuwiki/bin/doku.php?id=alphabetical_tag_listing &#124; "Tag Attributes Cross-Reference":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross_reference &#124; "Page (template) Tags":/home/www/zendstudio/dokuwiki/bin/doku.php?id=page_template_related_tags &#124; "form_related_tags":/home/www/zendstudio/dokuwiki/bin/doku.php?id=form_related_tags &#124; "conditional_tags":/home/www/zendstudio/dokuwiki/bin/doku.php?id=conditional_tags

h3(sectionedit1#overview). Overview

Pages (HTML Web page templates) are one of Textpattern's key presentation building blocks, and are created and managed in the "pages_subtab":/home/www/zendstudio/dokuwiki/bin/doku.php?id=pages_subtab panel of the admin side of your site.

Though Textpattern will allow you to use any tag in a page template, some are more appropriate for such use while others are generally more appropriate for use in Forms (see "form_related_tags":/home/www/zendstudio/dokuwiki/bin/doku.php?id=form_related_tags). However, because there is a lot of flexibility with how you can use tags, keep an open mind about how information is presented here; we try to organize our discussion of tags in logical ways, but it does not cover all the possible relationships that might exist between tags and how/where they are used.

h3(sectionedit2#page_template_tag_options). Page (Template) Tag Options

The following links attempt to categorize the various Textpattern tags as they are generally used with Textpattern page templates. Follow the links accordingly to see the available tags, and for subsequent tag details.

h4(#header_related_tags). Header Related Tags

<ul>
<li><p>Style Tag (</p>
```html
<@@txp:css_:@@>
```


<p>):</p></li>
<li><p>Page Title (</p>
```html
<@@txp:page_title_:@@>
```


<p>):</p></li>
</ul>
```

h4(#main_content_area_related_tags). Main Content Area Related Tags

<ul>
<li>Article Related Tags
<ul>
<li>```html
<@@txp:article_:@@>
```

</li>
<li>```html
<@@txp:article_custom_:@@>
```

</li>
</ul>
</li>
<li>Comments Related Tags
<ul>
<li>Comments Display
<ul>
<li>```html
<@@txp:comment_name_:@@>
```

</li>
<li>```html
<@@txp:comment_permlink@@>###</@@txp:comment_permlink@@>
```

</li>
<li>```html
<@@txp:comment_time_:@@>
```

</li>
<li>```html
<@@txp:comments_count_:@@>
```

</li>
<li>```html
<@@txp:comments_invite_:@@>
```

</li>
</ul>
</li>
</ul>
</li>
</ul>
```

<ul>
<li>Comment Input Form
<ul>
<li>```html
<@@txp:comment_name_input_:@@>
```

</li>
<li>```html
<@@txp:comment_remember_:@@>
```

</li>
<li>```html
<@@txp:comment_email_input_:@@>
```

</li>
<li>```html
<@@txp:comment_web_input_:@@>
```

</li>
<li>```html
<@@txp:comment_message_input_:@@>
```

</li>
<li>```html
<@@txp:comments_help_:@@>
```

</li>
<li>```html
<@@txp:comment_preview_:@@>
```

</li>
<li>```html
<@@txp:comment_submit_:@@>
```

</li>
</ul>
</li>
</ul>
```

h4(#column_related_tags). Column Related Tags

<ul>
<li>Recent Content Related Tags
<ul>
<li>```html
<@@txp:recent_articles_:@@>
```

</li>
<li>```html
<@@txp:recent_comments_:@@>
```

</li>
</ul>
</li>
<li>File Download Tags
<ul>
<li>```html
<@@txp:file_download_:@@>
```

</li>
<li>```html
<@@txp:file_download_list_:@@>
```

</li>
</ul>
</li>
</ul>
```

h4(#navigation_related_tags). Navigation Related Tags

<ul>
<li>Article Navigation Tags
<ul>
<li>```html
<@@txp:link_to_previous@@> | <@@txp:link_to_next@@>
```

</li>
<li>```html
<@@txp:older@@> | <@@txp:newer@@>
```

</li>
<li>```html
<@@txp:prev_title_:@@> | <@@txp:next_title_:@@>
```

</li>
<li>```html
<@@txp:related_articles_:@@>
```

</li>
</ul>
</li>
</ul>
```

<ul>
<li>Site Navigation Tags
<ul>
<li>```html
<@@txp:link_to_home@@>
```

</li>
<li>```html
<@@txp:popup_:@@>
```

</li>
<li>```html
<@@txp:breadcrumb_:@@>
```

</li>
<li>```html
<@@txp:search_input_:@@>
```

</li>
</ul>
</li>
</ul>
```

h4(#link_related_tags). Link Related Tags

<ul>
<li>Link Tags
<ul>
<li>```html
<@@txp:linklist_:@@>
```

</li>
</ul>
</li>
</ul>
```

<ul>
<li>Feed Tags
<ul>
<li>```html
<@@txp:feed_link_:@@>
```

</li>
<li>```html
<@@txp:link_feed_link_:@@>
```

</li>
</ul>
</li>
</ul>
```

