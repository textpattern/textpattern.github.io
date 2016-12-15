---
layout: document
category: Tags
published: true
title: "Tag attributes cross-reference"
description: This cross-reference makes clear the different Textpattern tags associated with a given attribute.
---

# Tag attributes cross-reference [todo:pw]

This cross-reference makes clear the different Textpattern tags associated with a given attribute. For each attribute, the associated tags are listed underneath it.

## active_class

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to the 'active' or current link in a list.

* [category_list](category_list)
* [section_list](section_list)

## allowoverride

Used to disable assigned override forms. Works within article lists and single article display. Both article tags use `1` (yes) as default.

* [article](article)
* [article_custom](article_custom)

## anchor

* [comment_permlink](comment_permlink)

## author

* [article_custom](article_custom)
* [images](images)
* [linklist](linklist)
* [file_download_list](file_download_list)

## auto_detect

* [images](images)
* [linklist](linklist)
* [file_download_list](file_download_list)

## break

"HTML tag":http://www.w3.org/TR/html4/intro/sgmltut.html#h-3.2.1 (without brackets) or string used to separate list items. Suggested values include `br` and `hr` for presentational markup, or `li` if semantic markup is preferred. Textpattern cares for the correct nesting of tags in either case. Default is `br` (except for tags marked by an asterisk, which default to unset).

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

## breakclass

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to `break` (when value supplied is a tag).

* [comments](comments)

## button

* [search_input](search_input)

## category

* [article_custom](article_custom)
* [feed_link](feed_link)
* [image_index](image_index)
* [link_feed_link](link_feed_link)
* [linklist](linklist)
* [recent_articles](recent_articles)
* [file_download_list](file_download_list)

## categories

* [category_list](category_list)

## children

* [category_list](category_list)

## class

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to the specified [wraptag](#wraptag). Tags marked with an asterisk use the tag name as the class name by default. Otherwise the default is empty.

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

## customfieldname

In your tag, replace `customfieldname` with the actual name of the desired custom field (see also "Important notes on creating custom field names":/home/www/zendstudio/dokuwiki/bin/doku.php?id=advanced_preferences#custom_fields).

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

## decimals

* "file_download_size":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_size

## default

* "custom_field":/home/www/zendstudio/dokuwiki/bin/doku.php?id=custom_field

## default_title

* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

## email

* "email":/home/www/zendstudio/dokuwiki/bin/doku.php?id=email

## escape

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

## excerpted

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

## exclude

* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

## expired

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

## extension

* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images

## filename

* "file_download":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download
* "file_download_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_link
* "file_download_name":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_name

## flavor

* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link

## forgetlabel

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

## form

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

## format

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

## frontpage

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

## gmt

* "comment_time":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comment_time
* "expires":/home/www/zendstudio/dokuwiki/bin/doku.php?id=expires
* "link_date":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_date
* "modified":/home/www/zendstudio/dokuwiki/bin/doku.php?id=modified
* "posted":/home/www/zendstudio/dokuwiki/bin/doku.php?id=posted

## height

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image

## hilight

* "search_result_excerpt":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_result_excerpt

## html_id

"HTML id attribute":http://www.w3.org/TR/html4/struct/global.html#adef-id to be applied to the **wraptag**.

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

## id

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "file_download":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download
* "file_download_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_link
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "if_article_id":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_article_id
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "permlink":/home/www/zendstudio/dokuwiki/bin/doku.php?id=permlink
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

## include_default

* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

## item

* "text":/home/www/zendstudio/dokuwiki/bin/doku.php?id=text

## isize

"HTML size attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-size-INPUT to be applied to "HTML form input":http://www.w3.org/TR/html4/interact/forms.html#edef-INPUT output.

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

## keywords

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "if_keywords":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_keywords

## label

This string will be prepended to the output. When using a [wraptag](#wraptag) value of either `ol` or `ul`, the label will be the first list item. Default is unset (except where shown in parentheses).

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb (_Site name_)
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "link_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_category
* "link_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_description
* "link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup (Browse)
* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles (Recent Articles)
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input (Search)
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

## labeltag

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

## lang

* "comment_time":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comment_time
* "expires":/home/www/zendstudio/dokuwiki/bin/doku.php?id=expires
* "link_date":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_date
* "modified":/home/www/zendstudio/dokuwiki/bin/doku.php?id=modified
* "posted":/home/www/zendstudio/dokuwiki/bin/doku.php?id=posted

## limit

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

## link

* "author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=author
* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb
* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category1":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category1
* "category2":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category2
* "comment_name":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comment_name
* "section":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

## linkclass

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to links.

* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb

## linktext

* "email":/home/www/zendstudio/dokuwiki/bin/doku.php?id=email

## listform

See "forms_explained":/home/www/zendstudio/dokuwiki/bin/doku.php?id=forms_explained.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article

## login

* "password_protect":/home/www/zendstudio/dokuwiki/bin/doku.php?id=password_protect

## match

* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input

## media

* "css":/home/www/zendstudio/dokuwiki/bin/doku.php?id=css

## msgcols

"HTML cols attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-cols-TEXTAREA to be applied to "HTML form textarea":http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA output.

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

## msgrows

"HTML rows attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-rows-TEXTAREA to be applied to "HTML form textarea":http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA output.

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

## msgstyle

"HTML style attribute":http://www.w3.org/TR/html4/present/styles.html#style-element to be applied to "HTML form textarea":http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA output. Recommended that you use CSS via textarea's class or id attribute instead.

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

## month

* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

## no_widow

* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "title":/home/www/zendstudio/dokuwiki/bin/doku.php?id=title

## name

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

## number

* "if_article_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_article_category

## offset

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments

## pageby

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist

## parent

* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list

## pass

* "password_protect":/home/www/zendstudio/dokuwiki/bin/doku.php?id=password_protect

## pgonly

Used to return pagination statistics without rendering the article list. Care must be taken to remain consistent with article tag attributes to keep statistics accurate.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

## poplink

* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

## previewlabel

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

## realname

* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list

## rel

"HTML rel attribute":http://www.w3.org/TR/html4/struct/links.html#adef-rel to be applied to links.

* "css":/home/www/zendstudio/dokuwiki/bin/doku.php?id=css
* "link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link
* "linkdesctitle":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linkdesctitle

## rememberlabel

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

## searchall

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article

## searchform

See "forms_explained":/home/www/zendstudio/dokuwiki/bin/doku.php?id=forms_explained.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article

## searchsticky

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article

## section

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

## sections

* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list

## separator

* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb
* "page_title":/home/www/zendstudio/dokuwiki/bin/doku.php?id=page_title

## showalways

* "comments_invite":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_invite
* "link_to_next":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_to_next
* "link_to_prev":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_to_prev
* "newer":/home/www/zendstudio/dokuwiki/bin/doku.php?id=newer
* "older":/home/www/zendstudio/dokuwiki/bin/doku.php?id=older

## showcount

* "comments_invite":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_invite

## show_preview

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

## size

"HTML size attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-size-INPUT to be applied to "HTML form input":http://www.w3.org/TR/html4/interact/forms.html#edef-INPUT output.

* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input

## sort

How to sort the resulting list. Available and default values vary by tag, but multiple, comma-separated values can be used. Each value can be specified as either `asc` (ascending) or `desc` (descending) order.

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

## status

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "if_status":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_status

## style

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "permlink":/home/www/zendstudio/dokuwiki/bin/doku.php?id=permlink
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail

## submitlabel

* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form

## text

* "search_result_count":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_result_count

## textonly

* "comments_invite":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_invite

## this_section

* "author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=author
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category1":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category1
* "category2":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category2
* "popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup

## thumbnail

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image

## time

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom

## title

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

## type

* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "if_author":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_author
* "if_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_category
* "page_url":/home/www/zendstudio/dokuwiki/bin/doku.php?id=page_url
* "popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup

## url

* "txp_die":/home/www/zendstudio/dokuwiki/bin/doku.php?id=txp_die

## value

* "if_custom_field":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_custom_field
* "if_variable":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_variable
* "variable":/home/www/zendstudio/dokuwiki/bin/doku.php?id=variable

## version

* "if_plugin":/home/www/zendstudio/dokuwiki/bin/doku.php?id=if_plugin

## width

* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image

## wraptag

"HTML tag":http://www.w3.org/TR/html4/intro/sgmltut.html#h-3.2.1 (without brackets) to wrap around output. Default value is unset, except where shown in parentheses.

* "article":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article
* "article_custom":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_custom
* "article_image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=article_image
* "breadcrumb":/home/www/zendstudio/dokuwiki/bin/doku.php?id=breadcrumb (`p`)
* "category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category
* "category1":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category1
* "category2":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category2
* "category_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=category_list
* "comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments
* "comments_error":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_error (`div`)
* "comments_form":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_form
* "comments_invite":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_invite
* "comments_preview":/home/www/zendstudio/dokuwiki/bin/doku.php?id=comments_preview
* "expires":/home/www/zendstudio/dokuwiki/bin/doku.php?id=expires
* "feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=feed_link
* "image":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image
* "image_index":/home/www/zendstudio/dokuwiki/bin/doku.php?id=image_index
* "images":/home/www/zendstudio/dokuwiki/bin/doku.php?id=images
* "file_download_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_category
* "file_download_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_description
* "file_download_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=file_download_list
* "link_category":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_category
* "link_description":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_description
* "link_feed_link":/home/www/zendstudio/dokuwiki/bin/doku.php?id=link_feed_link
* "linklist":/home/www/zendstudio/dokuwiki/bin/doku.php?id=linklist
* "modified":/home/www/zendstudio/dokuwiki/bin/doku.php?id=modified
* "popup":/home/www/zendstudio/dokuwiki/bin/doku.php?id=popup
* "posted":/home/www/zendstudio/dokuwiki/bin/doku.php?id=posted
* "recent_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_articles
* "recent_comments":/home/www/zendstudio/dokuwiki/bin/doku.php?id=recent_comments
* "related_articles":/home/www/zendstudio/dokuwiki/bin/doku.php?id=related_articles
* "search_input":/home/www/zendstudio/dokuwiki/bin/doku.php?id=search_input (`p`)
* "section":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section
* "section_list":/home/www/zendstudio/dokuwiki/bin/doku.php?id=section_list
* "thumbnail":/home/www/zendstudio/dokuwiki/bin/doku.php?id=thumbnail
