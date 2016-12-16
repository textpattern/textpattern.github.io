---
layout: document
category: Tags
published: true
title: "Tag attributes cross-reference"
description: This cross-reference makes clear the different Textpattern tags associated with a given attribute.
---

# Tag attributes cross-reference [todo:pw]

This cross-reference makes clear the different Textpattern tags associated with a given attribute. For each attribute, the associated tags are listed underneath it.

### active_class

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to the 'active' or current link in a list.

* [category_list](category_list)
* [section_list](section_list)

### allowoverride

Used to disable assigned override forms. Works within article lists and single article display. Both article tags use `1` (yes) as default.

* [article](article)
* [article_custom](article_custom)

### anchor

* [comment_permlink](comment_permlink)

### author

* [article_custom](article_custom)
* [images](images)
* [linklist](linklist)
* [file_download_list](file_download_list)

### auto_detect

* [images](images)
* [linklist](linklist)
* [file_download_list](file_download_list)

### break

"HTML tag":http://www.w3.org/TR/html4/intro/sgmltut.html#h-3.2.1 (without brackets) or string used to separate list items. Suggested values include `br` and `hr` for presentational markup, or `li` if semantic markup is preferred. Textpattern cares for the correct nesting of tags in either case. Default is `br` (except for tags marked by an asterisk, which default to unset).

* [article](article) &#42;
* [article_custom](article_custom) &#42;
* [category_list](category_list)
* [image_index](image_index)
* [comments](comments)
* [comments_error](comments_error)
* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist) &#42;
* [recent_articles](recent_articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [search_result_excerpt](search_result_excerpt)
* [section_list](section_list)

### breakclass

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to `break` (when value supplied is a tag).

* [comments](comments)

### button

* [search_input](search_input)

### category

* [article_custom](article_custom)
* [feed_link](feed_link)
* [image_index](image_index)
* [link_feed_link](link_feed_link)
* [linklist](linklist)
* [recent_articles](recent_articles)
* [file_download_list](file_download_list)

### categories

* [category_list](category_list)

### children

* [category_list](category_list)

### class

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to the specified [wraptag](#wraptag). Tags marked with an asterisk use the tag name as the class name by default. Otherwise the default is empty.

* [article](article)
* [article_custom](article_custom)
* [article_image](article_image)
* [breadcrumb](breadcrumb)
* [category](category)
* [category1](category1)
* [category2](category2)
* [category_list](category_list) &#42;
* [comments](comments) &#42;
* [comments_error](comments_error) &#42;
* [comments_invite](comments_invite) &#42;
* [comments_form](comments_form) &#42;
* [comments_preview](comments_preview) &#42;
* [expires](expires)
* [image](image)
* [image_index](image_index)
* [feed_link](feed_link)
* [file_download_category](file_download_category)
* [file_download_description](file_download_description)
* [file_download_list](file_download_list) &#42;
* [images](images) &#42;
* [link_category](link_category)
* [link_description](link_description)
* [link_feed_link](link_feed_link) &#42;
* [link_to_home](link_to_home)
* [linklist](linklist) &#42;
* [modified](modified)
* [permlink](permlink)
* [popup](popup)
* [posted](posted)
* [recent_articles](recent_articles) &#42;
* [related_articles](related_articles) &#42;
* [recent_comments](recent_comments) &#42;
* [search_input](search_input) &#42;
* [section](section)
* [section_list](section_list) &#42;
* [thumbnail](thumbnail)

### customfieldname

In your tag, replace `customfieldname` with the actual name of the desired custom field (see also @@Important notes on creating custom field names@@.

* [article](article)
* [article_custom](article_custom)

### decimals

* [file_download_size](file_download_size)

### default

* [custom_field](custom_field)

### default_title

* [section_list](section_list)

### email

* [email](email)

### escape

Escape HTML entities.

* [article_image](article_image)
* [author_email](author_email)
* [custom_field](custom_field)
* [file_download_description](file_download_description)
* [image](image)
* [image_info](image_info)
* [link_description](link_description)
* [link_name](link_name)
* [newer](newer)
* [older](older)
* [thumbnail](thumbnail)

### excerpted

* [article_custom](article_custom)

### exclude

* [category_list](category_list)
* [section_list](section_list)

### expired

* [article_custom](article_custom)

### extension

* [images](images)

### filename

* [file_download](file_download)
* [file_download_link](file_download_link)
* [file_download_name](file_download_name)

### flavor

* [feed_link](feed_link)
* [link_feed_link](link_feed_link

### forgetlabel

* [comments_form](comments_form

### form

Used to format content for display. See @@Form templates@@ for further explanation.

* [article](article)
* [article_custom](article_custom)
* [category_list](category_list)
* [comments](comments)
* [comments_form](comments_form)
* [comments_preview](comments_preview)
* [file_download](file_download)
* [file_download_list](file_download_list)
* [linklist](linklist)
* [output_form](output_form)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [search_input](search_input)
* [section_list](section_list)

### format

* [comment_time](comment_time)
* [css](css)
* [expires](expires)
* [feed_link](feed_link)
* [file_download_created](file_download_created)
* [file_download_modified](file_download_modified)
* [file_download_size](file_download_size)
* [link_date](link_date)
* [link_feed_link](link_feed_link)
* [modified](modified)
* [posted](posted)

### frontpage

* [article_custom](article_custom)

### gmt

* [comment_time](comment_time)
* [expires](expires)
* [link_date](link_date)
* [modified](modified)
* [posted](posted)

### height

* [article_image](article_image)
* [image](image)

### hilight

* [search_result_excerpt](search_result_excerpt)

### html_id

"HTML id attribute":http://www.w3.org/TR/html4/struct/global.html#adef-id to be applied to the [wraptag](#wraptag).

* [article_image](article_image)
* [image](image)
* [search_input](search_input)
* [thumbnail](thumbnail)

### id

* [article_custom](article_custom)
* [file_download](file_download)
* [file_download_link](file_download_link)
* [file_download_list](file_download_list)
* [if_article_id](if_article_id)
* [image](image)
* [images](images)
* [permlink](permlink)
* [thumbnail](thumbnail)

### include_default

* [section_list](section_list)

### item

* [text](text)

### isize

"HTML size attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-size-INPUT to be applied to "HTML form input":http://www.w3.org/TR/html4/interact/forms.html#edef-INPUT output.

* [comments_form](comments_form)

### keywords

* [article](article)
* [article_custom](article_custom)
* [if_keywords](if_keywords

### label

This string will be prepended to the output. When using a [wraptag](#wraptag) value of either `ol` or `ul`, the label will be the first list item. Default is unset (except where shown in parentheses).

* [article](article)
* [article_custom](article_custom)
* [breadcrumb](breadcrumb) (Site name)
* [category_list](category_list)
* [feed_link](feed_link)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [images](images)
* [link_category](link_category)
* [link_description](link_description)
* [link_feed_link](link_feed_link)
* [linklist](linklist)
* [popup](popup) (Browse)
* [recent_articles](recent_articles) (Recent Articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [search_input](search_input) (Search)
* [section_list](section_list)

### labeltag

"HTML tag":http://www.w3.org/TR/html4/intro/sgmltut.html#h-3.2.1 (without brackets) to wrap around "label](attributes_cross-reference#label. Default is unset.

* [article](article)
* [article_custom](article_custom)
* [category_list](category_list)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [images](images)
* [link_category](link_category)
* [link_description](link_description)
* [linklist](linklist)
* [recent_articles](recent_articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [section_list](section_list)

### lang

* [comment_time](comment_time)
* [expires](expires)
* [link_date](link_date)
* [modified](modified)
* [posted](posted)

### limit

* [article](article)
* [article_custom](article_custom)
* [comments](comments)
* [feed_link](feed_link)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [linklist](linklist)
* [recent_articles](recent_articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [search_result_excerpt](search_result_excerpt)

### link

* [author](author)
* [breadcrumb](breadcrumb)
* [category](category)
* [category1](category1)
* [category2](category2)
* [comment_name](comment_name)
* [section](section)
* [thumbnail](thumbnail)

### linkclass

"HTML class attribute":http://www.w3.org/TR/html4/struct/global.html#adef-class to be applied to links.

* [breadcrumb](breadcrumb)

### linktext

* [email](email)

### listform

See "forms_explained](forms_explained.

* [article](article)

### login

* [password_protect](password_protect

### match

* [related_articles](related_articles)
* [search_input](search_input)

### media

* [css](css

### msgcols

"HTML cols attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-cols-TEXTAREA to be applied to "HTML form textarea":http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA output.

* [comments_form](comments_form)

### msgrows

"HTML rows attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-rows-TEXTAREA to be applied to "HTML form textarea":http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA output.

* [comments_form](comments_form)

### msgstyle

"HTML style attribute":http://www.w3.org/TR/html4/present/styles.html#style-element to be applied to "HTML form textarea":http://www.w3.org/TR/html4/interact/forms.html#edef-TEXTAREA output. Recommended that you use CSS via textarea's class or id attribute instead.

* [comments_form](comments_form)

### month

* [article_custom](article_custom)

### no_widow

* [recent_articles](recent_articles)
* [related_articles](related_articles)
* [title](title)

### name

* [category](category)
* [css](css)
* [custom_field](custom_field)
* [if_article_author](if_article_author)
* [if_article_category](if_article_category)
* [if_article_section](if_article_section)
* [if_author](if_author)
* [if_custom_field](if_custom_field)
* [if_category](if_category)
* [if_plugin](if_plugin)
* [if_section](if_section)
* [if_variable](if_variable)
* [image](image)
* [thumbnail](thumbnail)
* [section](section)
* [variable](variable)

### number

* [if_article_category](if_article_category)

### offset

* [article](article)
* [article_custom](article_custom)
* [comments](comments)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [linklist](linklist)
* [recent_comments](recent_comments)

### pageby

* [article](article)
* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist)

### parent

* [category_list](category_list)

### pass

* [password_protect](password_protect)

### pgonly

Used to return pagination statistics without rendering the article list. Care must be taken to remain consistent with article tag attributes to keep statistics accurate.

* [article](article)
* [article_custom](article_custom)

### poplink

* [thumbnail](thumbnail)

### previewlabel

* [comments_form](comments_form)

### realname

* [images](images)
* [linklist](linklist)
* [file_download_list](file_download_list)

### rel

"HTML rel attribute":http://www.w3.org/TR/html4/struct/links.html#adef-rel to be applied to links.

* [css](css)
* [link](link)
* [linkdesctitle](linkdesctitle)

### rememberlabel

* [comments_form](comments_form)

### searchall

* [article](article)

### searchform

See @@Forms templates@@ for further explanation.

* [article](article)

### searchsticky

* [article](article)

### section

* [article_custom](article_custom)
* [author](author)
* [category](category)
* [category1](category1)
* [category2](category2)
* [category_list](category_list)
* [feed_link](feed_link)
* [popup](popup)
* [related_articles](related_articles)
* [recent_articles](recent_articles)
* [search_input](search_input)

### sections

* [section_list](section_list)

### separator

* [breadcrumb](breadcrumb)
* [page_title](page_title)

### showalways

* [comments_invite](comments_invite)
* [link_to_next](link_to_next)
* [link_to_prev](link_to_prev)
* [newer](newer)
* [older](older)

### showcount

* [comments_invite](comments_invite)

### show_preview

* [comments_form](comments_form)

### size

"HTML size attribute":http://www.w3.org/TR/html4/interact/forms.html#adef-size-INPUT to be applied to "HTML form input":http://www.w3.org/TR/html4/interact/forms.html#edef-INPUT output.

* [search_input](search_input)

### sort

How to sort the resulting list. Available and default values vary by tag, but multiple, comma-separated values can be used. Each value can be specified as either `asc` (ascending) or `desc` (descending) order.

* [article](article)
* [article_custom](article_custom)
* [category_list](category_list)
* [comments](comments)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [linklist](linklist)
* [recent_articles](recent_articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [section_list](section_list)

### status

* [article](article)
* [article_custom](article_custom)
* [file_download_list](file_download_list)
* [if_status](if_status)

### style

* [article_image](article_image)
* [image](image)
* [permlink](permlink)
* [thumbnail](thumbnail)

### submitlabel

* [comments_form](comments_form)

### text

* [search_result_count](search_result_count)

### textonly

* [comments_invite](comments_invite)

### this_section

* [author](author)
* [category_list](category_list)
* [category](category)
* [category1](category1)
* [category2](category2)
* [popup](popup)

### thumbnail

* [article_image](article_image)

### time

* [article](article)
* [article_custom](article_custom)

### title

* [author](author)
* [breadcrumb](breadcrumb)
* [category](category)
* [category1](category1)
* [category2](category2)
* [css](css)
* [email](email)
* [feed_link](feed_link)
* [file_download_category](file_download_category)
* [file_download_author](file_download_author)
* [file_download_name](file_download_name)
* [image_author](image_author)
* [link_author](link_author)
* [link_category](link_category)
* [link_feed_link](link_feed_link)
* [newer](newer)
* [older](older)
* [permlink](permlink)
* [section](section)

### type

* [category](category)
* [category_list](category_list)
* [if_author](if_author)
* [if_category](if_category)
* [page_url](page_url)
* [popup](popup)

### url

* [txp_die](txp_die)

### value

* [if_custom_field](if_custom_field)
* [if_variable](if_variable)
* [variable](variable)

### version

* [if_plugin](if_plugin)

### width

* [article_image](article_image)
* [image](image)

### wraptag

"HTML tag":http://www.w3.org/TR/html4/intro/sgmltut.html#h-3.2.1 (without brackets) to wrap around output. Default value is unset, except where shown in parentheses.

* [article](article)
* [article_custom](article_custom)
* [article_image](article_image)
* [breadcrumb](breadcrumb) (`p`)
* [category](category)
* [category1](category1)
* [category2](category2)
* [category_list](category_list)
* [comments](comments)
* [comments_error](comments_error) (`div`)
* [comments_form](comments_form)
* [comments_invite](comments_invite)
* [comments_preview](comments_preview)
* [expires](expires)
* [feed_link](feed_link)
* [image](image)
* [image_index](image_index)
* [images](images)
* [file_download_category](file_download_category)
* [file_download_description](file_download_description)
* [file_download_list](file_download_list)
* [link_category](link_category)
* [link_description](link_description)
* [link_feed_link](link_feed_link)
* [linklist](linklist)
* [modified](modified)
* [popup](popup)
* [posted](posted)
* [recent_articles](recent_articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [search_input](search_input) (`p`)
* [section](section)
* [section_list](section_list)
* [thumbnail](thumbnail)
