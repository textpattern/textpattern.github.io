---
layout: document
category: Tag basics
published: true
title: Parser and passes
description: The Textpattern parser does its job in stages, which permits extra control over output.
---

# Parser and passes

Textpattern's parser does its job in stages, which permits extra control over output.

On this page:

* [Multiple passes](#multiple-passes)
* [Deferred or delayed output](#deferred-or-delayed-output)
* [PHP in templates](#php-in-templates)

## Multiple passes

The Textpattern parser is the workhorse that converts the `<txp:...>` tags into dynamic content when the page is rendered. At heart, it is a linear parser, meaning it goes through your Page template and Forms line by line, tag by tag, starting from the inside out.

If you have relatively simple Pages it can do this in one sweep - what we refer to as a *pass*. For more complicated uses - such as when using [tags in attributes](parsing-tag-attributes) - the parser may need more than one pass to convert all tags. It keeps going back over the document as many times as needed to convert all tags, and then renders the final result to the visitor.

Let's take a simple example of a tag that only requires a single pass:

```
<txp:output_form form="side-panel" />
```

Upon encountering this tag, the parser has all the information it needs to fetch the `side-panel` Form, process it to retrieve its output and replace the `<txp:output_form />` tag with the contents ready for display.

Note that if the contents of the `side-panel` Form contains other Textpattern tags, they will be converted in this pass too because they are wholly encapsulated within it (assuming no tag-as-attribute constructs are used).

Now, let's take this a step further. Say you wanted the name of the Form to be dynamically constructed from the section name:

```
<txp:output_form form='<txp:section />-panel' />
```

On its first pass, Textpattern (working from inside out) looks at the `form` attribute first. It sees that it has a tag in it, so it replaces the `<txp:section />` with the current section name.

Once it has done that, being a linear parser, it has already "gone past" the `<txp:output_form...` tag so when it reaches the end of the page, this is what is left in the middle of the document if the visitor is browsing the 'articles' Section:

```
<txp:output_form form='articles-panel' />
```

Textpattern reaches the end of the first pass, notices that there are still unprocessed tags, which triggers a second pass. It looks through the document again and reaches the `<txp:output_form />` tag. This time, it has all the information it needs to fetch the Form and process it.

So by the end of the second pass, there are no tags left and the final result is shown to the visitor, with all the tags replaced with dynamic content.

## Deferred or delayed output

The parser's variable number of passes can be used to your advantage to definitively defer information from being processed until a particular pass is reached. This allows you to control at what stage information is fetched, allowing you to process tags that appear earlier in the page at a later stage.

The `<txp:hide>` tag is used to hide its content from the parser so you can put comments in your templates without fear of them appearing in the rendered output to the visitor. But it has a `process` attribute that allows you to control how 'hidden' the content actually is.

If you supply an integer to the `process` attribute, the content will only be executed when that nominated pass is reached:

```
<txp:hide process="2">
   <txp:link_to_next>Next article</txp:link_to_next>
</txp:hide>
...
<txp:article />
```

Without the `<txp:hide>` tag, this might throw a warning because you are trying to display a link to the next article before Textpattern knows which is the current article. After the first pass, the `<txp:article>` tag will have been established so Textpattern knows which article this is. Thus on the second pass, the previously hidden content can safely be executed and the link rendered on the screen _above_ the article content, even though the content was determined afterwards.

## PHP in templates

Multiple passes do have one major restriction: Textpattern will only render PHP (`<txp:php>` tags) in the first pass. If it encounters any such tags or content in later passes, it rejects them and throws the 'PHP is not permitted in Pages' warning.

This is a security measure to prevent PHP code from being injected by malicious content (e.g. if the first pass returned some dodgy PHP that was read from some user input, it would otherwise get executed in pass 2 or higher).

Since PHP is outlawed in passes higher than 2, you may see the error message about it being forbidden, regardless of the setting of your 'Allow PHP in Pages' preference. This can be a head-scratcher, but it's simply a by-product of this security feature.

Returning to the earlier example, if your `articles-panel` Form had a block of PHP in it:

```
<txp:php>
echo date('Y');
</txp:php>
```

it would be rejected by the parser and the error message would be thrown because the PHP is attempted to be executed in the second pass.

Knowing about the `process` attribute, the solution should be clear: ensure that PHP code is wrapped in `<txp:hide process="1">...</txp:hide>` tags or make sure that it is moved somewhere else in the Page template so it can run in pass 1.

Another simple trick to achieve this is to assign any PHP, if possible, to a variable:

```
<txp:variable name="the_year" escape="trim">
<txp:php>
echo date('Y');
</txp:php>
</txp:variable>
```

Putting that somewhere near the top of the Page template will run the PHP and assign its content to the variable named `the_year`. Then in your `articles-panel` Form you can display the contents of this pre-computed variable instead of running the PHP directly:

`<txp:variable name="the_year" />`

