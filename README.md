# Textpattern CMS user documentation

See the [Main Index](index). This is the new user documentation, and it's a work in progress.

On this page are guidelines for doc authors:

* [Filename (URL) conventions](#user-content-filename-url-conventions)
* [Document page structure](#user-content-document-page-structure)
* [Concise copywriting tips](#user-content-concise-copywriting-tips)
* [Brand identity](#user-content-brand-identity)
* [Administration-side references](#user-content-administration-side-references)
* [Typo gotchas to watch out for](#user-content-typo-gotchas-to-watch-out-for)
* [Markup](#user-content-markup)

## Filename (URL) conventions

To ensure SEO friendly URL patterns, and for consistency, all directory names/file names should be structured using the following rules:

1. All text in lowercase.
2. Use hyphens, *not* underscores, to separate words within the URL.
3. Use Markdown formatting, **not** Textile. Jekyll uses the [kramdown syntax](http://kramdown.gettalong.org/syntax.html) of Markdown.
4. Ensure filenames have `.md` extension.

~~~
file-download-description.md
~~~

## Document page structure

Make doc pages **scannable** with a **consistent structure** across them, as much as possible. These guidelines can help:

1. Start page with an `h1` (`#` in Markdown) header that serves as the document's title.
2. Where it's reasonable to do so, follow the title with a brief introductory paragraph that sums up the page or it's purpose ([intro paragraph example](administration/index)).
3. If you have more than three `h2` (`##` in Markdown) sections on the page (or three that are kind of long), follow the `h1` title (or intro paragraph, see previous example) with an in-page ToC ([ToC example without intro paragraph](security/index)). Do this by:
   * adding "On this page:" in normal text, followed by
   * an unordered list of links to the `h2` headers only (e.g. `[Header label](#user-content-xxx)`), and
   * use `#user-content-xxx` as the anchors, where `xxx` is the heading text in lowercase with hyphens (i.e. for linking to `## Example heading` the anchor would be `(#user-content-example-heading)`).
4. Avoid using `h4`-`h6` header levels, if possible, especially `h5`-`h6`. Deep structuring means the copy is too complex for new-user docs. Try and structure content with `h2`-`h3` only (and `h4` if really necessary).
5. Use [kramdown footnotes](http://kramdown.gettalong.org/syntax.html#footnotes) in a given section for any "tips" or side details not needing said in the primary paragraph. Use a subsequent number for each new footnote on the page, even if they're not in the same section. ([Footnote examples](security/index.textile))

## Concise copywriting

To improve the ability to scan pages as described above, write as concisely as you can, and use the style guide @@link needed@@. Here are a few quick wins for cleaner copy:

1. Write in the third-person. You're speaking to an individual on behalf of Textpattern, so you don't use "me", "I", "my", etc. (But you will use "you", "your", etc.) When you don't talk about something from your personal point of view, you say a lot less. It's magic.
2. Avoid passive 'to be' and 'to have' verb structures (e.g. could be/have, should be/have, might be/have). Passive writing is not only miserable to read, it bloats copy with unnecessary words. Find a more direct/active way of wording the phrase. For example, instead of "The widget should be at the top of the sidebar." say "Put the widget at top of the sidebar."
# Avoid useless adverbs like "very", "really", "only" and many others. For example, "If you really want to do that." is better as "If you want to do that." A person either wants to or doesn't, adding "really" does't change anything.
# Question every use of "that" and "just" in your copy. It's easy to abuse both words. Every time you use "that" or "just" in a sentence, read the sentence and see if it still makes sense without the word. Most of the time it will. If it does, it's probably correct to leave the words out.
# Avoid over use of adverbs, idioms, and other partial clauses at the beginning of sentences: "Meanwhile, ...", "On the other hand, ...", "However, ...", "In other words, ...", "Nevertheless, ..." and so forth. This doesn't mean never use them, but if you're using them regularly, or more than once in a paragraph, then it's too much. Rewrite the sentences more concisely without the clause breaks.
# Remove words from your sentences until you can't remove anymore for the meaning to remain clear.
# Break long, multi-clause sentences into shorter sentences. (Careful here, though, sometimes a single longer sentence can read more smoothly if it's free of needless word bloat. Multiple shorter sentences doesn't mean result in choppy stilted reading. Use your best judgement.)

## Brand identity

* Do not use "Txp" and "TXP". While these pet uses are convenient in the support forum, they lend confusion to brand awareness in official docs. The world is still confused between "Textpattern" vs. "TextPattern", for example. Always spell "Textpattern" out fully. This will also help you see if you're using the name too repetitively, which can be a sentence bloat problem.

## Administration-side references

Important rules for consistency, which also has implications for plugin authors.[1]

* Use "*administration side*" correctly when used as an _adjective_ versus a _noun_:
** *noun* form (no hyphen is used): E.g.: "The login to the administration side is located at __/textpattern__." (Write "administration" out fully to distinguish the place from a person ("admin")
** "ajective" form (hyphen is used): E.g.: "The administration-side panels are organized by **Content**, **Presentation**, and **Admin** (and **Extensions for admin-side plugins). (As the example shows, you may use "admin-side" when used as an ajective, due to it's popularity and convenience, but writing it out fully as "administration-side" is always preferred.)
**
* When referring to admin-side panel names, panel section headers, form control labels, and button labels, spell the name exactly as it appears in the panel and make it bold (double-asterisks each side in Textile):
** Non-linked text: E.g.: "The articles table on the **Articles** panel shows article IDs, titles, dates posted, the sections they're in, and their current status.@
** Linked text: E.g.: @See all your articles listed in the **"Articles":#** panel.@
* When referring to a preference label, specifically, quote the text and make it italic (double underscores each side). For example: @You can control widowed words in article titles by selecting "Yes" on the "__Prevent widowed words in article titles?__" preference.@
* When referring to a form control options (e.g, select-menu options, radio button options, etc) or any other non-header UI dialogue, quote the text and leave it in normal format. E.g.: @When you're ready to publish your draft, change status to "Live" and click the *Save* button*.@
* When referring to system feedback dialogue (green, yellow, red), format the text exactly as it appears in the UI messages.[2]
* When referring to file names, make them italic (double underscores) and include the extension. E.g.: __.htaccess__ and __index.php__. (Do not make them appear as code, unless they are part of a code snippet.)

fn1. Plugin authors must follow same editorial rules in their "plugin help files":http://docs.textpattern.io/development/plugin-template-help.

fn2. There should be three CSS class selectors to use in the Jekyll site that makes this easy, one for each feedback color type, even providing the background color.

## Typo/grammar gotchas to watch out for

* User docs are written using "British English spelling and punctuation":https://en.wikipedia.org/wiki/American_and_British_English_spelling_differences conventions. But don't kill yourself over it.
* Use "login" and "logout" when it's a noun (e.g. "the login location").
* Use "log in" and "log out" when it's a verb (e.g. "after you log in" or "after logging in").
* Do not use "tab" -- use "panel" -- when talking about the admin-side panels.[3] The only exception is you're specifically referring to a UI text element where the word is encoded (e.g. in Basic preferences, the preference "Default admin tab").[4]

fn3. The presentational theme of the admin-side was originally conceived as a set of manilla file folders, with each region label depicted as a folder “tab”. This presentational concept has left an impact on the mental models of long-time users, who will frequently refer to panels as “tabs” even though they may use an admin theme that does not depict the file folder concept. New docs should not perpetuate that false concept and terminology, particularly as the file folder concept is not depicted in the admin-side navigation of the official admin-side theme -- Hive. The use of “tab” in the admin-side UI, such as in preferences, help dialogue, and so forth, is probably only clear to veteran Textpattern users. When/if the admin-side UI is cleaned of all use of the word "tab", then docs can be fully cleaned of the use as well, but we can get most of the way there by only using "tab" when it's in direct reference of an UI element label.

fn4. These uses of "tab" in the admin-side UI preferences, for example, should be treated as bugs that need fixed, and issues written for them.

## Markup

### Tables

Use Textile tables, but they need to have a @notextile. <div>@ wrapper around them too, like this:

~~~ markdown
notextile. <div class="tabular-data" itemscope itemtype="http://schema.org/Table">

|_. Header |_. Header |_. Header |
| data | data | data|
| etc | etc | etc |

notextile. </div>
~~~
