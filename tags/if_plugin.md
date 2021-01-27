---
layout: document
category: Tags
published: true
title: If plugin
description: The if_plugin tag will execute the contained statements if the name attribute matches a currently installed plugin.
tags:
  - Conditional tags
---

# If plugin

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:if_plugin>
~~~

The **if_plugin** tag is a *conditional* tag and always used as an opening and closing pair, like this…

~~~ html
<txp:if_plugin>
    …conditional statement…
</txp:if_plugin>
~~~

The tag will execute the contained statements if the name attribute matches a currently installed and enabled plugin, and the current version number is equal to or greater than the `version` attribute assigned (if used).

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`name="text"`
: Plugin name as defined on the Plugins panel.

`version="number"`
: Minimum plugin version number.
: **Default:** unset.

## Examples

### Example 1: Check plugin exists before using a tag

~~~ html
<txp:if_plugin name="com_connect" version="4.6">
    <txp:com_connect to="recipient@example.com" />
</txp:if_plugin>
~~~

Applies the tag `<txp:com_connect />` if the 'com_connect' plugin is installed, activated, and the version number is equal to or greater than 4.6. Version numbering supports [semantic versioning](http://semver.org), for example…

~~~
version="4.6"
~~~

…means equal to or greater than version @4.6@ (i.e. @4.6.1@, @4.7@, @5@).

## Genealogy

### Version 4.3.0

`ver` attribute deprecated and renamed `version`.
