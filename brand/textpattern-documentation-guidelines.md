---
layout: document
category: Brand
published: true
title: Textpattern documentation guidelines
description: Guidelines for contributions to Textpattern CMS user documentation.
---

# Textpattern documentation guidelines

These guidelines, an extension of Textpattern’s [editorial style guide](https://docs.textpattern.com/brand/textpattern-editorial-guide), are specifically for the editorial upkeep of the [Textpattern user documentation](https://docs.textpattern.com/). Documentation editors, authors, and all interested contributors will want to read up here.

**On this page:**

* [Target audience](#target-audience)
* [Scope and depth of material](#scope-and-depth-of-material)
	* [Scope of documentation](#scope-of-documentation)
	* [Depth of page content](#depth-of-page-content)
* [Collaborative editing process](#collaborative-editing-process)
  * [New documentation pages](#new-documentation-pages)
     * [Using repository Issues](#using-repository-issues)
     * [Determining new topics](#determining-new-topics)
  * [Revising existing pages](#revising-existing-pages)
* [Linking strategy](#linking-strategy)
  * [Cross-links](#cross-links)
  * [Anchor links](#anchor-links)
* [Writing and editing](#writing-and-editing)
  * [Author perspective](#author-perspective)
  * [Concise writing tips](#concise-writing-tips)
  * [Grammar and spelling traps](#grammar-and-spelling-traps)
    * [Verb forms vs. noun forms](#verb-forms-vs-noun-forms)
    * [Verb forms vs. noun forms](#verb-forms-vs-noun-forms)
  * [Abbreviations](#abbreviations)
  * [Brand name](#brand-name)
  * [Administration panels context](#administration-panels-context) 
    * [Administration side vs. Administration-side](#administration-side-vs-administration-side)
* [Formatting interface strings](#formatting-interface-strings)
  * [Headers, labels, and paths](#headers-labels-and-paths)
  * [Alert messages](#alert-messages)
* [Markup](#markup)
	* [Selectors and attributes](#selectors-and-attributes)
	* [Definition lists](#definition-lists)
  * [Tables](#tables)
  * [Notes](#notes)
     * [Notes in tables](#notes-in-tables)
     * [Notes in main text](#notes-in-main-text)

## Target audience

The target audience of user documentation is primarily new users of [Textpattern CMS](https:/textpattern.com), notably _administrators_, since that role is automatically adopted when installing Textpattern software.

## Scope and depth of material

The scope and depth of user documentation should be what is needed and not more.

### Scope of documentation

The scope of the documentation is primarily on the software’s core functionality, the out-of-the-box features and capabilities.

To a lessere degree, and needing less focus, the documentation also harbours [plugin development resources](https://docs.textpattern.com/development/) and Textpattern [brand identity and collaboration information](https://docs.textpattern.com/brand/), including these guidelines.

With regard to the primary user documentation, it’s better to add new pages when needed than to cover every possible topic in advance without knowing it’s warranted.

If a page already exists, it should be kept current with the latest software release, as well reduced and simplified anywhere it can be.

Else, a page can be removed, upon editor review, if the effort to revise it is not worth the return it provides by doing so. More likely, any material of value on such a page can be extracted and edited into another relevant location.

### Depth of page content

A given page should only be as explanatory as necessary. Thorough, but not belabouring every possible granule of consideration. (See [**Revising existing pages**](#revising-existing-pages).)

Rely on the usability of Textpattern’s interface, and leave some benefit of doubt to the user. Only fill out topic minutiae when it may help clear up questions repeatedly raised about it in the [community forum](https://forum.textpattern.com/). (See [**Determining new topics**](#determining-new-topics).)

For example, administration-side panels strive to be as intuitive as possible by design. Perhaps not perfect but always improving. Therefore, it’s probably not necessary to meticulously document panel functionality in minute detail, especially as the panels provide help tips in context of a given function or widget.

Before writing or revising documentation on the administration-side functionality, see that interface panels themselves are written and designed better, including the associated help tips; ensure they are as meaningful and clear as possible. If a UI tip doesn’t make sense to you, [start an Issue](https://github.com/textpattern/textpattern.github.io/issues) to bring it to attention and suggest how it can be improved.

When fine-grain descriptions are warranted on a page, but the page starts feeling overly dense, or you are inclined to use a lot of parenthetical notes in sentences, consider [using notes](#using-notes) instead.

No matter what, main text or notes, ensure you’re not using more words than necessary to convey a useful fact. (See [**Concise writing tips**](#concise-writing-tips).

## Collaborative editing process

Anyone can help with Textpattern documentation. We maintain a tight set of documentation pages by topic need and editorial consideration. The needs-based approach is not meant to be overprotective of the information; rather, it makes the best documentation when quality is important but time and help resources are limited.

History has shown there’s little need for a lot of user documentation, anyway, though it’s still a matter of pinpointing what hits the mark. History has also shown that few people want to write documentation. Since demand for documentation is low, the dirth of fly-by-night authors is balanced by a committed few editors, including core developers as technical reviewers. This fellowship of expositionists is sufficient for upkeeping the resource, if not always timely.

The good editors are volunteers like anyone else; busy with their own lives and labours. They are much like volunteer firefighters who dutifully arrive with pale and water when a flame is spied. Happy to set things safe and right when the community sounds the alarm. 

And there it is, editors rely on the community to help bring documentation inaccuracies and deficiencies to attention as they are found. The more often this happens, the better the state of the documentation at any given time. The process for addressing issues is revealed through the following sections. 

### New documentation pages

Creation of new pages is managed through repository issues, and determined by monitoring community needs and knowing what is coming in future Textpattern releases.

#### Using repository Issues 

When editors anticipate the need for a new page but do not yet create them for whatever reason, they will create an [Issue](https://github.com/textpattern/textpattern.github.io/issues) for the page and flag it with the ‘**New page needed**’ label. The issue should make it clear the nature of the page, where it might go in the documentation tree, and how it should be [cross-linked](#cross-linking) with other pages in context.

If you think a documentation page is needed but an issue doesn’t exist for it, create the issue so that editors may help decide how and where to integrate the material. Perhaps you’ve really found a gap in useful information, but it’s better to add it somewhere existing than to start a new page. Editors help figure these things out.

Anyone is free to claim (or be assigned) the role to draft a needed document, indicated by an issue. No one else will bother with the draft unless it’s otherwise published or the author transfers it to someone else to finish. This way collaborators don’t step on each others’ toes.

#### Determining new topics

The need for new documentation — which may or not lead to an actual new page — is typcially recognized by two main vectors:

1. the kinds of questions repeatedly raised in the community forum
2. the new functionality or capabilities expected in a future version of the software.

The first case reflects what _good_ documentation development is about: identify the problems people commonly have with the software, then provide written solutions to point to, so explanations aren’t needlessly repeated. Self-help is the best help when time is short, and good documentation enables that.

In the first case, anyone is welcome and encouraged, especially editors, to monitor the community forum and identify potential documentation topics that can address questions and problems repeatedly raised and discussed there. When such topics are recognized, an [Issue](https://github.com/textpattern/textpattern.github.io/issues) can be made to bring the subject to attention.

In the second case, technical editors (i.e. Textpattern’s core developers) will likely identify what upcoming features will need documented and make [Issues](https://github.com/textpattern/textpattern.github.io/issues) for them.

Anyone following along with Textpattern development, by maintaining a local installation to test new features, can help identify topics, propose them in [Issues](https://github.com/textpattern/textpattern.github.io/issues), and draft the documentation. 

For example, a common area for new page needs recognized in advance is with regard to [Textpattern tags](https://docs.textpattern.com/tags/) or their attributes, existing or [in development](https://docs.textpattern.com/tags/tags-in-development).

Another example of future documentation needs are with respect to the more abstract administration-side functionalities anticipated, such as the extended functionality for images handling and unlimited custom fields.

And more possibilities still, some of which may require new folders in the documentation tree, include:

* [shortcode examples](https://docs.textpattern.com/tags/shortcodes/)
* tutorials around core capabilities that replace what used to require one or more plugins (plus indication of said plugins so a user may easier identify what might be eliminated) 
* [theme development documentation](https://docs.textpattern.com/themes/), and design competition materials (though this may be restricted to a different, dedicated site)
* [brand and community collaboraton information](https://docs.textpattern.com/brand/) (like the document you are reading now).

### Revising existing pages

While our approach is to document when needed, we strive to keep existing pages current and optimal. If a given page is outdated against current functionality, it should be corrected as soon as possible. Or, as mentioned earlier, evaluated for recycling and removal.

If you find a page _is_ outdated, it’s not because nobody cares, it’s because the problem has not been brought to anyone’s attention by way of an [Issue](https://github.com/textpattern/textpattern.github.io/issues), thus it is slipping through the cracks.

Again, documentation is a community effort, and even editors must work together efficiently. This can often just mean starting [Issues](https://github.com/textpattern/textpattern.github.io/issues) so problems are recognized and addressed. At the bottom of every documentation page is the following way point to help make it easier:

> See something wrong in this document? Outdated info, a broken link, faulty code example, or whatever? Please [open an issue](https://github.com/textpattern/textpattern.github.io/issues) and we’ll investigate.

## Linking strategy

Try to keep a big-picture perspective on documentation and add logical bridges between related, helpful topics. This can be done by cross-linking between documentation pages and anchor-linking within a given page.

There’s a side benefit from this too: as one becomes familiar with the big-picture, it gets easier to identify ROT (redundancy, outdated, trivial) material, thus ways to revise and refine documentation as a whole.

That said, there’s a point where too much linking can be distracting, so don’t fill a page up with a lot of links like a Wikipedia page. Likewise, refrain from adding bridge links too soon after creating new material. It never fails that several rounds of page editing are needed, and in-page anchor links, especially, are repeatedly broken before the content stabilizes.

### Cross-links

Cross-links between documentation pages should use Markdown  link syntax and absolute URLs:

```
[link text](https://docs.textpattern.com/directory/page-title)
```

### Anchor links

Anchor links within a given page will always point to a section header; the section where the relevant factoid is located:

```
[**Writing and editing**](#writing-and-editing)
```

Note it’s okay and recommended to make in-page anchor links bold, as indicated in the example, which readers will quickly distinguish (and understand) from external links.

## Writing and editing

In addition to the helpful guidelines below for writing and editing documentation, see the baseline [editorial style guide](https://docs.textpattern.com/brand/textpattern-editorial-style-guide) for style conventions in general. 

### Author perspective

Documentation is written from the perspective of an _anonymous_ expert to the first-time administrator. Therefore, documentation authors and editors must write in the _second-person_ point of view. Pronouns are ‘you’, ‘your’, and ‘yours’ when referring to the reader; the assumed administrator of a new Textpattern installation.

For example:

> Click your name in the Users panel to change your email.

Never use the first-person singular or plural in regular user documentation. It's easy to slip into first-person plural mode with an official Textpattern voice (i.e. ‘we’ and ‘us’), but it’s unnecesary, and inappropriate for the targeted user documentation.

Likewise, _never_ make it personal with pronouns like ‘I’, ‘me’, and ‘my’ no matter what type of documentation it is. Collaborative documentation is never about you, and the reader doesn’t care about you either. Sorry. Take the second person stance and empower the reader. Make them feel like they're doing it alone, because they are. You're just an impartial voice over their shoulder guiding them along.

**Exceptions to the rule**

The key is paying attention to the type of documentation you’re writing, or special contexts within the user documentation.

The above rules apply to _user_ documentation as described, so first-person should never be used, but it’s possible third-person could be in specific contexts, like when needing to guide the administrator with respect to other user accounts:

> To change a user’s role, find and click their name in the Users panel, the . . .

The word ‘their’ is a third-person plural pronoun. It could just as well be ‘his’ or ‘her’, too, third-person singular. But for the vast majority of documentation, you will never need these.

Another exception is with regard to the type of documentation it is. Again, _user_ documentation abides by the above rules on perspective, but in materials like your reading now, written by editors for other editirial collaborators. _We_ are speaking to eachother so use of ‘we’, a first-person plural pronoun, can be appropriate at times.

### Concise writing tips

To improve the readability of documentation, write as concisely as you can. There are several effective ways to achieve this.

**Use the appropriate [author perspective](#author-perspective)**. When you don't centre the writing around your own point of view and wit, you say a lot less. It's magic.

**Avoid passive verb structures**. Verb structures like _to be/have_, _could be/have_, _should be/have_, _might be/have_, and so forth are not only miserable to read, but they bloat copy with unnecessary words. You are the expert giving the sound advice, so assume the role. Find a more direct and active way of word phrases. Using a generic structure as example: ‘put this thing there’ is far cleaner and direct than either ‘you should put this thing there’ or ‘that thing should be put there’. Both are lousy. If a reader doesn’t want to put something somewhere, they won’t, but they’ll appreciate you weren’t wishy-washy about the instruction. Kill the passive verb structures.

**Avoid useless adverbs**. Adverbs like _very_, _really_, _only_, and others are commonly used in speech when we talk to each other, and in that context are easily overlooked, but they look and read terrible in writing, and add considerable bloat to documents when all tallied up.

For example, ‘the really large code block’ or ‘only copy the lines between x and y’ are bloated ways of writing ‘the large code block’ and ‘copy the lines between x and y’. There’s no loss of meaning or  instruction by dropping the needless adverbs, and it reads a lot better too.

**Question every use of "that" and "just”**. It's easy to abuse both words. Every time you use ‘that’ or ‘just’ in a sentence, read the sentence without using the words and see if it still makes sense. Most of the time it will. If it does, leave the words out.

**Avoid overuse of adverbs, idioms, and other partial clauses at the beginnings or endings of sentences**. Excessive use of ’meanwhile’, ’on the other hand’, ‘however’, ’in other words’, ‘nevertheless’, and so forth can bore a reader quickly. This doesn't mean never use them, but if you're using them regularly, in every paragraph, it's too much. Rewrite the sentences more concisely without the clauses.

**Cut any words until you can’t**. This is not always the best advice for descriptive, persuasive, and narrative writing, but it’s absolutely solid advice for expository writing, and that’s what typ of writing documentation is. Every word provides value and clarity, or delete it out.

**Break long, multi-clause sentences into multiple shorter sentences**. Again, not always good advice for other types of writing, but for expository like documentation, it’s generally a good idea. Careful, though, sometimes a single longer sentence can read more smoothly if it's free of needless word bloat. Having multiple shorter sentences does not mean end up having choppy, stilted reading. Use your best judgement.

### Grammar and spelling traps

As per the [editorial style guide](https://docs.textpattern.com/brand/textpattern-editorial-style-guide) user documentation uses British-English spelling and punctuation conventions, notably those recognized by the *Oxford English Dictionary* and the *Oxford Style Manual*.

Following are some things to watch out for in user documentation specifically.

#### Verb forms vs. noun forms

**Log in vs. login**. Use 'log in' when it's a verb (e.g. ‘after you log in’ or ‘after logging in’), but use ‘login' when it's a noun (e.g. ‘the login location’). Same handling for ‘logout’ (noun) and ‘log out’ (verb).

#### Adjective forms vs. noun forms

**Administration-side vs. Administration side**. When referring to the administration side, make sure you are doing so correctly between noun (no hyphen) and adjective (hyphenated) forms.

Adjective form example: 

> ’The default top-level administration-side navigation links are Content, Presentation, and Admin.’

Noun form example:

> ’The login to the administration side is located at . . .’

### Abbreviations

Do not be lazy and abbreviate words that are not either common proper nouns (e.g. HTML, CSS, and so on) or Latin used in parentheses (n.b., i.e., e.g., etc.).

Specific examples:

**Admin**. Never use this abbreviation in writing unless you are specifically referring to the Admin navigation label in the administration side. Any other use of ‘admin’ can lead to confusion about what is meant. Whether you mean ‘administration’ or ‘administrator’, write it out fully every time so the meaning and context is perfectly clear. This includes writing ‘administration side’ (noun form) and ‘administration-side’ (adjective form) with regard to the administration side of the software.

**TXP, Txp, TxP, tXP, txp**. Do not use these pet abbreviations for Textpattern in documentation. Always spell ‘Textpattern’ out fully, when needed at all (see [**Brand name**](#brand-name)). Such abbreviations are convenient for informal exchange in the support forum, or whatever, but they are inconsistent and non-intuitive to the outside world, as well needless. And history has shown that most people can’t spell ‘Textpattern’ correctly as it is, so don’t make it worse by using cartoon abbreviations. There are only two exceptions to this rule: 1) If you’re writing tag notation (e.g. `<txp:love />`. 2) If you’re referring to ‘TXP Magazine’, which is unlikely in documentation.  

### Brand name

Do not overuse the brand name, ‘Textpattern’, in documentation (or in any project), even if it’s part of a document title. For example, ‘Textpattern editorial style guide’ can easily be written and understood in context without adding the brand. Too much repetition of ‘Textpattern’ becomes monotonous, distracting, and sounding desperate. It’s a context that is already clear to readers by fact they are in the domain and using the software.

Similarly, do not tack ‘CMS’ on the brand name at every opportunity. It looks like a bloated tick on a skinny dog’s arse. If your only reason for doing so is ‘SEO juice’, then you’ve already lost. People don’t care anymore if it’s a content management system, a content publishing system, a blog engine, or a wizard’s wand. If they can easily setup and publish to a website, that’s all that matters.

## Formatting interface strings

Interface strings are the text elements a user reads in the administration interface; from headers to form control labels to system feedback messages. Consideration of these strings is critical for good software usability.

Referring to them consistently yet unobtrusively in documentation is also critical. The balance between consistency and unobtrusiveness, however, can be challenging when many types of strings exist.

Textpattern documentation aims for a clear and logical balance with seven formatting rules, detailed in the rest of this section. Seven sounds like a lot, but they will make sense when you consider them.

### Headers, labels, and paths

Most types of interface strings are demonstrated below. An explanation of why and how the rules were derived follows the examples. 

Capitalized single words
: Normal
: Example: ‘The Write panel.’

Multiple words, no terminal punctuation
: Bold
: Example: The **Date format** setting.

Full-sentence strings with terminal punctuation
: Italic
: Example: The *Prevent widowed words in article titles?* preference.

Form control options
: Single quote marks
: Example: Select ‘Yes’ from the drop-down options.

Textpattern Form names
: Bold-italic
: Example: The ***comments_display*** form.

File paths and names
: Italic
: Example 1: The login is found at *domain.tld/textpattern*.
: Example 2: *.htaccess*, *index.php*
: Notes: File paths and names should not be marked up as code unless they appear in an actual code snippet. Also, file extensions should always be added to file names.

**Explanation of Table 1 rules:**

The following explains how the first five rules were derived.

Consider this hypothetical example:

> Set the **Date format** and **Time zone** in the **Site** section of **Preferences**.

That’s a lot of distracting bold text, so, obviously, a single rule to make all interface strings bold is not ideal for documentation.

However, not using bold is also problematic as strings containing multiple words in sentence-case (standard for the adminstration interface) get confused with normal text:

> Set the Date format and Time zone in the Site section of Preferences.

A readers eyes can easily distinguish the capital words, but not the additional words in the two strings using sentence-case (i.e. **Date format** and **Time zone**). So normal weight alone is also not going to work.

Thus we can sensibly derive two of five rules for formatting interface strings in documentation: 

* Leave single-word strings in normal weight and let the capitalizations distinguish them from normal text (e.g. ‘the Site section of the Preferences panel’).
* If multiple-word strings in sentence-case have no terminal punctuation, make them bold (e.g. ‘the **Date format** and **Time zone** settings in the Site section of the Preferences panel). 

There are also many instances where strings can be full sentences with terminal punction, notably some of the settings in the Site section of Preferences. Consider this example: 

> You can control widowed words by selecting Yes for the Prevent widowed words in article titles? preference in the Site section of the Preferences panel.

The setting label is practically invisible in normal weight. Easily overlooked. And that mysterious ‘Yes’ is an option value, not a label, so it’s breaking our first rule.

On the other hand, bold seems a little overkill on full sentence labels, and potentially confusing if the sentence is written lazy (’Is this something the author is asking me?’):

> **Prevent widowed words in article titles?** Select ‘Yes’.

But if we use italic (and proper sentence structure), it provides clear enough distinction without overbearing the text. And form control values like select box options can be single-quoted to easily distinguish them as well:

> Select 'Yes' on the *Prevent widowed words in article titles?* preference in the Site section of the Preferences panel to prevent widowed words. 

Now we have two more of our five needed rules:

* For full-sentence strings having terminal punctutation, make them italic (e.g. ‘the *Prevent widowed words in article titles?* setting’).
* For form control options (i.e. select box values), make sure they are spelled and capitalized exactly as they appear in the interface and surround them with single quotes (e.g. ‘Yes’). 

The final rule concerns strings that don’t follow the sentence-case convention, notably with respect to default form names (and other possible strings) that are not capitalized and use underscores when compound. They are not code, exactly, so code formatting is not approriate either. Since these will not be discussed frequently in documetation, we can format them as ***bold-italic*** (e.g. ‘the ***comments_display*** form’)

### Alert messages

Another type of interface string that needs documented are block element system alerts, of which there are four types: success, information, warning, or error.

Alerts appear to users as feedback dialogue in the Diagnostics panel, or in other panels as success/failure messages (e.g. when saving changings).

Use Kramdown’s ‘inline attributes list’ syntax (see [**Selectors and attributes**](#selectors-and-attributes)) to style alerts as they appear in the interface. All alert blocks use a common class, `.alert-block`, plus a unique one, as demonstrated in these hypothetical examples.

**Success alerts:**

```
Success alert.
{: .alert-block .success}
```

Example:

You did good.
{: .alert-block .success}

**Information alerts:**

```
Information alert.
{: .alert-block .information}
```

Example:

New version available.
{: .alert-block .information}

**Warning alerts:**

```
Warning alert.
{: .alert-block .warning}
```

Example:

Uh, that’s a cliff, dude…
{: .alert-block .warning}

**Error alerts:**

```
Error alert.
{: .alert-block .error}
```

Example:

OMFG, _no!_
{: .alert-block .error}

## Markup

Due to certain platform constraints, documentation uses a mixture of HTML, regular Markdown, and Kramdown (unfortunately), depending on what you need.

Whenever possible, use regular Markdown syntax for formatting text elements (font style and weight, links, basic lists, blockquotes…). 

For certain block elements, you either need to use straight HTML, because of certain presentational needs (namely tables), or Kramdown syntax (e.g. block spans, notes, definition lists…). The following sections explain the situations you may need to accomodate.

### Selectors and attributes

Applying HTML selectors and attributes requires Kramdown syntax.

Kramdown calls the syntax an ‘inline attributes list’.[^selectors] But it’s not called ‘inline’ to imply use on inline HTML elements (e.g. `span`); rather, it’s referring to the way attributes are lined up in the curly-bracket notation. The structure looks like this:

```
{: #id .class}
```

If you use an `id` selector, as shown, the space must exist between the `:` and `#`. If no `id` selector is needed (i.e. on block elements), then no space is needed either, but you can leave it, and you can use as many class selectors as you want:

```
{:.class1 .class2 .class3 .etc}
```

**The good news on using inline attributes lists:**

You will:

1. Never need inline selectors, _thank goodness!_, since Markdown can apply **bold**, *italic*, and ***bold-italic*** formatting when needed. Ergo, you will never use a `span` on anything.
2. Only worry about block element styling when these guidelines define such selectors for use. Such selectors will be indicated in the relevant section of this document where use is explained in context (e.g. [**Alert message strings**](#alert-message-strings)). 

**Block element styling:**   

When using a Kramdown attributes list on a block element (e.g. `p`), position the syntax on a new line immediately after the element text:

```
This is a regular paragraph.
{: .class}
```

See the [**Alert message strings**](#alert-message-strings) section for examples.   

**Inline spans:**

Ha! Again, you don’t use inline spans in documentation for any reason.

[^selectors]: See https://kramdown.gettalong.org/syntax.html#inline-attribute-lists.

### Defintion lists

Definition lists are added using Kramdown syntax.

There is no particular type of documentation content you need to know about; just use a list if/when it’s better to.

The stucture is:

```
Definition title
: Definition data
```

That will render a definition list as:

```
<dl>
<dt>Definition title</dt>
<dd>Definition data</dd>
</dl>
```

Add more data items via additional lines preceded by `:`

```
Definition title
: Definition data item one
: Definition data item two
: etc.
```  

### Tables

Tables must be in straight HTML.

Tables are very effective at presenting tabular data and other dense sets of information suited to grid display. They also make nice presentation breaks when a page is otherwise a lot of text. But wide tables can also be problematic to read on small screen devices.

So, use the following guidelines with respect to tables:

1. Use them as much as appropriate for tabular data sets.
2. Avoid tables if data is mostly long strings of text, like sentences, paragraphs, or entire lists. In such cases, try and structure the information as [definition lists](#definition-lists) instead.
3. Ensure the table is complete, which includes the surrounding `div` plus `caption`, `thead`, `tbody`, `tfoot`. (See number 6). To make it easy, copy/paste the markup from the code block below.
4. Understand that a table’s `caption` is really its title. (Table captions are different from an HTML figure’s `figcaption`, which is used as a description.) While it’s called ‘caption’ in HTML, it’s function is to number and title the table so that it can be referred to easily in main text.
5. If multiple tables are used on a given documentation page, ensure they are appropriately numbered. Do this at the beginning of the caption (e.g. ‘Table 1. Caption text . . .’, ‘Table 2. Caption text. . .’, and so on). If a page only uses one table, the number reference can be left out of the caption.
6. Table notes are optional, but can be used effectively to communicate information in clear and concise ways. See [**Notes in tables**](#notes-in-tables)). But if you don’t need notes, or do not otherwise need a table footer at all, then remove the `tfoot` region.

``` html
<div class="tabular-data" itemscope itemtype="https://schema.org/Table"><table>
<caption>Table n. Title of table</caption>
<thead><tr>
<th scope="col">Header</th>
<th scope="col">Header</th>
</tr></thead>
<tbody>
<tr>
<th scope="row">data</th>
<td>data</td>
</tr>
<tr>
<th scope="row">data</th>
<td>data</td>
</tr>
</tbody>
<tfoot>
<tr><td colspan="2">
<ol>
<li>note item</li>
<li>note item</li>
</ol>
</td></tr>
</tfoot>
</table></div>
```

If you don’t use any [notes in your tables](#notes-in-tables), remove the entire `<tfoot>…</tfoot>` region of the table, or change it to use the footer a different way, as needed.

### Notes

Notes are used sparingly and in limited cases in Textpattern documentation; either as reference notes in tables, using a reference-mark system, or as general notes in main text, producing short _endnotes_ lists.

#### Notes in tables

Since these notes are in HTML tables, they are also structured with straight HTML. Style rules are added to documentation to make reference-mark lists work in the table footer. 

Reference-mark notes are a common annotation device in information design, and are specifically used in tables. The standard reference-mark system cycles through six marks, in this order: *, †, ‡, §, ¶, ‖.

If a table ever needs more than six notes, which should be rare to never, the pattern repeats in duplicate (**, ††, ‡‡, §§, ¶¶, ‖‖), then triplicate, and so on. Try not to go that far.

Consider the following table, which is an example of the notes in effect.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
<table>
<caption>Table 1. Reference-mark entities as table notes.</caption>
<thead>
<tr>
<th scope="col">Name</th>
<th scope="col">Mark</th>
<th scope="col">Entity&#x002a;</th>
</tr>
</thead>
<tbody>
<tr>
<th scope="row">Asterisk</th>
<td>*</td>
<td><code>002a</code></td>
</tr>
<tr>
<th scope="row">Dagger</th>
<td>†</td>
<td><code>2020</code></td>
</tr>
<tr>
<th scope="row">Double Dagger</th>
<td>‡</td>
<td><code>2021</code></td>
</tr>
<tr>
<th scope="row">Section Sign</th>
<td>§</td>
<td><code>00a7</code></td>
</tr>
<tr>
<th scope="row">Pilcrow&#x2020;</th>
<td>¶</td>
<td><code>00b6</code></td>
</tr>
<tr>
<th scope="row">Double Vertical Line</th>
<td>‖</td>
<td><code>2016</code>&#x2021;</td>
</tr>
</tbody>
<tfoot><tr><td colspan="3"><ol>
<li>Unicode values for character glyphs. These can be used as ASCII characters by prefixing values with <code>&#x</code> and adding a <code>;</code> at the end.</li>
<li>Also known as the ‘paragraph sign’ in layman’s terms.</li>
<li>And so on.</li>
</ol></td></tr></tfoot>
</table>
</div>

You must add the entity values in the table where needed, in the correct order, for example:

```
<th scope="col">Entity&#x002a;</th>
```

Then write the corresponding note in the footer `li`, in the same order. The entities are added automatically (up to the first six single glyphs) to list items, so don’t add them manually here, for example:

```
<ol>
. . .
<li>Also known as the ‘paragraph sign’ in layman’s terms.</li>
. . .
</ol>
```

If you ever need more than six notes, then use `<ol class="noliststyle">`, for a list without any list style at all, then add the reference marks manually:

```html
<ol class="noliststyle">
<li>. . .</li>
<li>&#x2016; . . .</li>
<li>&#x002a;&#x002a; . . .</li>
<li>. . .</li>
</ol>
``` 

#### Notes in main text

Remember that notes, which are, technically speaking, a part of notes and bibliography referencing systems, are used to cite sources (e.g. the source of a quotation used), or enable authors to briefly expand on ideas, for example, without bloating the main text.

**Use notes sparingly:**

Do not annotate text for the sake of it. Fewer notes are better in documentation because it’s less overhead for readers wanting to get something done. However, using a few notes for references (citing external sources) and/or expanding on insights the author may have on a given situation in context, can be useful.

**Call them what they really:**  

As for applying notes, GitHub does not use regular Markdown footnotes, so the syntax for notes that you may have learned at Daring Fireball, or by using iAWriter, whatever, will not work here. Instead, GitHub uses Kramdown footnotes, which are somewhat closer in method to how Textile footnotes work, so that’s a step in the right direction for Textile lovers.

From hereon, we refer to them simply as _notes_, as all leading references like the *New Oxford Style Manual* and the *Chicago Manual of Style* do when speaking of footnotes and endnotes in general terms, and _endnotes_, when referring to the notes list at end of the document.[^notes]

**Adding the syntax:**

You may or not be aware that Kramdown notes function the same way whether you write inline markers as numerals in sequence (`[^1]`, `[^2]`, etc.) or as unique terms, whatever you choose to use (e.g. `[^dope]`, `[^dongle]`, `[^dingo]`, . . .). Either way, the resulting endnotes list is an ordered list of arabic numerals.

Thus, using text as inline markers is a better way to go, because:

1. Text markers can be created relevant to the topic being annotated (i.e. they’re intuitive if used right), and you don’t have to worry about what order they are in.
2. Numbered markers can be needlessly distracting if you are trying to keep them in order; and confusing if you have many of them and they get out of order.

Skip the madness and use text markers only. It’s easier.

**Example of notes usage:**

This document uses two notes. One comes in the [**Selectors and attributes**](#selectors-and-attributes) section, and the other in this section on notes. In each case, you will see the inline marker as a superscript ‘1’ and ‘2’, respectively, at the end of sentences.

The actual markers used in the markup are: `[^selectors]` and `[^notes]`. Each note marker uses a word relevant to the topic. Logical.

The notes themselves are added at the bottoms of the sections they appear in. Sure, you could end up having notes spread out through the document this way. But by putting them at the ends of the sections they belong to, it’s easy to find and edit them in context, instead of jumping up and down in the document.

Each note begins with the same marker used inline, followed by a `:`

```
[^selectors]: See https://kramdown.gettalong.org/syntax.html#inline-attribute-lists.
```

```
[^notes]: Recognize that all those markup languages, . . .
```

The resulting endnotes list, however, appears at the bottom of the page (ergo, endnotes), because that’s how Kramdown notes are designed to function. See it down there at bottom?

And that’s why we add a `## Endnotes` header in the [new page template](https://docs.textpattern.com/brand/textpattern-documentation-template), in case people want to use notes; they will automatically appear under that last section.

[^notes]: Recognize that all those markup languages, and the different flavours of them, calling the functionality ‘footnotes’, is doing the web-publishing world a disservice. We do not perpetuate the fallacy in this documentation. Footnotes are a specific type of notes usage in print publishing only, where pages have a physical set dimension and word limit. In web publishing, documents have no such contraint and notes always appear at the end of the document (excepting PDFs and ebooks that mimic print layouts). It is, therefore, more logical to call such markup features ‘endnotes’, because that’s what they are when appearing at the end of the document. The _foot_ and _end_ prefixes merely indicate the placement of notes in published material.

## Endnotes

