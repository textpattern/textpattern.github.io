h1. How do I change the article markup? [todo]

By default, Textpattern articles are written in _Textile_, the Humane Web Text Generator.  Some quick examples of Textile in action:

bq. @&#42;bold*@ becomes *bold*
@&#95;emphasis_@ becomes _emphasis_
@&#34;link":https://textpattern.com/@ becomes "link":https://textpattern.com/

You can read more about Textile "here":http://textism.com/tools/textile/, and try it out for yourself.

As well as explicit markup such as the examples above, Textile automatically wraps blocks of text with @<p>…</p>@ tags, and turns line breaks into @<br />@ tags.

If this is inconvenient, you can turn Textile off individually for a single article with the _Use Textile_ setting under _Advanced Options_, just to the left of the main article text on the *content > write* page.  There are separate settings for the body and excerpt.

To turn off Textile by default, look for the _Use Textile_ setting under *admin > preferences*.

Both options require that you resave your article before they have any effect.

If you just want to disable Textile for part of an article, you can use several methods:

1. A space at the beginning of a line will turn off @<p>…</p>@ tags for that line

2. To disable Textile for a few words, use =&#61;…=&#61;

3. To disable Textile for a larger block, use @&#60;notextile>…&#60;/notextile>@

If you're writing an article body or excerpt that consists mainly of hard-coded HTML or Textpattern tags, or where you need exact control over the markup, your best bet is to turn off Textile for that article, and hand-code the markup yourself.
