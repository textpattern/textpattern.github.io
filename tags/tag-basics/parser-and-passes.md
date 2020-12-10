---
layout: document
category: Tag basics
published: true
title: Parser and passes
description: The Textpattern parser does its job in stages, which permits extra control over output.
---

# Parser and passes

Textpattern's parser does its job in stages, which permits extra control over output.

**Contents**

* Table of contents
{:toc}

## Multiple passes

The Textpattern parser is the workhorse that converts the `<txp:...>` tags into dynamic content when the page is rendered. At heart, it is a linear parser, meaning it goes through your Page template and Forms line by line, tag by tag, the outside tags recursively calling the inside ones.

If you have relatively simple Pages it can do this in one sweep - what we refer to as a *pass*. For more complicated uses - such as in presence of some tags dependency - the parser may need more than one pass to convert all tags. It keeps going back over the document as many times as needed to convert all tags, and then renders the final result to the visitor.

Let's take a simple example of a tag that only requires a single pass:

```
<txp:article />
...
<txp:link_to_next>Next article</txp:link_to_next>
```

Upon encountering the second tag, the parser has all the information it needs to fetch the next article, process and replace the `<txp:link_to_next />` tag with the contents ready for display.

## Deferred or delayed output

Now, let's take this a step further. Say you wanted the link to the next article to be displayed _above_ the article:

```
<txp:link_to_next>Next article</txp:link_to_next>
...
<txp:article />
```

This might throw a warning because you are trying to display a link to the next article before Textpattern knows which is the current article.

The parser's variable number of passes can be used to your advantage to definitively defer processing until a particular pass is reached. This allows you to control at what stage information is fetched, allowing you to process tags that appear earlier in the page at a later stage.

The `<txp:hide />` tag is used to hide its content from the parser so you can put comments in your templates without fear of them appearing in the rendered output to the visitor. But it has a `process` attribute that allows you to control how 'hidden' the content actually is.

If you supply an integer to the `process` attribute, the content will only be executed when that nominated pass is reached:

```
<txp:hide process="2">
   <txp:link_to_next>Next article</txp:link_to_next>
</txp:hide>
...
<txp:article />
```

After the first pass, the `<txp:article>` tag will have been established so Textpattern knows which article this is. Thus on the second pass, the previously hidden content can safely be executed and the link rendered on the screen _above_ the article content, even though the content was determined afterwards.

Actually, `<txp:link_to_next />` tag "knows" it needs the current article data, so it automatically postpones itself to the next pass if these data are not yet available. Hence you don't need to manually "hide" it in _this_ case, but altering the parsing order might be necessary in more complex structures.

## PHP in templates

Multiple passes do have one major restriction: Textpattern will only render PHP (`<txp:php>` tags) in the first pass. If it encounters any such tags or content in later passes, it rejects them and throws the 'PHP is not permitted in Pages' warning.

This is a security measure to prevent PHP code from being injected by malicious content (e.g. if the first pass returned some dodgy PHP that was read from some user input, it would otherwise get executed in pass 2 or higher).

Since PHP is outlawed in passes higher than 2, you may see the error message about it being forbidden, regardless of the setting of your 'Allow PHP in Pages' preference. This can be a head-scratcher, but it's simply a by-product of this security feature.

If you need a PHP code to be used in a tag processed on the second pass, assign its output, if possible, to a variable processed on the _first_ pass:

```
<txp:variable name="the_year" escape="trim">
<txp:php>
echo date('Y');
</txp:php>
</txp:variable>
```

Putting that somewhere near the top of the Page template will run the PHP and assign its content to the variable named `the_year`. Then in your deferred block you can display the contents of this pre-computed variable instead of running the PHP directly:

`<txp:variable name="the_year" />`

