---
layout: document
category: Brand
published: true
title: Textpattern editorial style guide
description: These guidelines concern all text content published on Textpattern platforms, and any outbound content for marketing reasons.
---

# Textpattern editorial style guide TODO

These guidelines concern all text content published on Textpattern platforms, and any outbound content for marketing reasons. Following these guidelines will help you produce accurate, clear, and concise copy that Textpattern audiences will find easier to read, translate, understand, and use.

The main sections are organized alphabetically by topic, which may be different from what you expect, but it should help you scan entries faster and thus be more usable (feedback on your experience is welcome).

On this page:

* "Comma (serial)":#comma
* "Language (International English conventions)":#lang
  * "Spellings":#spell (organized alphabetically)
  * "Quotations":#sec1-1-1
* "Latin and foreign expressions":#sec2
* "Point of view (personal pronouns)":#sec3
* "x":#sec1
* "x":#sec1
* "x":#sec1
* "Textpattern usage":#sec1

## Audience perspective per platform

The point of view to use in your writing depends on which Textpattern platform you're writing for.

### Textpattern User Documentation

The perspective of documentation is that of an anonymous expert writing to the first-time administrator, and the operational context is a default (out-of-the-box) Textpattern CMS installation.[^1] Write in the *second-person* point of view only. In other words, use "you", "your", and "yours" when talking to the reader. For example:

bq. Manage your account data in the **Users** panel.

Never use the first-person (I/we, me/us, my/our…).It's easy to forget and start using "we" and "us" as if you and the reader are labouring together. But don't do that. Take the second person stance and empower the reader. Make them feel like they're doing it alone, because they are. You're just an impartial messenger delivering the instructions. Change "we" to "you", or "our" to "your".

For the most part you shouldn't need the third-person either (his, her, them, they). But there may be exceptions, such as when talking about the "roles and privileges":https://docs.textpattern.io/administration/user-roles-and-prvileges of other website users besides the administrator (who you're addressing).

[^1]: But it's okay to use footnotes like this to make reference to common extensions, notably when talking about the administration side.

### Textpattern CMS website (audience: various)

Write in the first-person *and* second-person. The perspective in this case is Textpattern (the project), specifically using "we" and "us".

Do not write in first-person, regardless of whether the pronouns are normative, objective, or possessive. You should never be using these: I/we, me/us, my, mine, our, ours.

Likewise, do not use the third-person in your copy. So don't use these words: he, she, they … him, her, them … his, her, hers, their, theirs … it. They're indirect and totally unnecessary.

## Language (Oxford English conventions)

Textpattern's default language is English, and follows the conventions provided by Oxford University Press resources, notably the __New Oxford Style Manual__, 2nd Edition, and the __"Oxford English Dictionary":https://www.oed.com__ (OED). All Textpattern platforms designate this choice of English usage in the language tags of website templates:

~~~ html
<html lang="en-GB-oxendict">
~~~

By adopting the Oxford way for Textpattern's international English copy, three main benefits are gained:

1. It provides a precise reason and source for the decision to write words a certain and consistent way, without wishy-washy and debatable explanations.
2. It's definable in metadata to a more precise level: @lang="en-GB-oxendict"@, because even in Great Britain there's an increasing degree of variation with how words are spelled and punctuation is used.
3. It normalizes the effort to create copy (due to Oxford rules being a fair compromise across British and American English conventions), so one group of writers/editors doesn't have the upper hand on the other. Oxford rules may (debatably) be the most "International" form of English usage.

The rest of these guidelines will specify conventions in context to topics.

## Spellings

Concepts and word forms are listed alphabetically.

### American or British English?

There are many differences between British and American English with regard to spelling. Textpattern handles this decisively by using the "Oxford English Dictionary":https://www.oed.com (OED), as described in the "Languages":#lang section of these guidelines.

The following table compares conventional patterns of spelling between North American regions, Great Britain, and the OED.[^2] The words shown are simply representative of all possible words having those patterns. Use the OED conventions (*en-GB-oxendict*) when writing Textpattern content.

notextile. <div class="tabular-data" itemscope itemtype="https://schema.org/Table">

| |_. -ize/-ise |_. -yze/-yse |_. -or/-our |_. -ler/-ller |_. -og/-ogue |_. -am/-amme |_. -ense/-ence |_. -ter/-tre |
|_. en-GB-oxendict | realize | analyse | behaviour | traveller | catalogue | programme<br>program (computer code) | defence | centre |
|_. en-GB | realise,<br>realize | analyse | behaviour | traveller | catalogue | programme<br>program (computer code) | defence | centre |
|_. en-CA | realize | analyze,<br>analyse | behaviour,<br>behavior | traveller | catalogue | program,<br> programme | defence | centre |
|_. en-US | realize | analyze | behavior | traveler | catalog | program | defense | center |

notextile. </div>

The main thing to note is there's little difference between British English and the Oxford English Dictionary, except for words ending in "-ize/-ise" and their related grammatical forms. In other words, use "z" in all such forms (e.g. organize, organizer, organization, organizational).

Also note that "program" (not "programme") is the correct spelling when used in context of software only. Likewise you would never use "centre" where "center" was required in code (e.g, @text-align:center;@). And it would be "data modelling", according to the -ler/-ller convention, not 'data modeling'.

[^2]: See [Oxford spelling](https://en.wikipedia.org/wiki/Oxford_spelling).

### Cannot / can't / can _not_

Use "cannot" (or "can't") in the context that someone absolutely can *not* do something. The only time you shouldn't use "cannot" is when you're emphasizing "not", just like demonstrated in the previous sentence.[^3]

[^3]: See [Cannot vs. can not](https://www.dailywritingtips.com/cannot-or-can-not/)

## Punctuation

Required punctuation usage is discussed for common marks and symbols.

### Comma (serial)

More important than consistency, in this case, is ensuring your sentences are grammatically correct. That said, if you use serial commas (aka, "Oxford commas") every time, you won't be wrong, even if you don't need one.

For example, both forms of the following sentence are correct (the serial comma is in the second, between "presentation" and "and"):

bq.. Separating content, presentation and behaviour is always a smart thing to do.

Separating content, presentation, and behaviour is always a smart thing to do.

p. If you write a sentence like that either way, it's fine. If you write a sentence without a serial comma and a Textpattern editor later changes it to have one, just look the other way and ignore it, because it's better to have a serial comma than not.

The opposite is not true. Sometimes a missing serial comma changes the meaning of a phrase considerably, with unintended consequences, and there are poignant examples to demonstrate this:

bq. I saw Bob's uncle, a boozer and a cruiser in the park, climb into that cardboard hut.

Poor Bob's uncle. He's described there as being a boozer and a cruiser because of a missing serial comma. But add the serial comma (after "boozer") and you realize the sentence is talking about three different people, though the story is still a bit dark.

Use a serial comma and you'll never be wrong. If you don't use one, make sure the sentence is grammatically correct, or you could end up like Bob's uncle.

h3(#quotes). Quotations marks

Use double quotation marks when quoting text, such as admin-side UI form control labels and options, and put the closing quotation mark _inside_ the end punctuation of a clause or full phrase, unless the quoted part has it's own ending punctuation, then it goes outside.[^3]

If you ever need to quote text that contains a quotation, use double quotation marks for the outer quote, and single quotation marks for the inner quote.

bq. The instruction says, "Put your domain name in 'Site URL'."

**Straight vs. curly quotation marks:**

Be mindful when writing Textile links that your text editor is using straight quotation marks, not curly quotation marks. While the latter are attractive for regular text copy, they won't work for links. Thus straight quotations marks may prove best for documentation portability over the long-term. This means you'll have quote marks looking like "this" instead of "this".

[^3] See section on __User-interface content__ for UI text formatting conventions.

## Latin and foreign expressions

In short, don't use them, with exception to the __Latin__ notes below. Stick with simple and concise English and your copy will be easier for people to understand (and translate, if they desire).

**Latin:**

You're not writing an academic paper, so don't use __Latin__, whether abbreviations or full words, except as follows…

You may use use "via" and "versus", which are now universally common, and you don't have to italicise them.

You may use common __Latin__ abbreviations, but _only_ when used in parenthetical phrases or clauses. For example, do _not_ do this:

bq. The **Content** region panels included **Write**, **Articles**, **Images**, **Links**, etc. [or et cetera.]

The preferred method instead is to replace the __Latin__ and parenthetical clause entirely for a regular English expression, which is a cleaner sentence:

bq. The **Content** region contains all the content panels, like **Write**, **Articles**, **Images**, and so forth.

But it would also be okay to put the __Latin__ (abbreviation only) in a parenthetical clause and shorten the list of items to three max:

bq. The **Content** region contains all the content panels (**Write**, **Articles**, **Images**, etc.).

You don't have to italicize Latin abbreviations in parenthetical breaks, as described.

## Textpattern identity

Use the Textpattern name fully and correctly.

### Brand name usage

Textpattern is spelled "*Textpattern*". Look at that closely. That's not two words, and there's no capital "p". This isn't WordPress, and "Text" isn't used as an adjective. Nope. Textpattern is proudly all one word with one capital letter - a proper noun.

Always spell "Textpattern" out fully in official copy. Never abbreviate the name, like Txp, TXP, TxP, txP, or txp (unless your writing Textpattern tags in code examples). While these invented pet uses are convenient in the forum, they lend confusion to brand awareness in official copy. The world is still confused between "Textpattern" vs. "TextPattern", after all.

Good news! Writing the name out fully has the added benefit of helping you see when you're using the name too repetitively, which is a sentence bloat problem.

Finally, while some feel "Textpattern CMS" is important for search engine ranking (arguably), it's not necessary to write "CMS", and especially in user documentation (marketing copy at textpattern.com, maybe). Textpattern began as "Textpattern" alone in 2003, and it's still recognised by that name. Leave "CMS" out; it's needless distraction and word bloat.

### Platform name usage

When referring to one of the Textpattern platforms, use the proper noun, not the domain name, unless you're specifically naming the domain name, in which case do not abbreviate.

For example, here we name the main site by it's proper noun and clarify the correct _full_ domain name from the other confusing options.

bq. Go to the "Textpattern":# website to download the latest version, which is at textpattern.com, not textpattern.org or docs.textpattern.io.

It's a silly example, since the link would suffice to direct somebody, but the point is made about how to reference a platform name versus naming the domain specifically.

## Concise copywriting

To improve the ability to scan pages as described above, write as concisely as you can, and use the style guide [link needed]. Here are a few quick wins for cleaner copy:

* Write in the third-person. You're speaking to an individual on behalf of Textpattern, so you don't use "me", "I", "my", etc. (But you will use "you", "your", etc.) When you don't talk about something from your personal point of view, you say a lot less. It's magic.
* Avoid passive 'to be' and 'to have' verb structures (e.g. could be/have, should be/have, might be/have). Passive writing is not only miserable to read, it bloats copy with unnecessary words. Find a more direct/active way of wording the phrase. For example, instead of "The widget should be at the top of the sidebar." say "Put the widget at top of the sidebar."
* Avoid useless adverbs like "very", "really", "only" and many others. For example, "If you really want to do that." is better as "If you want to do that." A person either wants to or doesn't, adding "really" does't change anything.
* Question every use of "that" and "just" in your copy. It's easy to abuse both words. Every time you use "that" or "just" in a sentence, read the sentence and see if it still makes sense without the word. Most of the time it will. If it does, it's probably correct to leave the words out.
* Avoid over use of adverbs, idioms, and other partial clauses at the beginning of sentences: "Meanwhile, …", "On the other hand, …", "However, …", "In other words, …", "Nevertheless, …" and so forth. This doesn't mean never use them, but if you're using them regularly, or more than once in a paragraph, then it's too much. Rewrite the sentences more concisely without the clause breaks.
* Remove words from your sentences until you can't remove anymore for the meaning to remain clear.
* Break long, multi-clause sentences into shorter sentences. (Careful here, though, sometimes a single longer sentence can read more smoothly if it's free of needless word bloat. Multiple shorter sentences doesn't mean result in choppy stilted reading. Use your best judgement.)

## User-interface content

Follows these when writing about Textpattern UIs, which has implications for plugin authors too.[^1]

* Use "*administration side*" correctly when used as an _adjective_ versus a _noun_:
** *noun* form (no hyphen is used): E.g.: "The login to the administration side is located at __/textpattern__." (Write "administration" out fully to distinguish the place from a person ("admin")
** "ajective" form (hyphen is used): E.g.: "The administration-side panels are organised by **Content**, **Presentation**, and **Admin** (and **Extensions for admin-side plugins). (As the example shows, you may use "admin-side" when used as an ajective, due to it's popularity and convenience, but writing it out fully as "administration-side" is always preferred.)
**
* When referring to admin-side panel names, panel section headers, form control labels, and button labels, spell the name exactly as it appears in the panel and make it bold (double-asterisks each side in Textile):
** Non-linked text: E.g.: "The articles table on the **Articles** panel shows article IDs, titles, dates posted, the sections they're in, and their current status.@
** Linked text: E.g.: @See all your articles listed in the **"Articles":#** panel.@
* When referring to a preference label, specifically, quote the text and make it italic (double underscores each side). For example: @You can control widowed words in article titles by selecting "Yes" on the "__Prevent widowed words in article titles?__" preference.@
* When referring to a form control options (e.g, select-menu options, radio button options, etc) or any other non-header UI dialogue, quote the text and leave it in normal format. E.g.: @When you're ready to publish your draft, change status to "Live" and select the *Save* button*.@
* When referring to system feedback dialogue (green, yellow, red), format the text exactly as it appears in the UI messages.[^2]
* When referring to file names, make them italic (double underscores) and include the extension. E.g.: __.htaccess__ and __index.php__. (Do not make them appear as code, unless they are part of a code snippet.)

fn1. Plugin authors must follow the same editorial rules in their "plugin help files":https://docs.textpattern.io/development/plugin-template-help.

fn2. There are four CSS class selectors to use in the Jekyll site that makes this easy, one for each feedback color type: %(information)information%, %(success)success%, %(warning)warning%, and %(error)error%.

## Style and tone

Be human and relaxed, but get straight to the point and out of the way. Leave your personality out of it. If you think you're being funny, you're probably not.

## Typo/grammar gotchas to watch out for

* User docs are written using "British English spelling and punctuation":https://en.wikipedia.org/wiki/American_and_British_English_spelling_differences conventions. But don't kill yourself over it.
* Use "login" and "logout" when it's a noun (e.g. "the login location").
* Use "log in" and "log out" when it's a verb (e.g. "after you log in" or "after logging in").
* Do not use "tab" - use "panel" - when talking about the admin-side panels.[^3] The only exception is you're specifically referring to a UI text element where the word is encoded (e.g. in Basic preferences, the preference "Default admin tab").[^4]

fn3. The presentational theme of the admin-side was originally conceived as a set of manilla file folders, with each region label depicted as a folder "tab". This presentational concept has left an impact on the mental models of long-time users, who will frequently refer to panels as "tabs" even though they may use an admin theme that does not depict the file folder concept. New docs should not perpetuate that false concept and terminology, particularly as the file folder concept is not depicted in the admin-side navigation of the official admin-side theme - Hive. The use of "tab" in the admin-side UI, such as in preferences, help dialogue, and so forth, is probably only clear to veteran Textpattern users. When/if the admin-side UI is cleaned of all use of the word "tab", then docs can be fully cleaned of the use as well, but we can get most of the way there by only using "tab" when it's in direct reference of an UI element label.

fn4. These uses of "tab" in the admin-side UI preferences, for example, should be treated as bugs that need fixed, and issues written for them.

Capitalization
Mainly titles, headings, navigation links, etc. are the issue with capitalisation. Most important is to be consistent, and sentence-case headings are more effective in this respect.
The logic of using sentence-case for consistency is especially apparent when one in a series of headings is written as a question.
Correct → Why use the text editor?
So it makes sense to use sentence-case for non-question headings too.
Correct → How to use the tab builder
Correct → About us
This does not mean proper nouns should not be capitalised.
Correct → How to use Textpattern's text editor
Wrong → How to use textpattern's text editor
Wrong → Why use textile?
All-caps
Do not use all-caps to emphasise a word. It's unnecessary and a barrier to accessibility. A screen reader will read each letter separately instead of together as one word.
Numerals and special characters
Numerals
Reserve numerals for dates, prices and other numeric data, but write out the numeral for counts if it's less than ten (10). For example, instead of "a 3-day event", use "a three-day event".
Ampersands (&)
Do not use ampersands in place of the conjunction "and". However, if they used for a legitimate reason, ensure the character is marked up as an ASCII value, not a glyph. For example, Sanford & Sons Inc. would be:


<p>Sanford &amp; Sons Inc.</p>
Note: The p element used here is arbitrary.
Links
Keep links in body copy to a minimum. Ensure links that are used are focused on calls to action (e.g. "Download") and/or contextual integration of different topic pages (e.g. links between different pages in wiki documentation). Only link to third-party websites if doing so aides the user in completing a Textpattern-related task.
Terminology
Textpattern terms as admin-side panel and link references
When using the name of any admin-side panel to mean the location of that panel, it should always be a non-italicised link to the given wiki page it's referring to, and the link should only be on the word itself, i.e. the link text should be the same as the name of the wiki page it's pointing to.
Correct → Most of your content is created in the Write panel.
Wrong → Most of your content is created in the Write panel.
Wrong → Most of your content is created in the Write panel.
 There are two exceptions to the rule in bold above. Wiki pages for the Images and Comments panels are titled "Images (panel)" and "Comments (admin-side)", respectively. These are necessary (though inconsistently named) titles to avoid wiki page title conflicts with Tag pages having the same names. But they are unattractive, so we use custom links to these pages via wiki syntax.
Correct → Photos and other images are uploaded in the Images panel.
Correct → You can edit article comments in the Comments panel.
Wrong → Photos and other images are uploaded in the Images (panel).
Wrong → You can edit article comments in the Comments (admin-side) panel.
Textpattern terms as semantical (non-linked) references
Certain panel names—often considered to be Textpattern's semantical features—have a lot of similarity with general web terms, and thus can be easily confused if not clearly distinguished in documentation. Textpattern terms used in context of semantics, but not linked to panel documentation pages, should be capitalised and italicised.
Correct → All Textpattern Sections must have a Page and Style associated to it.
Wrong → All Textpattern Sections must have a Page and Style associated to it.
        (Because it suggests the context of an non-linked panel, which shouldn't exist.)
Wrong → All Textpattern Sections must have a page and style associated to it.
        (Because it lacks capitalisation as used in Textpattern's UI.)

Wrong → All Textpattern Sections must have a page and style associated to it.
        (Because there is no distinction from any other context.)
Non-Textpattern terminology

Use these word constructs when used at all in text:

* When referring to the World Wide Web, capitalise it.
* When referring to either the web or the internet, don't capitalise them (i.e 'the web', not 'the Web').
* Use website (not web site).

Versioning
The proper way write the version releases of Textpattern. This is less a stylistic issue and more a Textpattern development policy; however, it's relevant to the template:Txp current version that provide this dynamic value in multiple places in documentation. Ensure the version is correct in this template against the current Textpattern release.
Appendix A: Visual branding
(forthcoming)
Appendix B: Template metadata
For the sake of referencing, all Textpattern sites maintained on Joyent servers in support of the Textpattern project should use "Textpattern CMS" in template header data.
Recommended use of name (arbitrary examples only):
Complete → <title>Textpattern CMS – Homepage</title>
Complete → <meta name="description" content="The Textpattern CMS homepage">
Complete → <meta name="keywords" content="Textpattern, CMS, homepage">


Not recommended:
Incomplete → <title>Textpattern – Homepage</title>
Incomplete → <meta name="description" content="The Textpattern homepage">
Incomplete → <meta name="keywords" content="Textpattern, homepage">
References
1. Clarke, Andy (2008).  A client-focused copy style guide. For a Beautiful Web. 15 Dec 2010.
2. Cohen, Georgy (2010). Mandy Brown and Erin Kissane at Content Strategy New England: A Pragmatic Approach to Editorial Style. Georgy Cohen: Writing and Web Communications. 15 Dec 2010.
3. Gruber, John (2010). Title Junk. Daring Fireball. 21 December 2010
4. Saloka, Elizabeth (2009). 5 Tips on Working with a Style Guide. Brain Traffic Blog. 18 Dec 2010
