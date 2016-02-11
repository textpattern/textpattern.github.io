[todo:pw]

h3(sectionedit1#overview). Overview

The basic function of *&lt;"output_form_":/home/www/zendstudio/dokuwiki/bin/doku.php?id=txp:output_form:start&gt;* is to take a particular form that defines a given set of scripting or HTML functions and output that set of functions anywhere in a particular Web page. Think about your pages; many of them will use different article or link forms to display content unique to the particular page, but they'll also have a lot of things in common, like the opening DOCTYPE declaration, calls to CSS, navigation menus, etc. Using *output_form* it's possible to write these page elements once and use them anywhere.

h3(sectionedit2#example_1). Example 1

Suppose you want to move your DOCTYPE declaration and the `<head>` of your page into a form; you could write the following and save it in a form called *page_head* with type *misc*:

`<?xml version=“1.0” encoding=“utf-8”?>@@ <!DOCTYPE html@@  PUBLIC “-W3CDTD XHTML 1.0 StrictEN”@ “"$":http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd”&gt; @@ &lt;html xmlns=“"$":http://www.w3.org/1999/xhtml” xml:lang=“en” lang=“en”&gt; @@ &lt;head&gt; @@ &lt;title&gt;&lt;txp:page_title /&gt;&lt;/title&gt; @@ &lt;txp:css /&gt; @@ &lt;/head&gt;'' Then in each of your pages you could use *&lt;txp:output_form form=“page_head” /&gt;*, and all of the above code would automatically be dropped in for you. If you ever need to change the tags in the head of the page, you can change one form and have the change reflected across all the pages which use it. ==== Example 2 ==== Similarly, this tag is useful for defining bits of text content that is too short or inappropriate to be an actual article, and which is needed across all pages, such as a copyright notice in a footer. For example, you could write a copyright notice, save it as a form called *copyright*, and then put it in each of your pages with *&lt;txp:output_form form=“copyright” /&gt;*. Essentially, any time you have something you're going to want in multiple pages, you can save yourself time and trouble by writing a form for it and using *&lt;txp:output_form /&gt;* to display it.

