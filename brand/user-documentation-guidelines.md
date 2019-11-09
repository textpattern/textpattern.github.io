---
layout: document
category: Brand
published: true
title: Textpattern user documentation guidelines
description: Guidelines for contributions to Textpattern CMS user documentation.
---

# Textpattern user documentation guidelines

These guidelines, an extension of Textpattern’s [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide), are specifically for the editorial upkeep of the [Textpattern user documentation](https://docs.textpattern.com/). Documentation editors, authors, and all interested contributors will want to read up here.

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
  * [Abbreviations](#abbreviations)
  * [Brand name](#brand-name)
* [Formatting interface strings](#formatting-interface-strings)
  * [Headers, labels, and options](#headers-labels-and-options)
  * [Presentation element names](#presentation-element-names)
  * [Alert messages](#alert-messages)
  * [File paths and names](#file-paths-and-names)
  * [Normal text](#normal-text)
* [Markup](#markup)
	* [Selectors and attributes](#selectors-and-attributes)
	* [Definition lists](#definition-lists)
  * [Tables](#tables)
  * [Notes](#notes)
     * [Notes in tables](#notes-in-tables)
     * [Notes in main text](#notes-in-main-text)

## Target audience

The target audience of user documentation is primarily new users of [Textpattern](https:/textpattern.com), notably _administrators_, since that role is automatically adopted when installing Textpattern software.

## Scope and depth of material

The scope and depth of user documentation should be what is needed and not more.

### Scope of documentation

The scope of the documentation is primarily on the software’s core functionality. The out-of-the-box features and capabilities.

Until further notice, and to a lessere degree, the user documentation site also harbours [plugin development resources](https://docs.textpattern.com/development/) and Textpattern [brand identity and collaboration information](https://docs.textpattern.com/brand/), including these guidelines.

With regard to the primary user documentation, it’s better to add new pages when needed than to cover every possible topic in advance without knowing it’s warranted.

If a page already exists, it should be kept current with the latest software release, as well reduced and simplified anywhere it can be.

Else, a page can be removed, upon editor review, if the effort to revise it is not worth the return it provides by doing so. More likely, any material of value on such a page can be extracted and edited into another relevant location.

### Depth of page content

A given page should only be as explanatory as necessary. Thorough, but not belabouring every possible factoid. (See [Revising existing pages](#revising-existing-pages) section.)

Rely on the usability of Textpattern’s interface, and leave some benefit of doubt to the user. Only fill out topic minutiae when it may help clear up questions repeatedly raised about it in the [community forum](https://forum.textpattern.com/). (See [Determining new topics](#determining-new-topics) section.)

For example, administration-side panels strive to be as intuitive as possible by design. Perhaps not perfect but always improving. Therefore, it’s probably not necessary to meticulously document panel functionality in minute detail, especially as the panels provide help tips in context of a given function or widget.

Before writing or revising documentation on the administration-side functionality, see that interface panels themselves are written and designed better, including the associated help tips; ensure they are as meaningful and clear as possible. If a UI tip doesn’t make sense to you, [start an Issue](https://github.com/textpattern/textpattern.github.io/issues) to bring it to attention and suggest how it can be improved.

When fine-grain descriptions are warranted on a page, but the page starts feeling overly dense, or you are inclined to use a lot of parenthetical notes in sentences, consider [using notes](#using-notes) instead.

No matter what, main text or notes, ensure you’re not using more words than necessary to convey a useful fact. (See [Concise writing tips](#concise-writing-tips) section.)

## Collaborative editing process

Anyone can help with Textpattern documentation. We maintain a tight set of documentation pages by topic need and editorial consideration. The needs-based approach is not meant to be overprotective of the information; rather, it makes the best documentation when quality is important but time and help resources are limited.

History has shown there’s little need for a lot of user documentation, anyway, though it’s still a matter of pinpointing what hits the mark. History has also shown that few people want to write documentation. Since demand for documentation is low, the dirth of fly-by-night authors is balanced by a committed few editors, including core developers as technical reviewers. This fellowship of expositionists is sufficient for upkeeping the resource, if not always timely.

The good editors are volunteers like anyone else; busy with their own lives and labours. They are much like volunteer firefighters who dutifully arrive with pale and water when a flame is spied. Happy to set things safe and right when the community sounds the alarm. 

And there it is, editors rely on the community to help bring documentation inaccuracies and deficiencies to attention as they are found. The more often this happens, the better the state of the documentation at any given time. The process for addressing issues is revealed through the following sections. 

### New documentation pages

Creation of new pages is managed through repository issues, and determined by monitoring community needs and knowing what is coming in future Textpattern releases.

#### Using repository Issues 

When editors anticipate the need for a new page but do not yet create them for whatever reason, they will create an [Issue](https://github.com/textpattern/textpattern.github.io/issues) for the page and flag it with the ‘**New page needed**’ label. The issue should make it clear the nature of the page, where it might go in the documentation tree, and how it should be [cross-linked](#cross-links) with other pages in context.

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

Anchor links are links within a given page, pointing from one section location to another, to bridge related information in context.

The links are relative links, and ideally applied at the ends of relevant paragraphs as a parenthetical with the following simple pattern:

```
. . . end of paragraph. (See [Target section](#target-section) section.)
```

The consistent placement and parenthetical pattern of anchor links makes them clear to readers that they are in-page links. 

## Writing and editing

In addition to the helpful guidelines below for writing and editing documentation, see the baseline [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide) for style conventions in general. 

### Author perspective

Documentation is written from the perspective of an _anonymous_ expert to the first-time administrator. Therefore, documentation authors and editors must write in the _second-person_ point of view. Pronouns are ‘you’, ‘your’, and ‘yours’ when referring to the reader; the assumed administrator of a new Textpattern installation.

For example:

> Click your name in the Users panel to change your email.

Never use the first-person singular or plural in regular user documentation. It's easy to slip into first-person plural mode with an official Textpattern voice (i.e. ‘we’ and ‘us’), but it’s unnecesary, and inappropriate for the targeted user documentation.[^we]

Likewise, _never_ make it personal with pronouns like ‘I’, ‘me’, and ‘my’ no matter what type of documentation it is. Collaborative documentation is never about you, and the reader doesn’t care about you either. Sorry. Take the second person stance and empower the reader. Make them feel like they're doing it alone, because they are. You're just an impartial voice over their shoulder guiding them along.

**Exception to the rule**:

There is at least one exception to the perspective rule. It’s possible third-person could be used in specific contexts, like when guiding the administrator on user accounts:

> To change a user’s role, find and click their name in the Users panel . . .

‘Their’ is a third-person plural pronoun. It could just as well be third-person singular (his/her). But for the vast majority of documentation, you will never need to do this.

Another exception is with regard to materials like you are reading now, written by editors for other editorial collaborators. _We_ are speaking to each other, so use of ‘we’, a first-person plural pronoun, can be appropriate at times.

[^we]: It’s okay to use first-person plural (i.e. *we*, *us*) in editor [collaboration](user-documentation-collaboration) materials because *we* are speaking among ourselves.

### Abbreviations

See baselines in the similarly-named section of the [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide#abbreviations). With respect to user documentation, two topics there are especialy important to review: the avoidance of common-word abbreviations (e.g. ‘admin’), and the recommended use of Latin idioms as abbreviations in parenthetical notes.

### Brand name

See baselines in the similarly-named section of the [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide#brand-name). Particularly in documentation, do not overuse the brand name. The context of being a Textpattern resource is already clear to readers by fact they are using the software and in the documentation domain.

## Formatting interface strings

Interface strings are the text elements a user reads in the administration interface; from headers to form control labels to system feedback messages. Thoughtful development of these strings is critical for good software usability. So is referring to them consistently yet unobtrusively in documentation.

The balance between consistency and unobtrusiveness when documentating interface strings, can be challenging when many types of strings exist. Textpattern documentation aims for a clear and logical balance, whether referring directly to back-end locations or identifying such elements in general terms.

The various possible strings are detailed in the following sections.

### Headers, labels, and options

The documentation of panel and widget headers, and form control labels and options, would be difficult and confusing to readers if a single formatting convention were used. Part of the problem is the sentence-case convention used in interface strings and in editorial style. To account for this, a minimum of necessarily different formatting rules are needed here and against the other types of interface strings. It is the aforementioned balance between consistency and unobtrusiveness in writing.   

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

### Presentation element names

The names of default and custom semantic elements, found on their respective panels (Themes, Sections, Pages, Forms, and Styles) under the Presentation section of the back end should always be formatted as bold-italic, for example:  

The ***comments_display*** form.

Because some of these core elements have the name ***default***, you must be careful to use formatting in the proper context. Consider this example of doing it correctly:[^examples]

A default stylesheet, named ***default***, must exist. It will be created as an empty stylesheet on import if missing in the *styles* directory of a theme package. 

In the *rare* case that you need to document lists of these things (sometimes needed in plugin and theme development documentation), leave the formatting out (i.e. use normal text), but *only* if the items in a given list are all strings of a single type and no other text.

For example, the following is one of several actual lists of form names used in a themes documentation page. Everything is formatted correctly, from lead in setence, which provides the necessary context, to list items:[^examples]

Article forms:

  * article_listing
  * default
  * search_results

If the list items were adulterated with normal text, the formatting would have to be used, for example:

* the ***default*** form

That would be sloppy list construction anyway, so it should never be needed.

[^examples]: Note to documentation team: This is a good example of where a new class selector (e.g. `.text-example`) is needed for distinguishing examples from normal text, that should not otherwise be formatted as a `blockquot`.

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

Watch your step.
{: .alert-block .warning}

**Error alerts:**

```
Error alert.
{: .alert-block .error}
```

Example:

OMFG, _no!_
{: .alert-block .error}

### File paths and names

Absolute or relative file paths, directory names, and file names, whether appearing as strings in back-end panels or being used in general context should always be italicized only, for example:

*/Users/name/Sites/sitename/textpattern/tmp*

Ignore using italic if the path or name is part of a code block (e.g in the Diagnostics panel for *.htaccess* file display); just use normal text as it appears in the code, for example:

`/Users/name/Sites/sitename/textpattern/tmp`

You may often want or need to write file paths and file names in documentation that are not directly reflected in the administration interface. Use italic in these cases too, for example: *domain.tld/textpattern*. Or *index.php*, *index.md*, or what have you.

Be mindful of these conditions:

1. Do not use quotation marks to distinguish paths and file names.
2. Do not mark up paths and file names as `code`, unless they actually reflect lines from a code file.
3. When using a file name by itself, always include file extensions to distinguish it from a directory name (i.e. *index.php* is correct, but *index* is not).  
4. Do not prefix a directory name with a foreslash (e.g. */textpattern*) when referring to the name by itself. (File name extensions will distinguish file names from director names.)

Finally, do not italicize directory and file names when used in a list to show file tree structure; otherwise, every item would be needlessly italicized. The context of being a file tree structure should be clear. Use normal text in these cases, for example:

* . . .
* directory
  * file.ext 
  * file.ext
* directory
* directory
* . . .

It should also not be necessary to put file tree examples in code.[^trees]

[^trees]: Note to documentation team: Ideally a new class selector (e.g.. `.file-tree`) is made available for presenting file tree examples like above in documentation using Kramdown notation.

### Normal text

Normal text strings are any other type outside of those already described (outside of any functional control or interface widget). A notably example are the possible types of text that appear at the bottoms of back-end panels, like software versions numbers.

Normal text strings should be offset from regular documentation copy by single quotation marks, for exmaple:

‘[Textpattern CMS](#) (v4.7.3)’

And:

‘[Back to top](#)’

This is the same formatting used on form control options, so make sure the differing contexts are clear in writing.

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

