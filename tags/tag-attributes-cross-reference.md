# Tag attributes cross-reference [todo:pw]

This cross-reference makes clear the different Textpattern tags associated with a given attribute. For each attribute, the associated tags are listed underneath it.

*Authors: DO NOT** add new tags/attributes here from development versions of Textpattern, add them to "tags_in_development":/home/www/zendstudio/dokuwiki/bin/doku.php?id=tags_in_development to avoid confusion. Only the latest stable version of Textpattern is officially supported, and this list should only reflect the latest stable version.

h3(sectionedit1#active_class). active_class

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to the “active” or current link in a list.

* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

h3(sectionedit2#align). align

As of version 4.2.0 this attribute is deprecated.

"HTML img tag align attribute":http://www.w3.org/TR/html4/struct/objects.html#adef-align-IMG. Recommended that you use CSS via **class** or **id** attribute instead.

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

h3(sectionedit3#allowoverride). allowoverride

Used to disable assigned override forms. Works within article lists and single article display. Both article tags use

bc. 1


(yes) as default.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

h3(sectionedit4#anchor). anchor

* "comment_permlink":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comment_permlink

h3(sectionedit5#author). author

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list

h3(sectionedit6#auto_detect). auto_detect

* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list

h3(sectionedit7#break). break

"HTML tag":http://www.w3.org/TR/html4/intro/sgmltut.html#h-3.2.1 (without brackets) or string used to separate list items. Suggested values include

bc. br


and

bc. hr


for presentational markup, or

bc. li


if semantic markup is preferred. Textpattern cares for the correct nesting of tags in either case.

Default is

bc. br


(except for tags marked by an asterisk, which default to unset).

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article &#42;
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom &#42;
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments
* "comments_error":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_error
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist &#42;
* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "search_result_excerpt":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_result_excerpt
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

h3(sectionedit8#breakclass). breakclass

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to **break** (when value supplied is a tag).

* "comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments

h3(sectionedit9#button). button

* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input

h3(sectionedit10#category). category

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list

h3(sectionedit11#categories). categories

* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list

h3(sectionedit12#children). children

* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list

h3(sectionedit13#class). class

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to the specified "wraptag":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#wraptag. Tags marked with an asterisk use the tag name as the class name by default. Otherwise the default is empty.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb
* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category1":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category1
* "category2":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category2
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list &#42;
* "comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments &#42;
* "comments_error":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_error &#42;
* "comments_invite":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_invite &#42;
* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form &#42;
* "comments_preview":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_preview &#42;
* "expires":/home/www/zendstudio/dokuwiki/bin/doku.php?id=expires
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "file_download_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_category
* "file_download_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_description
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list &#42;
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images &#42;
* "link_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_category
* "link_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_description
* "link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link &#42;
* "link_to_home":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_to_home
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist &#42;
* "modified":/home/www/zendstudio/dokuwiki/bin/doku.php?id=modified
* "permlink":/home/www/zendstudio/dokuwiki/bin/doku.php?id=permlink
* "popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup
* "posted":/home/www/zendstudio/dokuwiki/bin/doku.php?id=posted
* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles &#42;
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles &#42;
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments &#42;
* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input &#42;
* "section":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list &#42;
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

h3(sectionedit14#customfieldname). //customfieldname//

In your tag, replace “_customfieldname_” with the actual name of the desired custom field (see also “"Important notes on creating custom field names":/home/www/zendstudio/dokuwiki/bin/doku.php?id=advanced_preferences#custom_fields”).

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

h3(sectionedit15#decimals). decimals

* "file_download_size":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_size

h3(sectionedit16#default). default

* "custom_field":/home/www/zendstudio/dokuwiki/bin/doku.php?id=custom_field

h3(sectionedit17#default_title). default_title

* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

h3(sectionedit18#email). email

* "email":/home/www/zendstudio/dokuwiki/bin/doku.php?id=email

h3(sectionedit19#escape). escape

Escape HTML entities.

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "author_email":/home/www/zendstudio/dokuwiki/bin/doku.php?id=author_email
* "custom_field":/home/www/zendstudio/dokuwiki/bin/doku.php?id=custom_field
* "file_download_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_description
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "image_info":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_info
* "link_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_description
* "link_name":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_name
* "newer":/home/www/zendstudio/dokuwiki/bin/doku.php?id=newer
* "older":/home/www/zendstudio/dokuwiki/bin/doku.php?id=older
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

h3(sectionedit20#excerpted). excerpted

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

h3(sectionedit21#exclude). exclude

* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

h3(sectionedit22#expired). expired

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

h3(sectionedit23#extension). extension

* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images

h3(sectionedit24#filename). filename

* "file_download":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download
* "file_download_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_link
* "file_download_name":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_name

h3(sectionedit25#flavor). flavor

* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link

h3(sectionedit26#forgetlabel). forgetlabel

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

h3(sectionedit27#form). form

Used to format content for display. See "forms_explained":/home/www/zendstudio/dokuwiki/bin/doku.php?id=forms_explained.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments
* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form
* "comments_preview":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_preview
* "file_download":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "output_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=output_form
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

h3(sectionedit28#format). format

* "comment_time":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comment_time
* "css":/home/www/zendstudio/dokuwiki/bin/doku.php?id=css
* "expires":/home/www/zendstudio/dokuwiki/bin/doku.php?id=expires
* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "file_download_created":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_created
* "file_download_modified":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_modified
* "file_download_size":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_size
* "link_date":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_date
* "link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link
* "modified":/home/www/zendstudio/dokuwiki/bin/doku.php?id=modified
* "posted":/home/www/zendstudio/dokuwiki/bin/doku.php?id=posted

h3(sectionedit29#frontpage). frontpage

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

h3(sectionedit30#gmt). gmt

* "comment_time":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comment_time
* "expires":/home/www/zendstudio/dokuwiki/bin/doku.php?id=expires
* "link_date":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_date
* "modified":/home/www/zendstudio/dokuwiki/bin/doku.php?id=modified
* "posted":/home/www/zendstudio/dokuwiki/bin/doku.php?id=posted

h3(sectionedit31#height). height

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image

h3(sectionedit32#hilight). hilight

* "search_result_excerpt":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_result_excerpt

h3(sectionedit33#html_id). html_id

"HTML id attribute":http://www.w3.org/TR/html4/struct/global.html#adef-id to be applied to the **wraptag**.

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

h3(sectionedit34#id). id

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "file_download":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download
* "file_download_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_link
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "if_article_id":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_article_id
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "permlink":/home/www/zendstudio/dokuwiki/bin/doku.php?id=permlink
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

h3(sectionedit35#include_default). include_default

* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

h3(sectionedit36#item). item

* "text":/home/www/zendstudio/dokuwiki/bin/doku.php?id=text

h3(sectionedit37#isize). isize

"HTML size attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-size-INPUT to be applied to "HTML form input":http://www.w3.org/TR/html4/interact/forms.html#edef-INPUT output.

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

h3(sectionedit38#keywords). keywords

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "if_keywords":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_keywords

h3(sectionedit39#label). label

This string will be prepended to the output. When using a "wraptag":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#wraptag value of either

bc. ol


or

bc. ul


, the label will be the first list item.

Default is unset (except where shown in parentheses).

<ul>
<li>"article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article</li>
<li>"article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom</li>
<li>"breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb (_Site name_)</li>
<li>"category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list</li>
<li>"feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link</li>
<li>"file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list</li>
<li>"image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index</li>
<li>"images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images</li>
<li>"link_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_category</li>
<li>"link_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_description</li>
<li>"link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link</li>
<li>"linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist</li>
<li><p>"popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup (</p>
bc. Browse


<p>)</p></li>
<li><p>"recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles (</p>
bc. Recent Articles


<p>)</p></li>
<li>"recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments</li>
<li>"related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles</li>
<li><p>"search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input (</p>
bc. Search


<p>)</p></li>
<li>"section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list</li>
</ul>
~~~

h3(sectionedit40#labeltag). labeltag

"HTML tag":http://www.w3.org/TR/html4/intro/sgmltut.html#h-3.2.1 (without brackets) to wrap around "label":/home/www/zendstudio/dokuwiki/bin/doku.php?id=attributes_cross-reference#label. Default is unset.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "link_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_category
* "link_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_description
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

h3(sectionedit41#lang). lang

* "comment_time":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comment_time
* "expires":/home/www/zendstudio/dokuwiki/bin/doku.php?id=expires
* "link_date":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_date
* "modified":/home/www/zendstudio/dokuwiki/bin/doku.php?id=modified
* "posted":/home/www/zendstudio/dokuwiki/bin/doku.php?id=posted

h3(sectionedit42#limit). limit

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments
* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "search_result_excerpt":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_result_excerpt

h3(sectionedit43#link). link

* "author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=author
* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb
* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category1":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category1
* "category2":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category2
* "comment_name":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comment_name
* "section":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

h3(sectionedit44#linkclass). linkclass

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to links.

* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb

h3(sectionedit45#linktext). linktext

* "email":/home/www/zendstudio/dokuwiki/bin/doku.php?id=email

h3(sectionedit46#listform). listform

See "forms_explained":/home/www/zendstudio/dokuwiki/bin/doku.php?id=forms_explained.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article

h3(sectionedit47#login). login

* "password_protect":/home/www/zendstudio/dokuwiki/bin/doku.php?id=password_protect

h3(sectionedit48#match). match

* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input

h3(sectionedit49#media). media

* "css":/home/www/zendstudio/dokuwiki/bin/doku.php?id=css

h3(sectionedit50#msgcols). msgcols

"HTML cols attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-cols-TEXTAREA to be applied to "HTML form textarea":http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA output.

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

h3(sectionedit51#msgrows). msgrows

"HTML rows attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-rows-TEXTAREA to be applied to "HTML form textarea":http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA output.

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

h3(sectionedit52#msgstyle). msgstyle

"HTML style attribute":http://www.w3.org/TR/html4/present/styles.html#style-element to be applied to "HTML form textarea":http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA output. Recommended that you use CSS via textarea's class or id attribute instead.

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

h3(sectionedit53#month). month

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

h3(sectionedit54#no_widow). no_widow

* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "title":/home/www/zendstudio/dokuwiki/bin/doku.php?id=title

h3(sectionedit55#name). name

* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "css":/home/www/zendstudio/dokuwiki/bin/doku.php?id=css
* "custom_field":/home/www/zendstudio/dokuwiki/bin/doku.php?id=custom_field
* "if_article_author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_article_author
* "if_article_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_article_category
* "if_article_section":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_article_section
* "if_author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_author
* "if_custom_field":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_custom_field
* "if_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_category
* "if_plugin":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_plugin
* "if_section":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_section
* "if_variable":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_variable
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail
* "section":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section
* "variable":/home/www/zendstudio/dokuwiki/bin/doku.php?id=variable

h3(sectionedit56#number). number

* "if_article_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_article_category

h3(sectionedit57#offset). offset

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments

h3(sectionedit58#pageby). pageby

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist

h3(sectionedit59#parent). parent

* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list

h3(sectionedit60#pass). pass

* "password_protect":/home/www/zendstudio/dokuwiki/bin/doku.php?id=password_protect

h3(sectionedit61#pgonly). pgonly

Used to return pagination statistics without rendering the article list. Care must be taken to remain consistent with article tag attributes to keep statistics accurate.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

h3(sectionedit62#poplink). poplink

* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

h3(sectionedit63#previewlabel). previewlabel

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

h3(sectionedit64#realname). realname

* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list

h3(sectionedit65#rel). rel

"HTML rel attribute":http://www.w3.org/TR/html4/struct/links.html#adef-rel to be applied to links.

* "css":/home/www/zendstudio/dokuwiki/bin/doku.php?id=css
* "link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link
* "linkdesctitle":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linkdesctitle

h3(sectionedit66#rememberlabel). rememberlabel

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

h3(sectionedit67#searchall). searchall

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article

h3(sectionedit68#searchform). searchform

See "forms_explained":/home/www/zendstudio/dokuwiki/bin/doku.php?id=forms_explained.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article

h3(sectionedit69#searchsticky). searchsticky

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article

h3(sectionedit70#section). section

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=author
* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category1":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category1
* "category2":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category2
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles
* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input

h3(sectionedit71#sections). sections

* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

h3(sectionedit72#separator). separator

* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb
* "page_title":/home/www/zendstudio/dokuwiki/bin/doku.php?id=page_title

h3(sectionedit73#showalways). showalways

* "comments_invite":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_invite
* "link_to_next":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_to_next
* "link_to_prev":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_to_prev
* "newer":/home/www/zendstudio/dokuwiki/bin/doku.php?id=newer
* "older":/home/www/zendstudio/dokuwiki/bin/doku.php?id=older

h3(sectionedit74#showcount). showcount

* "comments_invite":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_invite

h3(sectionedit75#show_preview). show_preview

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

h3(sectionedit76#size). size

"HTML size attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-size-INPUT to be applied to "HTML form input":http://www.w3.org/TR/html4/interact/forms.html#edef-INPUT output.

* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input

h3(sectionedit77#sort). sort

How to sort the resulting list. Available and default values vary by tag, but multiple, comma-separated values can be used. Each value can be specified as either

bc. asc


(ascending) or

bc. desc


(descending) order.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

h3(sectionedit78#status). status

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "if_status":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_status

h3(sectionedit79#style). style

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "permlink":/home/www/zendstudio/dokuwiki/bin/doku.php?id=permlink
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

h3(sectionedit80#submitlabel). submitlabel

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

h3(sectionedit81#text). text

* "search_result_count":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_result_count

h3(sectionedit82#textonly). textonly

* "comments_invite":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_invite

h3(sectionedit83#this_section). this_section

* "author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=author
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category1":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category1
* "category2":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category2
* "popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup

h3(sectionedit84#thumbnail). thumbnail

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image

h3(sectionedit85#time). time

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

h3(sectionedit86#title). title

* "author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=author
* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb
* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category1":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category1
* "category2":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category2
* "css":/home/www/zendstudio/dokuwiki/bin/doku.php?id=css
* "email":/home/www/zendstudio/dokuwiki/bin/doku.php?id=email
* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "file_download_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_category
* "file_download_author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_author
* "file_download_name":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_name
* "image_author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_author
* "link_author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_author
* "link_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_category
* "link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link
* "newer":/home/www/zendstudio/dokuwiki/bin/doku.php?id=newer
* "older":/home/www/zendstudio/dokuwiki/bin/doku.php?id=older
* "permlink":/home/www/zendstudio/dokuwiki/bin/doku.php?id=permlink
* "section":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section

h3(sectionedit87#type). type

* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "if_author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_author
* "if_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_category
* "page_url":/home/www/zendstudio/dokuwiki/bin/doku.php?id=page_url
* "popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup

h3(sectionedit88#url). url

* "txp_die":/home/www/zendstudio/dokuwiki/bin/doku.php?id=txp_die

h3(sectionedit89#value). value

* "if_custom_field":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_custom_field
* "if_variable":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_variable
* "variable":/home/www/zendstudio/dokuwiki/bin/doku.php?id=variable

h3(sectionedit90#version). version

* "if_plugin":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_plugin

h3(sectionedit91#width). width

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image

h3(sectionedit92#wraptag). wraptag

"HTML tag":http://www.w3.org/TR/html4/intro/sgmltut.html#h-3.2.1 (without brackets) to wrap around output. Default value is unset, except where shown in parentheses.

<ul>
<li>"article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article</li>
<li>"article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom</li>
<li>"article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image</li>
<li><p>"breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb (</p>
bc. p


<p>)</p></li>
<li>"category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category</li>
<li>"category1":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category1</li>
<li>"category2":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category2</li>
<li>"category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list</li>
<li>"comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments</li>
<li><p>"comments_error":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_error (</p>
bc. div


<p>)</p></li>
<li>"comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form</li>
<li>"comments_invite":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_invite</li>
<li>"comments_preview":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_preview</li>
<li>"expires":/home/www/zendstudio/dokuwiki/bin/doku.php?id=expires</li>
<li>"feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link</li>
<li>"image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image</li>
<li>"image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index</li>
<li>"images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images</li>
<li>"file_download_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_category</li>
<li>"file_download_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_description</li>
<li>"file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list</li>
<li>"link_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_category</li>
<li>"link_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_description</li>
<li>"link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link</li>
<li>"linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist</li>
<li>"modified":/home/www/zendstudio/dokuwiki/bin/doku.php?id=modified</li>
<li>"popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup</li>
<li>"posted":/home/www/zendstudio/dokuwiki/bin/doku.php?id=posted</li>
<li>"recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles</li>
<li>"recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments</li>
<li>"related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles</li>
<li><p>"search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input (</p>
bc. p


<p>)</p></li>
<li>"section":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section</li>
<li>"section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list</li>
<li>"thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail</li>
</ul>
~~~

