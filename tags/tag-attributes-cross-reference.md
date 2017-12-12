---
layout: document
category: Tags
published: true
title: Tag attributes cross-reference
description: This cross-reference makes clear the different Textpattern tags associated with a given attribute.
---

# Tag attributes cross-reference

This cross-reference document makes clear the different Textpattern tags associated with a given attribute.

For each attribute, the associated tags are listed underneath it.

### active_class

[HTML class attribute](https://www.w3.org/TR/html5/dom.html#classes) to be applied to the 'active' or current link in a list.

{::options parse_block_html="true" /}

<div class="layout-text4col">

* [category_list](category_list)
* [section_list](section_list)

</div>

### allowoverride

Used to disable assigned override forms. Works within article lists and single article display. Both article tags use `1` (yes) as default.

<div class="layout-text4col">

* [article](article)
* [article_custom](article_custom)

</div>

### anchor

<div class="layout-text4col">

* [comment_permlink](comment_permlink)

</div>

### author

<div class="layout-text4col">

* [article_custom](article_custom)
* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist)

</div>

### auto_detect

<div class="layout-text4col">

* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist)

</div>

### break

HTML tag (without brackets) or string used to separate list items. Suggested values include `br` and `hr` for presentational markup, or `li` if semantic markup is preferred. Textpattern cares for the correct nesting of tags in either case. Default is `br` (except for tags marked <span class="warning">●</span>, which default to unset).

<div class="layout-text4col">

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

</div>

### button

<div class="layout-text4col">

* [search_input](search_input)

</div>

### categories

<div class="layout-text4col">

* [category_list](category_list)

</div>

### category

<div class="layout-text4col">

* [article_custom](article_custom)
* [feed_link](feed_link)
* [file_download_list](file_download_list)
* [image_index](image_index)
* [images](images)
* [link_feed_link](link_feed_link)
* [linklist](linklist)
* [recent_articles](recent_articles)

</div>

### children

<div class="layout-text4col">

* [category_list](category_list)

</div>

### class

[HTML class attribute](https://www.w3.org/TR/html5/dom.html#classes) to be applied to the specified [wraptag](#wraptag). Tags marked with <span class="warning">●</span> use the tag name as the class name by default. Otherwise the default is empty.

<div class="layout-text4col">

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

</div>

### cols

HTML [cols attribute](https://www.w3.org/TR/html5/forms.html#attr-textarea-cols) to be applied to HTML form [textarea tag](https://www.w3.org/TR/html5/forms.html#the-textarea-element).

<div class="layout-text4col">

* [comment_message_input](comment_message_input)

</div>

### customfieldname

In your tag, replace `customfieldname` with the actual name of the desired custom field (see also @@Important notes on creating custom field names@@).

<div class="layout-text4col">

* [article](article)
* [article_custom](article_custom)

</div>

### decimals

<div class="layout-text4col">

* [file_download_size](file_download_size)

</div>

### default

<div class="layout-text4col">

* [custom_field](custom_field)

</div>

### default_title

<div class="layout-text4col">

* [section_list](section_list)

</div>

### email

<div class="layout-text4col">

* [email](email)

</div>

### escape

Escape HTML entities.

<div class="layout-text4col">

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

</div>

### excerpted

<div class="layout-text4col">

* [article_custom](article_custom)

</div>

### exclude

<div class="layout-text4col">

* [article_custom](article_custom)
* [category_list](category_list)
* [section_list](section_list)

</div>

### expired

<div class="layout-text4col">

* [article_custom](article_custom)

</div>

### extension

<div class="layout-text4col">

* [images](images)

</div>

### filename

<div class="layout-text4col">

* [file_download](file_download)
* [file_download_link](file_download_link)

</div>

### flavor

<div class="layout-text4col">

* [feed_link](feed_link)
* [link_feed_link](link_feed_link)

</div>

### forgetlabel

<div class="layout-text4col">

* [comment_remember](comment_remember)

</div>

### form

Used to format content for display. See [Form templates](https://docs.textpattern.io/themes/form-templates-explained) for further explanation.

<div class="layout-text4col">

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

</div>

### format

<div class="layout-text4col">

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

</div>

### gmt

<div class="layout-text4col">

* [comment_time](comment_time)
* [expires](expires)
* [link_date](link_date)
* [modified](modified)
* [posted](posted)

</div>

### group

<div class="layout-text4col">

* [authors](authors)

</div>

### height

<div class="layout-text4col">

* [article_image](article_image)
* [image](image)
* [thumbnail](thumbnail)

</div>

### hilight

<div class="layout-text4col">

* [search_result_excerpt](search_result_excerpt)

</div>

### html_id

[HTML id attribute](https://www.w3.org/TR/html5/dom.html#the-id-attribute) to be applied to the [wraptag](#wraptag).

<div class="layout-text4col">

* [article_image](article_image)
* [category_list](category_list)
* [image](image)
* [images](images)
* [search_input](search_input)
* [section_list](section_list)
* [thumbnail](thumbnail)

</div>

### id

<div class="layout-text4col">

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

</div>

### include_default

<div class="layout-text4col">

* [section_list](section_list)

</div>

### item

<div class="layout-text4col">

* [text](text)

</div>

### keywords

<div class="layout-text4col">

* [article](article)
* [article_custom](article_custom)
* [if_keywords](if_keywords)

</div>

### label

This string will be prepended to the output. When using a [wraptag](#wraptag) value of either `ol` or `ul`, the label will be the first list item. Default is unset (except where shown in parentheses).

<div class="layout-text4col">

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

</div>

### labeltag

HTML tag (without brackets) to wrap around [label](#label). Default is unset.

<div class="layout-text4col">

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

</div>

### lang

<div class="layout-text4col">

* [comment_time](comment_time)
* [expires](expires)
* [link_date](link_date)
* [modified](modified)
* [posted](posted)

</div>

### limit

<div class="layout-text4col">

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

</div>

### link

<div class="layout-text4col">

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

</div>

### link_rel

<div class="layout-text4col">

* [thumbnail](thumbnail)

</div>

### linkclass

[HTML class attribute](https://www.w3.org/TR/html5/dom.html#classes) to be applied to links.

<div class="layout-text4col">

* [breadcrumb](breadcrumb)

</div>

### linktext

<div class="layout-text4col">

* [email](email)

</div>

### listform

See [Form templates](https://docs.textpattern.io/themes/form-templates-explained) for further explanation.

<div class="layout-text4col">

* [article](article)

</div>

### login

<div class="layout-text4col">

* [password_protect](password_protect)

</div>

### match

<div class="layout-text4col">

* [if_custom_field](if_custom_field)
* [related_articles](related_articles)
* [search_input](search_input)

</div>

### max

<div class="layout-text4col">

* [if_search_results](if_search_results)

</div>

### media

<div class="layout-text4col">

* [css](css)

</div>

### min

<div class="layout-text4col">

* [if_search_results](if_search_results)

</div>

### month

<div class="layout-text4col">

* [article_custom](article_custom)

</div>

### msg

<div class="layout-text4col">

* [txp_die](txp_die)

</div>

### name

<div class="layout-text4col">

* [authors](authors)
* [category](category)
* [css](css)
* [custom_field](custom_field)
* [header](header)
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

</div>

### no_widow

<div class="layout-text4col">

* [recent_articles](recent_articles)
* [related_articles](related_articles)
* [title](title)

</div>

### number

<div class="layout-text4col">

* [if_article_category](if_article_category)

</div>

### offset

<div class="layout-text4col">

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

</div>

### pageby

<div class="layout-text4col">

* [article](article)
* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist)

</div>

### parent

<div class="layout-text4col">

* [category_list](category_list)

</div>

### pass

<div class="layout-text4col">

* [password_protect](password_protect)

</div>

### pgonly

Used to return pagination statistics without rendering the article list. Care must be taken to remain consistent with article tag attributes to keep statistics accurate.

<div class="layout-text4col">

* [article](article)

</div>

### poplink

<div class="layout-text4col">

* [thumbnail](thumbnail)

</div>

### process

<div class="layout-text4col">

* [hide](hide)

</div>

### realname

<div class="layout-text4col">

* [file_download_list](file_download_list)
* [images](images)
* [linklist](linklist)

</div>

### rel

HTML [rel attribute](https://www.w3.org/TR/html5/document-metadata.html#attr-link-rel) to be applied to links.

<div class="layout-text4col">

* [css](css)
* [link](link)
* [linkdesctitle](linkdesctitle)

</div>

### rememberlabel

<div class="layout-text4col">

* [comment_remember](comment_remember)

</div>

### replace

<div class="layout-text4col">

* [header](header)

</div>

### rows

HTML [rows attribute](https://www.w3.org/TR/html5/forms.html#attr-textarea-rows) to be applied to HTML form [textarea tag](https://www.w3.org/TR/html5/forms.html#the-textarea-element).

<div class="layout-text4col">

* [comment_message_input](comment_message_input)

</div>

### searchall

<div class="layout-text4col">

* [article](article)

</div>

### searchform

See [Form templates](https://docs.textpattern.io/themes/form-templates-explained) for further explanation.

<div class="layout-text4col">

* [article](article)

</div>

### searchsticky

<div class="layout-text4col">

* [article](article)

</div>

### section

<div class="layout-text4col">

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

</div>

### sections

<div class="layout-text4col">

* [section_list](section_list)

</div>

### separator

<div class="layout-text4col">

* [breadcrumb](breadcrumb)
* [if_custom_field](if_custom_field)
* [meta_keywords](meta_keywords)
* [page_title](page_title)

</div>

### showalways

<div class="layout-text4col">

* [comments_invite](comments_invite)
* [link_to_next](link_to_next)
* [link_to_prev](link_to_prev)
* [newer](newer)
* [older](older)

</div>

### showcount

<div class="layout-text4col">

* [comments_invite](comments_invite)

</div>

### size

HTML [size attribute](https://www.w3.org/TR/html5/forms.html#the-size-attribute) to be applied to HTML form [input tags](https://www.w3.org/TR/html5/forms.html#the-input-element).

<div class="layout-text4col">

* [comment_email_input](comment_email_input)
* [comment_name_input](comment_name_input)
* [comment_web_input](comment_web_input)
* [search_input](search_input)

</div>

### sort

How to sort the resulting list. Available and default values vary by tag, but multiple, comma-separated values can be used. Each value can be specified as either `asc` (ascending) or `desc` (descending) order.

<div class="layout-text4col">

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

</div>

### status

<div class="layout-text4col">

* [article](article)
* [article_custom](article_custom)
* [file_download_list](file_download_list)
* [if_status](if_status)
* [txp_die](txp_die)

</div>

### style

HTML [style attribute](https://www.w3.org/TR/html5/dom.html#the-style-attribute) to be applied to HTML tag. Recommended that you use CSS via `class` or `id` attribute instead.

<div class="layout-text4col">

* [article_image](article_image)
* [image](image)
* [permlink](permlink)
* [thumbnail](thumbnail)

</div>

### text

<div class="layout-text4col">

* [search_result_count](search_result_count)

</div>

### textonly

<div class="layout-text4col">

* [comments_invite](comments_invite)

</div>

### this_section

<div class="layout-text4col">

* [author](author)
* [category](category)
* [category1](category1)
* [category2](category2)
* [category_list](category_list)
* [file_download_author](file_download_author)
* [image_author](image_author)
* [link_author](link_author)
* [popup](popup)

</div>

### thumbnail

<div class="layout-text4col">

* [article_image](article_image)
* [image_url](image_url)
* [images](images)

</div>

### time

<div class="layout-text4col">

* [article](article)
* [article_custom](article_custom)

</div>

### title

<div class="layout-text4col">

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

</div>

### type

<div class="layout-text4col">

* [category](category)
* [category_list](category_list)
* [if_author](if_author)
* [if_category](if_category)
* [if_description](if_description)
* [image_info](image_info)
* [meta_description](meta_description)
* [page_url](page_url)
* [popup](popup)

</div>

### url

<div class="layout-text4col">

* [category](category)
* [section](section)
* [txp_die](txp_die)

</div>

### value

<div class="layout-text4col">

* [header](header)
* [if_custom_field](if_custom_field)
* [if_variable](if_variable)
* [if_yield](if_yield)
* [variable](variable)

</div>

### version

<div class="layout-text4col">

* [if_plugin](if_plugin)

</div>

### width

<div class="layout-text4col">

* [article_image](article_image)
* [image](image)
* [thumbnail](thumbnail)

</div>

### wraptag

HTML tag (without brackets) to wrap around output. Default value is unset, except where shown in parentheses.

<div class="layout-text4col">

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

</div>
