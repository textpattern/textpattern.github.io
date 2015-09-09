h1. How do I make links open in a new window? [todo]

You can use the "PR Block plugin":http://thresholdstate.com/articles/3741/pr-block-documentation to add @rel@, @target@ and similar attributes to links.

Here's a simple method of making all links contained within an article body open in a new window:

bq. @<txp:zem_prblock target="_blank">@
@<txp:body />@
@</txp:zem_prblock>@

The plugin will modify any @<a href=...>@ tags it encloses, so you can wrap the @zem_prblock@ tag around a "txp:linklist":http://textbook.textpattern.net/wiki/index.php?title=linklist tag, for example.

For a standards-compliant solution, use the PR Block plugin to add a @rel="external"@ attribute to links:

bq. @<txp:zem_prblock rel="external>@
@...@
@<txp:zem_prblock>@

Then use "javascript":http://www.sitepoint.com/article/standards-compliant-world to make all @rel="external"@ links open in a new window.
