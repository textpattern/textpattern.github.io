# Link url

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

~~~ html
<txp:link_url />
~~~

The **link_url** tag is a *single* tag which returns the URL of the link as text. This tag is used in a 'links' type form or inside the [linklist](linklist) container tag to show information about the current link in the list.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display a link with class attribute

~~~ html
<a class="awesome-links" href="<txp:link_url />">
    <txp:link_name />
</a>
~~~

Other tags used: [link_name](link-name).
