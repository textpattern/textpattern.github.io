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

* [category_list](/tags/category_list)
* [section_list](/tags/section_list)

</div>

### allowoverride

Used to disable assigned override forms. Works within article lists and single article display. Both article tags use `1` (yes) as default.

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)

</div>

### anchor

<div class="layout-text4col">

* [comment_permlink](/tags/comment_permlink)

</div>

### aria_label

<div class="layout-text4col">

* [comment_email_input](/tags/comment_email_input)
* [comment_message_input](/tags/comment_message_input)
* [comment_name_input](/tags/comment_name_input)
* [comment_web_input](/tags/comment_web_input)
* [search_input](/tags/search_input)

</div>

### author

<div class="layout-text4col">

* [article_custom](/tags/article_custom)
* [file_download_list](/tags/file_download_list)
* [images](/tags/images)
* [linklist](/tags/linklist)

</div>

### auto_detect

<div class="layout-text4col">

* [file_download_list](/tags/file_download_list)
* [images](/tags/images)
* [linklist](/tags/linklist)

</div>

### break

HTML tag (without brackets) or string used to separate list items. Suggested values include `br` and `hr` for presentational markup, or `li` if semantic markup is preferred. Textpattern cares for the correct nesting of tags in either case. Default is `br` (except for tags marked <span class="warning">●</span>, which default to unset).

<div class="layout-text4col">

* [article](/tags/article) <span class="warning">●</span>
* [article_custom](/tags/article_custom) <span class="warning">●</span>
* [authors](/tags/authors)
* [category_list](/tags/category_list)
* [comments](/tags/comments)
* [comments_error](/tags/comments_error)
* [file_download_list](/tags/file_download_list)
* [image_index](/tags/image_index)
* [image_info](/tags/image_info)
* [images](/tags/images)
* [keywords](/tags/keywords)
* [linklist](/tags/linklist) <span class="warning">●</span>
* [recent_articles](/tags/recent_articles)
* [recent_comments](/tags/recent_comments)
* [related_articles](/tags/related_articles)
* [section_list](/tags/section_list)

</div>

### breakby

Used to group list items when separating by `break`. Possible values are lists of integers, like `2` (groups of 2 items) or `1,2` (alternate groups of 1 and 2 items). Default is `1` (actually unset). <span class="footnote warning">**New v4.7.0**</span>

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [authors](/tags/authors)
* [category_list](/tags/category_list)
* [comments](/tags/comments)
* [comments_error](/tags/comments_error)
* [file_download_list](/tags/file_download_list)
* [image_index](/tags/image_index)
* [image_info](/tags/image_info)
* [images](/tags/images)
* [keywords](/tags/keywords)
* [linklist](/tags/linklist)
* [recent_articles](/tags/recent_articles)
* [recent_comments](/tags/recent_comments)
* [related_articles](/tags/related_articles)
* [section_list](/tags/section_list)

</div>

### button

<div class="layout-text4col">

* [search_input](/tags/search_input)

</div>

### categories

<div class="layout-text4col">

* [category_list](/tags/category_list)

</div>

### category

<div class="layout-text4col">

* [article_custom](/tags/article_custom)
* [breadcrumb](/tags/breadcrumb)
* [feed_link](/tags/feed_link)
* [file_download_list](/tags/file_download_list)
* [if_category](/tags/if_category)
* [image_index](/tags/image_index)
* [images](/tags/images)
* [link_feed_link](/tags/link_feed_link)
* [linklist](/tags/linklist)
* [recent_articles](/tags/recent_articles)

</div>

### children

<div class="layout-text4col">

* [category_list](/tags/category_list)

</div>

### class

[HTML class attribute](https://www.w3.org/TR/html5/dom.html#classes) to be applied to the specified [wraptag](#wraptag). Tags marked with <span class="warning">●</span> use the tag name as the class name by default. Otherwise the default is empty. <span class="footnote warning">**Global v4.7.0**</span>

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [article_image](/tags/article_image)
* [authors](/tags/authors)
* [breadcrumb](/tags/breadcrumb)
* [category](/tags/category)
* [category1](/tags/category1)
* [category2](/tags/category2)
* [category_list](/tags/category_list) <span class="warning">●</span>
* [comments](/tags/comments) <span class="warning">●</span>
* [comments_error](/tags/comments_error) <span class="warning">●</span>
* [comments_form](/tags/comments_form) <span class="warning">●</span>
* [comments_invite](/tags/comments_invite) <span class="warning">●</span>
* [comments_preview](/tags/comments_preview) <span class="warning">●</span>
* [expires](/tags/expires)
* [feed_link](/tags/feed_link)
* [file_download_author](/tags/file_download_author)
* [file_download_category](/tags/file_download_category)
* [file_download_description](/tags/file_download_description)
* [file_download_list](/tags/file_download_list) <span class="warning">●</span>
* [image](/tags/image)
* [image_author](/tags/image_author)
* [image_index](/tags/image_index)
* [image_info](/tags/image_info)
* [images](/tags/images) <span class="warning">●</span>
* [keywords](/tags/keywords)
* [link_author](/tags/link_author)
* [link_category](/tags/link_category)
* [link_description](/tags/link_description)
* [link_feed_link](/tags/link_feed_link) <span class="warning">●</span>
* [linklist](/tags/linklist) <span class="warning">●</span>
* [modified](/tags/modified)
* [permlink](/tags/permlink)
* [popup](/tags/popup)
* [posted](/tags/posted)
* [recent_articles](/tags/recent_articles) <span class="warning">●</span>
* [recent_comments](/tags/recent_comments) <span class="warning">●</span>
* [related_articles](/tags/related_articles) <span class="warning">●</span>
* [search_input](/tags/search_input)
* [section](/tags/section)
* [section_list](/tags/section_list) <span class="warning">●</span>
* [thumbnail](/tags/thumbnail)

</div>

### cols

HTML [cols attribute](https://www.w3.org/TR/html5/forms.html#attr-textarea-cols) to be applied to HTML form [textarea tag](https://www.w3.org/TR/html5/forms.html#the-textarea-element).

<div class="layout-text4col">

* [comment_message_input](/tags/comment_message_input)

</div>

### customfieldname

In your tag, replace `customfieldname` with the actual name of the desired custom field (see also @@Important notes on creating custom field names@@).

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)

</div>

### decimals

<div class="layout-text4col">

* [file_download_size](/tags/file_download_size)

</div>

### default

<div class="layout-text4col">

* [custom_field](/tags/custom_field)
* [page_url](/tags/page_url)
* [yield](/tags/yield)

</div>

### default_title

<div class="layout-text4col">

* [section_list](/tags/section_list)

</div>

### email

<div class="layout-text4col">

* [email](/tags/email)

</div>

### escape

Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity). <span class="footnote warning">**Global v4.7.0**</span>

<div class="layout-text4col">

* [article_image](/tags/article_image)
* [author](/tags/author)
* [author_email](/tags/author_email)
* [custom_field](/tags/custom_field)
* [file_download_description](/tags/file_download_description)
* [image](/tags/image)
* [image_info](/tags/image_info)
* [link_description](/tags/link_description)
* [link_name](/tags/link_name)
* [meta_author](/tags/meta_author)
* [meta_description](/tags/meta_description)
* [meta_keywords](/tags/meta_keywords)
* [newer](/tags/newer)
* [older](/tags/older)
* [text](/tags/text)
* [thumbnail](/tags/thumbnail)

</div>

### excerpted

<div class="layout-text4col">

* [article_custom](/tags/article_custom)

</div>

### exclude

<div class="layout-text4col">

* [article_custom](/tags/article_custom)
* [category_list](/tags/category_list)
* [section_list](/tags/section_list)

</div>

### expired

<div class="layout-text4col">

* [article_custom](/tags/article_custom)

</div>

### extension

<div class="layout-text4col">

* [images](/tags/images)

</div>

### filename

<div class="layout-text4col">

* [file_download](/tags/file_download)
* [file_download_link](/tags/file_download_link)

</div>

### flavor

<div class="layout-text4col">

* [feed_link](/tags/feed_link)
* [link_feed_link](/tags/link_feed_link)

</div>

### forgetlabel

<div class="layout-text4col">

* [comment_remember](/tags/comment_remember)

</div>

### form

Used to format content for display. See [Form templates](/themes/form-templates-explained) for further explanation.

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [authors](/tags/authors)
* [category_list](/tags/category_list)
* [comments](/tags/comments)
* [comments_form](/tags/comments_form)
* [comments_preview](/tags/comments_preview)
* [file_download](/tags/file_download)
* [file_download_list](/tags/file_download_list)
* [images](/tags/images)
* [linklist](/tags/linklist)
* [output_form](/tags/output_form)
* [recent_comments](/tags/recent_comments)
* [related_articles](/tags/related_articles)
* [search_input](/tags/search_input)
* [section_list](/tags/section_list)

</div>

### format

<div class="layout-text4col">

* [author](/tags/author)
* [comment_time](/tags/comment_time)
* [css](/tags/css)
* [expires](/tags/expires)
* [feed_link](/tags/feed_link)
* [file_download_created](/tags/file_download_created)
* [file_download_modified](/tags/file_download_modified)
* [file_download_size](/tags/file_download_size)
* [image_date](/tags/image_date)
* [link_date](/tags/link_date)
* [link_feed_link](/tags/link_feed_link)
* [meta_author](/tags/meta_author)
* [meta_description](/tags/meta_description)
* [meta_keywords](/tags/meta_keywords)
* [modified](/tags/modified)
* [posted](/tags/posted)
* [search_result_date](/tags/search_result_date)

</div>

### gmt

<div class="layout-text4col">

* [comment_time](/tags/comment_time)
* [expires](/tags/expires)
* [link_date](/tags/link_date)
* [modified](/tags/modified)
* [posted](/tags/posted)

</div>

### group

<div class="layout-text4col">

* [authors](/tags/authors)
* [if_logged_in](/tags/if_logged_in)

</div>

### height

<div class="layout-text4col">

* [article_image](/tags/article_image)
* [image](/tags/image)
* [thumbnail](/tags/thumbnail)

</div>

### hilight

<div class="layout-text4col">

* [search_result_excerpt](/tags/search_result_excerpt)

</div>

### html_id

[HTML id attribute](https://www.w3.org/TR/html5/dom.html#the-id-attribute) to be applied to the [wraptag](#wraptag). <span class="footnote warning">**Global v4.7.0**</span>

<div class="layout-text4col">

* [article_image](/tags/article_image)
* [category_list](/tags/category_list)
* [image](/tags/image)
* [images](/tags/images)
* [search_input](/tags/search_input)
* [section_list](/tags/section_list)
* [thumbnail](/tags/thumbnail)

</div>

### id

<div class="layout-text4col">

* [article_custom](/tags/article_custom)
* [file_download](/tags/file_download)
* [file_download_link](/tags/file_download_link)
* [file_download_list](/tags/file_download_list)
* [if_article_id](/tags/if_article_id)
* [image](/tags/image)
* [image_author](/tags/image_author)
* [image_date](/tags/image_date)
* [image_info](/tags/image_info)
* [image_url](/tags/image_url)
* [images](/tags/images)
* [link](/tags/link)
* [linklist](/tags/linklist)
* [permlink](/tags/permlink)
* [thumbnail](/tags/thumbnail)

</div>

### include_default

<div class="layout-text4col">

* [section_list](/tags/section_list)

</div>

### item

<div class="layout-text4col">

* [text](/tags/text)

</div>

### keywords

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [if_keywords](/tags/if_keywords)

</div>

### label

This string will be prepended to the output. When using a [wraptag](#wraptag) value of either `ol` or `ul`, the label will be the first list item. Default is unset (except where shown in parentheses). <span class="footnote warning">**Global v4.7.0**</span>

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [authors](/tags/authors)
* [breadcrumb](/tags/breadcrumb) (Site name)
* [category_list](/tags/category_list)
* [comment_submit](/tags/comment_submit)
* [comments_preview](/tags/comments_preview)
* [feed_link](/tags/feed_link)
* [file_download_list](/tags/file_download_list)
* [image_index](/tags/image_index)
* [images](/tags/images)
* [link_category](/tags/link_category)
* [link_description](/tags/link_description)
* [link_feed_link](/tags/link_feed_link)
* [linklist](/tags/linklist)
* [popup](/tags/popup) (Browse)
* [recent_articles](/tags/recent_articles) (Recent articles)
* [recent_comments](/tags/recent_comments)
* [related_articles](/tags/related_articles)
* [search_input](/tags/search_input) (Search)
* [section_list](/tags/section_list)

</div>

### labeltag

HTML tag (without brackets) to wrap around [label](#label). Default is unset. <span class="footnote warning">**Global v4.7.0**</span>

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [authors](/tags/authors)
* [category_list](/tags/category_list)
* [file_download_list](/tags/file_download_list)
* [image_index](/tags/image_index)
* [images](/tags/images)
* [link_category](/tags/link_category)
* [link_description](/tags/link_description)
* [linklist](/tags/linklist)
* [recent_articles](/tags/recent_articles)
* [recent_comments](/tags/recent_comments)
* [related_articles](/tags/related_articles)
* [section_list](/tags/section_list)

</div>

### lang

<div class="layout-text4col">

* [comment_time](/tags/comment_time)
* [expires](/tags/expires)
* [link_date](/tags/link_date)
* [modified](/tags/modified)
* [posted](/tags/posted)

</div>

### loading

<div class="layout-text4col">

* [article_image](/tags/article_image)
* [image](/tags/image)
* [thumbnail](/tags/thumbnail)

</div>

### limit

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [breadcrumb](/tags/breadcrumb)
* [authors](/tags/authors)
* [category_list](/tags/category_list)
* [comments](/tags/comments)
* [feed_link](/tags/feed_link)
* [file_download_list](/tags/file_download_list)
* [image_index](/tags/image_index)
* [images](/tags/images)
* [linklist](/tags/linklist)
* [recent_articles](/tags/recent_articles)
* [recent_comments](/tags/recent_comments)
* [related_articles](/tags/related_articles)
* [search_result_excerpt](/tags/search_result_excerpt)
* [section_list](/tags/section_list)

</div>

### link

<div class="layout-text4col">

* [author](/tags/author)
* [author_email](/tags/author_email)
* [breadcrumb](/tags/breadcrumb)
* [category](/tags/category)
* [category1](/tags/category1)
* [category2](/tags/category2)
* [comment_name](/tags/comment_name)
* [file_download_author](/tags/file_download_author)
* [image_author](/tags/image_author)
* [image_url](/tags/image_url)
* [link_author](/tags/link_author)
* [section](/tags/section)
* [thumbnail](/tags/thumbnail)

</div>

### link_rel

<div class="layout-text4col">

* [thumbnail](/tags/thumbnail)

</div>

### linkclass

[HTML class attribute](https://www.w3.org/TR/html5/dom.html#classes) to be applied to links.

<div class="layout-text4col">

* [breadcrumb](/tags/breadcrumb)

</div>

### linktext

<div class="layout-text4col">

* [email](/tags/email)

</div>

### listform

See [Form templates](/themes/form-templates-explained) for further explanation.

<div class="layout-text4col">

* [article](/tags/article)

</div>

### login

<div class="layout-text4col">

* [password_protect](/tags/password_protect)

</div>

### match

<div class="layout-text4col">

* [article_custom](/tags/article_custom)
* [if_custom_field](/tags/if_custom_field)
* [related_articles](/tags/related_articles)
* [search_input](/tags/search_input)

</div>

### max

<div class="layout-text4col">

* [if_search_results](/tags/if_search_results)

</div>

### media

<div class="layout-text4col">

* [css](/tags/css)

</div>

### min

<div class="layout-text4col">

* [if_search_results](/tags/if_search_results)

</div>

### month

<div class="layout-text4col">

* [article_custom](/tags/article_custom)

</div>

### msg

<div class="layout-text4col">

* [txp_die](/tags/txp_die)

</div>

### name

<div class="layout-text4col">

* [authors](/tags/authors)
* [category](/tags/category)
* [css](/tags/css)
* [custom_field](/tags/custom_field)
* [header](/tags/header)
* [if_article_author](/tags/if_article_author)
* [if_article_category](/tags/if_article_category)
* [if_article_section](/tags/if_article_section)
* [if_author](/tags/if_author)
* [if_category](/tags/if_category)
* [if_custom_field](/tags/if_custom_field)
* [if_logged_in](/tags/if_logged_in)
* [if_plugin](/tags/if_plugin)
* [if_section](/tags/if_section)
* [if_variable](/tags/if_variable)
* [if_yield](/tags/if_yield)
* [image](/tags/image)
* [image_author](/tags/image_author)
* [image_date](/tags/image_date)
* [image_info](/tags/image_info)
* [image_url](/tags/image_url)
* [images](/tags/images)
* [link](/tags/link)
* [section](/tags/section)
* [thumbnail](/tags/thumbnail)
* [variable](/tags/variable)
* [yield](/tags/yield)

</div>

### no_widow

<div class="layout-text4col">

* [recent_articles](/tags/recent_articles)
* [related_articles](/tags/related_articles)
* [title](/tags/title)

</div>

### not

Used to invert the `true/false` parts of conditional and other tags. <span class="footnote warning">**New v4.7.0**

### number

<div class="layout-text4col">

* [if_article_category](/tags/if_article_category)

</div>

### offset

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [authors](/tags/authors)
* [breadcrumb](/tags/breadcrumb)
* [category_list](/tags/category_list)
* [comments](/tags/comments)
* [file_download_list](/tags/file_download_list)
* [image_index](/tags/image_index)
* [images](/tags/images)
* [linklist](/tags/linklist)
* [recent_articles](/tags/recent_articles)
* [recent_comments](/tags/recent_comments)
* [related_articles](/tags/related_articles)
* [section_list](/tags/section_list)

</div>

### pageby

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [file_download_list](/tags/file_download_list)
* [images](/tags/images)
* [linklist](/tags/linklist)

</div>

### parent

<div class="layout-text4col">

* [category_list](/tags/category_list)
* [if_category](/tags/if_category)

</div>

### pass

<div class="layout-text4col">

* [password_protect](/tags/password_protect)

</div>

### pgonly

Used to return pagination statistics without rendering the article list. Care must be taken to remain consistent with article tag attributes to keep statistics accurate.

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)

</div>

### placeholder

<div class="layout-text4col">

* [comment_email_input](/tags/comment_email_input)
* [comment_message_input](/tags/comment_message_input)
* [comment_name_input](/tags/comment_name_input)
* [comment_web_input](/tags/comment_web_input)
* [search_input](/tags/search_input)

</div>

### poplink

<div class="layout-text4col">

* [thumbnail](/tags/thumbnail)

</div>

### process

<div class="layout-text4col">

* [hide](/tags/hide)

</div>

### query

<div class="layout-text4col">

* [evaluate](/tags/evaluate)

</div>

### realname

<div class="layout-text4col">

* [file_download_list](/tags/file_download_list)
* [images](/tags/images)
* [linklist](/tags/linklist)

</div>

### rel

HTML [rel attribute](https://www.w3.org/TR/html5/document-metadata.html#attr-link-rel) to be applied to links.

<div class="layout-text4col">

* [css](/tags/css)
* [link](/tags/link)
* [linkdesctitle](/tags/linkdesctitle)
* [newer](/tags/newer)
* [older](/tags/older)

</div>

### rememberlabel

<div class="layout-text4col">

* [comment_remember](/tags/comment_remember)

</div>

### replace

<div class="layout-text4col">

* [header](/tags/header)

</div>

### rows

HTML [rows attribute](https://www.w3.org/TR/html5/forms.html#attr-textarea-rows) to be applied to HTML form [textarea tag](https://www.w3.org/TR/html5/forms.html#the-textarea-element).

<div class="layout-text4col">

* [comment_message_input](/tags/comment_message_input)

</div>

### searchall

<div class="layout-text4col">

* [article](/tags/article)

</div>

### searchform

See [Form templates](/themes/form-templates-explained) for further explanation.

<div class="layout-text4col">

* [article](/tags/article)

</div>

### searchsticky

<div class="layout-text4col">

* [article](/tags/article)

</div>

### section

<div class="layout-text4col">

* [article_custom](/tags/article_custom)
* [author](/tags/author)
* [category](/tags/category)
* [category1](/tags/category1)
* [category2](/tags/category2)
* [category_list](/tags/category_list)
* [feed_link](/tags/feed_link)
* [file_download_author](/tags/file_download_author)
* [image_author](/tags/image_author)
* [link_author](/tags/link_author)
* [popup](/tags/popup)
* [recent_articles](/tags/recent_articles)
* [related_articles](/tags/related_articles)
* [search_input](/tags/search_input)

</div>

### sections

<div class="layout-text4col">

* [section_list](/tags/section_list)

</div>

### separator

<div class="layout-text4col">

* [breadcrumb](/tags/breadcrumb)
* [if_custom_field](/tags/if_custom_field)
* [meta_keywords](/tags/meta_keywords)
* [page_title](/tags/page_title)
* [search_result_excerpt](/tags/search_result_excerpt)

</div>

### showalways

<div class="layout-text4col">

* [comments_invite](/tags/comments_invite)
* [link_to_next](/tags/link_to_next)
* [link_to_prev](/tags/link_to_prev)
* [newer](/tags/newer)
* [older](/tags/older)

</div>

### showcount

<div class="layout-text4col">

* [comments_invite](/tags/comments_invite)

</div>

### size

HTML [size attribute](https://www.w3.org/TR/html5/forms.html#the-size-attribute) to be applied to HTML form [input tags](https://www.w3.org/TR/html5/forms.html#the-input-element).

<div class="layout-text4col">

* [comment_email_input](/tags/comment_email_input)
* [comment_name_input](/tags/comment_name_input)
* [comment_web_input](/tags/comment_web_input)
* [search_input](/tags/search_input)

</div>

### sort

How to sort the resulting list. Available and default values vary by tag, but multiple, comma-separated values can be used. Each value can be specified as either `asc` (ascending) or `desc` (descending) order.

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [authors](/tags/authors)
* [category_list](/tags/category_list)
* [comments](/tags/comments)
* [file_download_list](/tags/file_download_list)
* [image_index](/tags/image_index)
* [images](/tags/images)
* [linklist](/tags/linklist)
* [recent_articles](/tags/recent_articles)
* [recent_comments](/tags/recent_comments)
* [related_articles](/tags/related_articles)
* [section_list](/tags/section_list)

</div>

### status

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [file_download_list](/tags/file_download_list)
* [if_status](/tags/if_status)
* [txp_die](/tags/txp_die)

</div>

### style

HTML [style attribute](https://www.w3.org/TR/html5/dom.html#the-style-attribute) to be applied to HTML tag. Recommended that you use CSS via `class` or `id` attribute instead.

<div class="layout-text4col">

* [article_image](/tags/article_image)
* [image](/tags/image)
* [permlink](/tags/permlink)
* [thumbnail](/tags/thumbnail)

</div>

### test

<div class="layout-text4col">

* [evaluate](/tags/evaluate)

</div>

### text

<div class="layout-text4col">

* [search_result_count](/tags/search_result_count)

</div>

### textonly

<div class="layout-text4col">

* [comments_invite](/tags/comments_invite)

</div>

### this_section

<div class="layout-text4col">

* [author](/tags/author)
* [category](/tags/category)
* [category1](/tags/category1)
* [category2](/tags/category2)
* [category_list](/tags/category_list)
* [file_download_author](/tags/file_download_author)
* [image_author](/tags/image_author)
* [link_author](/tags/link_author)
* [popup](/tags/popup)

</div>

### thumbnail

<div class="layout-text4col">

* [article_image](/tags/article_image)
* [image_url](/tags/image_url)
* [images](/tags/images)

</div>

### time

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)

</div>

### title

<div class="layout-text4col">

* [author](/tags/author)
* [breadcrumb](/tags/breadcrumb)
* [category](/tags/category)
* [category1](/tags/category1)
* [category2](/tags/category2)
* [css](/tags/css)
* [email](/tags/email)
* [feed_link](/tags/feed_link)
* [file_download_author](/tags/file_download_author)
* [file_download_category](/tags/file_download_category)
* [file_download_name](/tags/file_download_name)
* [image_author](/tags/image_author)
* [link_author](/tags/link_author)
* [link_category](/tags/link_category)
* [link_feed_link](/tags/link_feed_link)
* [meta_author](/tags/meta_author)
* [newer](/tags/newer)
* [older](/tags/older)
* [permlink](/tags/permlink)
* [section](/tags/section)

</div>

### type

<div class="layout-text4col">

* [breadcrumb](/tags/breadcrumb)
* [category](/tags/category)
* [category_list](/tags/category_list)
* [if_article_list](/tags/if_article_list)
* [if_author](/tags/if_author)
* [if_category](/tags/if_category)
* [if_description](/tags/if_description)
* [image_info](/tags/image_info)
* [meta_description](/tags/meta_description)
* [page_url](/tags/page_url)
* [popup](/tags/popup)
* [site_url](/tags/site_url)

</div>

### url

<div class="layout-text4col">

* [category](/tags/category)
* [section](/tags/section)
* [txp_die](/tags/txp_die)

</div>

### value

<div class="layout-text4col">

* [header](/tags/header)
* [if_custom_field](/tags/if_custom_field)
* [if_variable](/tags/if_variable)
* [if_yield](/tags/if_yield)
* [variable](/tags/variable)

</div>

### version

<div class="layout-text4col">

* [if_plugin](/tags/if_plugin)

</div>

### width

<div class="layout-text4col">

* [article_image](/tags/article_image)
* [image](/tags/image)
* [thumbnail](/tags/thumbnail)

</div>

### wraptag

HTML tag (without brackets) to wrap around output. Default value is unset, except where shown in parentheses. <span class="footnote warning">**Global v4.7.0**</span>

<div class="layout-text4col">

* [article](/tags/article)
* [article_custom](/tags/article_custom)
* [article_image](/tags/article_image)
* [authors](/tags/authors)
* [breadcrumb](/tags/breadcrumb) (`p`)
* [category](/tags/category)
* [category1](/tags/category1)
* [category2](/tags/category2)
* [category_list](/tags/category_list)
* [comments](/tags/comments)
* [comments_error](/tags/comments_error) (`div`)
* [comments_form](/tags/comments_form)
* [comments_invite](/tags/comments_invite)
* [comments_preview](/tags/comments_preview)
* [expires](/tags/expires)
* [feed_link](/tags/feed_link)
* [file_download_author](/tags/file_download_author)
* [file_download_category](/tags/file_download_category)
* [file_download_description](/tags/file_download_description)
* [file_download_list](/tags/file_download_list)
* [image](/tags/image)
* [image_author](/tags/image_author)
* [image_index](/tags/image_index)
* [image_info](/tags/image_info)
* [images](/tags/images)
* [keywords](/tags/keywords)
* [link_author](/tags/link_author)
* [link_category](/tags/link_category)
* [link_description](/tags/link_description)
* [link_feed_link](/tags/link_feed_link)
* [linklist](/tags/linklist)
* [modified](/tags/modified)
* [popup](/tags/popup)
* [posted](/tags/posted)
* [recent_articles](/tags/recent_articles)
* [recent_comments](/tags/recent_comments)
* [related_articles](/tags/related_articles)
* [search_input](/tags/search_input) (`p`)
* [section](/tags/section)
* [section_list](/tags/section_list)
* [thumbnail](/tags/thumbnail)

</div>

### yield

<div class="layout-text4col">

* [output_form](/tags/output_form)

</div>
