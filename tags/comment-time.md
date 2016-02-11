---
layout: document
category: tags
published: true
title: "Comment time"
tags:
  - Comment tags
---

# Comment time

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:comment_time />
```

The *comment_time* tag is a __single__ tag which is used to display the time and date the comment was submitted. Should be used in a Textpattern 'comment' type @@Form template@@.

## Attributes

This tag will accept the following attributes (*case-sensitive*):

* @format="format string"@
Override the default date format set in the "Preferences administration panel":../administration/preferences-panel.
Values: any valid "strftime":http://php.net/strftime string values, @since@, @iso8601@ ("ISO 8601 reference":http://en.wikipedia.org/wiki/ISO_8601), @w3cdtf@ ("W3CDTF reference":http://www.w3.org/TR/NOTE-datetime), or @rfc822@ ("RFC 822 reference":http://www.w3.org/Protocols/rfc822/#z28).
Default: the 'Date format' set in preferences.
* @gmt="boolean"@
Return either local time (according to the set time zone preferences) or GMT.
Values: @0@ (local time) or @1@ (GMT).
Default: @0@.
* @lang="ISO language code"@
Format time string suitable for the specified language (locale).
Values: locales adhere to "ISO-639":http://en.wikipedia.org/wiki/ISO_639-2.
Default: unset (time format set in the "Preferences administration panel":../administration/preferences-panel.

## Examples

### Example 1: Comments display form

```html
<txp:comment_message />
<p>
    <txp:comment_name />
    <txp:comment_time />
    <txp:comment_permlink>
        <txp:comment_id />
    </txp:comment_permlink>
</p>
```

Other tags used: "comment_id":comment-id, "comment_message":comment-message, "comment_name":comment-name, "comment_permlink":comment-permlink.
