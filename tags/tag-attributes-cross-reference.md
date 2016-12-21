---
layout: document
category: Tags
published: true
title: "Tag attributes cross-reference"
description: This cross-reference makes clear the different Textpattern tags associated with a given attribute.
---

# Tag attributes cross-reference

This cross-reference document makes clear the different Textpattern tags associated with a given attribute.

For each attribute, the associated tags are listed underneath it.

### active_class

[HTML class attribute](https://www.w3.org/TR/html5/dom.html#classes) to be applied to the 'active' or current link in a list.

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
* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist)

### auto_detect

* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist)

### break

HTML tag (without brackets) or string used to separate list items. Suggested values include `br` and `hr` for presentational markup, or `li` if semantic markup is preferred. Textpattern cares for the correct nesting of tags in either case. Default is `br` (except for tags marked <span class="warning">●</span>, which default to unset).

* [article](article) <span class="warning">●</span>
* [article_custom](article_custom) <span class="warning">●</span>
* [authors](authors)
* [category_list](category_list)
* [comments](comments)
* [comments_error](comments_error)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [image_info](image_info)
* [images](images)
* [linklist](linklist) <span class="warning">●</span>
* [recent_articles](recent_articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [search_result_excerpt](search_result_excerpt)
* [section_list](section_list)

### button

* [search_input](search_input)

### categories

* [category_list](category_list)

### category

* [article_custom](article_custom)
* [feed_link](feed_link)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [images](images)
* [link_feed_link](link_feed_link)
* [linklist](linklist)
* [recent_articles](recent_articles)

### children

* [category_list](category_list)

### class

[HTML class attribute](https://www.w3.org/TR/html5/dom.html#classes) to be applied to the specified [wraptag](#wraptag). Tags marked with <span class="warning">●</span> use the tag name as the class name by default. Otherwise the default is empty.

* [article](article)
* [article_custom](article_custom)
* [article_image](article_image)
* [authors](authors)
* [breadcrumb](breadcrumb)
* [category](category)
* [category1](category1)
* [category2](category2)
* [category_list](category_list) <span class="warning">●</span>
* [comments](comments) <span class="warning">●</span>
* [comments_error](comments_error) <span class="warning">●</span>
* [comments_form](comments_form) <span class="warning">●</span>
* [comments_invite](comments_invite) <span class="warning">●</span>
* [comments_preview](comments_preview) <span class="warning">●</span>
* [expires](expires)
* [feed_link](feed_link)
* [file_download_author](file_download_author)
* [file_download_category](file_download_category)
* [file_download_description](file_download_description)
* [file_download_list](file_download_list) <span class="warning">●</span>
* [image](image)
* [image_author](image_author)
* [image_index](image_index)
* [image_info](image_info)
* [images](images) <span class="warning">●</span>
* [link_author](link_author)
* [link_category](link_category)
* [link_description](link_description)
* [link_feed_link](link_feed_link) <span class="warning">●</span>
* [linklist](linklist) <span class="warning">●</span>
* [modified](modified)
* [permlink](permlink)
* [popup](popup)
* [posted](posted)
* [recent_articles](recent_articles) <span class="warning">●</span>
* [recent_comments](recent_comments) <span class="warning">●</span>
* [related_articles](related_articles) <span class="warning">●</span>
* [search_input](search_input)
* [section](section)
* [section_list](section_list) <span class="warning">●</span>
* [thumbnail](thumbnail)

### cols

HTML [cols attribute](https://www.w3.org/TR/html5/forms.html#attr-textarea-cols) to be applied to HTML form [textarea tag](https://www.w3.org/TR/html5/forms.html#the-textarea-element).

* [comment_message_input](comment_message_input)

### customfieldname

In your tag, replace `customfieldname` with the actual name of the desired custom field (see also @@Important notes on creating custom field names@@).

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
* [author](author)
* [author_email](author_email)
* [custom_field](custom_field)
* [file_download_description](file_download_description)
* [image](image)
* [image_info](image_info)
* [link_description](link_description)
* [link_name](link_name)
* [meta_author](meta_author)
* [meta_description](meta_description)
* [meta_keywords](meta_keywords)
* [newer](newer)
* [older](older)
* [text](text)
* [thumbnail](thumbnail)

### excerpted

* [article_custom](article_custom)

### exclude

* [article_custom](article_custom)
* [category_list](category_list)
* [section_list](section_list)

### expired

* [article_custom](article_custom)

### extension

* [images](images)

### filename

* [file_download](file_download)
* [file_download_link](file_download_link)

### flavor

* [feed_link](feed_link)
* [link_feed_link](link_feed_link)

### forgetlabel

* [comment_remember](comment_remember)

### form

Used to format content for display. See @@Form templates@@ for further explanation.

* [article](article)
* [article_custom](article_custom)
* [authors](authors)
* [category_list](category_list)
* [comments](comments)
* [comments_form](comments_form)
* [comments_preview](comments_preview)
* [file_download](file_download)
* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist)
* [output_form](output_form)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [search_input](search_input)
* [section_list](section_list)

### format

* [author](author)
* [comment_time](comment_time)
* [css](css)
* [expires](expires)
* [feed_link](feed_link)
* [file_download_created](file_download_created)
* [file_download_modified](file_download_modified)
* [file_download_size](file_download_size)
* [image_date](image_date)
* [link_date](link_date)
* [link_feed_link](link_feed_link)
* [meta_author](meta_author)
* [meta_description](meta_description)
* [meta_keywords](meta_keywords)
* [modified](modified)
* [posted](posted)
* [search_result_date](search_result_date)

### gmt

* [comment_time](comment_time)
* [expires](expires)
* [link_date](link_date)
* [modified](modified)
* [posted](posted)

### group

* [authors](authors)

### height

* [article_image](article_image)
* [image](image)
* [thumbnail](thumbnail)

### hilight

* [search_result_excerpt](search_result_excerpt)

### html_id

[HTML id attribute](https://www.w3.org/TR/html5/dom.html#the-id-attribute) to be applied to the [wraptag](#wraptag).

* [article_image](article_image)
* [category_list](category_list)
* [image](image)
* [images](images)
* [search_input](search_input)
* [section_list](section_list)
* [thumbnail](thumbnail)

### id

* [article_custom](article_custom)
* [file_download](file_download)
* [file_download_link](file_download_link)
* [file_download_list](file_download_list)
* [if_article_id](if_article_id)
* [image](image)
* [image_date](image_date)
* [image_info](image_info)
* [image_url](image_url)
* [images](images)
* [link](link)
* [linklist](linklist)
* [permlink](permlink)
* [thumbnail](thumbnail)

### include_default

* [section_list](section_list)

### item

* [text](text)

### keywords

* [article](article)
* [article_custom](article_custom)
* [if_keywords](if_keywords)

### label

This string will be prepended to the output. When using a [wraptag](#wraptag) value of either `ol` or `ul`, the label will be the first list item. Default is unset (except where shown in parentheses).

* [article](article)
* [article_custom](article_custom)
* [authors](authors)
* [breadcrumb](breadcrumb) (Site name)
* [category_list](category_list)
* [comment_submit](comment_submit)
* [comments_preview](comments_preview)
* [feed_link](feed_link)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [images](images)
* [link_category](link_category)
* [link_description](link_description)
* [link_feed_link](link_feed_link)
* [linklist](linklist)
* [popup](popup) (Browse)
* [recent_articles](recent_articles) (Recent articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [search_input](search_input) (Search)
* [section_list](section_list)

### labeltag

HTML tag (without brackets) to wrap around [label](#label). Default is unset.

* [article](article)
* [article_custom](article_custom)
* [authors](authors)
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
* [authors](authors)
* [category_list](category_list)
* [comments](comments)
* [feed_link](feed_link)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [images](images)
* [linklist](linklist)
* [recent_articles](recent_articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [search_result_excerpt](search_result_excerpt)
* [section_list](section_list)

### link

* [author](author)
* [author_email](author_email)
* [breadcrumb](breadcrumb)
* [category](category)
* [category1](category1)
* [category2](category2)
* [comment_name](comment_name)
* [file_download_author](file_download_author)
* [image_author](image_author)
* [image_url](image_url)
* [link_author](link_author)
* [section](section)
* [thumbnail](thumbnail)

### link_rel

* [thumbnail](thumbnail)

### linkclass

[HTML class attribute](https://www.w3.org/TR/html5/dom.html#classes) to be applied to links.

* [breadcrumb](breadcrumb)

### linktext

* [email](email)

### listform

See @@Forms templates@@ for further explanation.

* [article](article)

### login

* [password_protect](password_protect)

### match

* [if_custom_field](if_custom_field)
* [related_articles](related_articles)
* [search_input](search_input)

### max

* [if_search_results](if_search_results)

### media

* [css](css)

### min

* [if_search_results](if_search_results)

### month

* [article_custom](article_custom)

### msg

* [txp_die](txp_die)

### name

* [authors](authors)
* [category](category)
* [css](css)
* [custom_field](custom_field)
* [if_article_author](if_article_author)
* [if_article_category](if_article_category)
* [if_article_section](if_article_section)
* [if_author](if_author)
* [if_category](if_category)
* [if_custom_field](if_custom_field)
* [if_plugin](if_plugin)
* [if_section](if_section)
* [if_variable](if_variable)
* [image](image)
* [image_date](image_date)
* [image_info](image_info)
* [image_url](image_url)
* [images](images)
* [link](link)
* [section](section)
* [thumbnail](thumbnail)
* [variable](variable)

### no_widow

* [recent_articles](recent_articles)
* [related_articles](related_articles)
* [title](title)

### number

* [if_article_category](if_article_category)

### offset

* [article](article)
* [article_custom](article_custom)
* [authors](authors)
* [category_list](category_list)
* [comments](comments)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [images](images)
* [linklist](linklist)
* [recent_articles](recent_articles)
* [recent_comments](recent_comments)
* [related_articles](related_articles)
* [section_list](section_list)

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

### poplink

* [thumbnail](thumbnail)

### realname

* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist)

### rel

HTML [rel attribute](https://www.w3.org/TR/html5/document-metadata.html#attr-link-rel) to be applied to links.

* [css](css)
* [link](link)
* [linkdesctitle](linkdesctitle)

### rememberlabel

* [comment_remember](comment_remember)

### rows

HTML [rows attribute](https://www.w3.org/TR/html5/forms.html#attr-textarea-rows) to be applied to HTML form [textarea tag](https://www.w3.org/TR/html5/forms.html#the-textarea-element).

* [comment_message_input](comment_message_input)

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
* [file_download_author](file_download_author)
* [image_author](image_author)
* [link_author](link_author)
* [popup](popup)
* [recent_articles](recent_articles)
* [related_articles](related_articles)
* [search_input](search_input)

### sections

* [section_list](section_list)

### separator

* [breadcrumb](breadcrumb)
* [if_custom_field](if_custom_field)
* [meta_keywords](meta_keywords)
* [page_title](page_title)

### showalways

* [comments_invite](comments_invite)
* [link_to_next](link_to_next)
* [link_to_prev](link_to_prev)
* [newer](newer)
* [older](older)

### showcount

* [comments_invite](comments_invite)

### size

HTML [size attribute](https://www.w3.org/TR/html5/forms.html#the-size-attribute) to be applied to HTML form [input tags](https://www.w3.org/TR/html5/forms.html#the-input-element).

* [comment_email_input](comment_email_input)
* [comment_name_input](comment_name_input)
* [comment_web_input](comment_web_input)
* [search_input](search_input)

### sort

How to sort the resulting list. Available and default values vary by tag, but multiple, comma-separated values can be used. Each value can be specified as either `asc` (ascending) or `desc` (descending) order.

* [article](article)
* [article_custom](article_custom)
* [authors](authors)
* [category_list](category_list)
* [comments](comments)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [images](images)
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
* [txp_die](txp_die)

### style

HTML [style attribute](https://www.w3.org/TR/html5/dom.html#the-style-attribute) to be applied to HTML tag. Recommended that you use CSS via `class` or `id` attribute instead.

* [article_image](article_image)
* [image](image)
* [permlink](permlink)
* [thumbnail](thumbnail)

### text

* [search_result_count](search_result_count)

### textonly

* [comments_invite](comments_invite)

### this_section

* [author](author)
* [category](category)
* [category1](category1)
* [category2](category2)
* [category_list](category_list)
* [file_download_author](file_download_author)
* [image_author](image_author)
* [link_author](link_author)
* [popup](popup)

### thumbnail

* [article_image](article_image)
* [image_url](image_url)
* [images](images)

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
* [file_download_author](file_download_author)
* [file_download_category](file_download_category)
* [file_download_name](file_download_name)
* [image_author](image_author)
* [link_author](link_author)
* [link_category](link_category)
* [link_feed_link](link_feed_link)
* [meta_author](meta_author)
* [newer](newer)
* [older](older)
* [permlink](permlink)
* [section](section)

### type

* [category](category)
* [category_list](category_list)
* [if_author](if_author)
* [if_category](if_category)
* [if_description](if_description)
* [image_info](image_info)
* [meta_description](meta_description)
* [page_url](page_url)
* [popup](popup)

### url

* [category](category)
* [section](section)
* [txp_die](txp_die)

### value

* [if_custom_field](if_custom_field)
* [if_variable](if_variable)
* [if_yield](if_yield)
* [variable](variable)

### version

* [if_plugin](if_plugin)

### width

* [article_image](article_image)
* [image](image)
* [thumbnail](thumbnail)

### wraptag

HTML tag (without brackets) to wrap around output. Default value is unset, except where shown in parentheses.

* [article](article)
* [article_custom](article_custom)
* [article_image](article_image)
* [authors](authors)
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
* [file_download_author](file_download_author)
* [file_download_category](file_download_category)
* [file_download_description](file_download_description)
* [file_download_list](file_download_list)
* [image](image)
* [image_author](image_author)
* [image_index](image_index)
* [image_info](image_info)
* [images](images)
* [link_author](link_author)
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
