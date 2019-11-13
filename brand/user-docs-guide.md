---
layout: document
category: Brand
published: true
title: Textpattern user documentation guidelines
description: Guidelines for contributions to Textpattern CMS user documentation.
---

# Textpattern user documentation guidelines

These guidelines, an extension of Textpattern’s [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide), are specifically for the editorial upkeep of the [Textpattern user documentation](https://docs.textpattern.com/). Documentation editors, authors, and all interested contributors will want to read up here.

**On this page**:

* Table of contents
{:toc}

## Target audience

The target audience of user documentation is primarily new users of [Textpattern](https:/textpattern.com), notably _administrators_, since that role is automatically adopted when installing Textpattern software.

## Scope and depth of material

The scope and depth of user documentation should be what is needed and not more.

### Scope of documentation

The scope of the documentation is primarily on the software’s core functionality. The out-of-the-box features and capabilities.

Until further notice, and to a lesser degree, the user documentation site also harbours [plugin development resources](https://docs.textpattern.com/development/) and Textpattern [brand identity and collaboration information](https://docs.textpattern.com/brand/), including these guidelines.

With regard to the primary user documentation, it’s better to add new pages when needed than to cover every possible topic in advance without knowing it’s warranted.

If a page already exists, it should be kept current with the latest software release, as well reduced and simplified anywhere it can be.

Else, a page can be removed, upon editor review, if the effort to revise it is not worth the return it provides by doing so. More likely, any material of value on such a page can be extracted and edited into another relevant location.

### Depth of page content

A given page should only be as explanatory as necessary; thorough, but not belabouring every possible factoid (see [Revising existing pages](#revising-existing-pages)).

Rely on the usability of Textpattern’s interface, and leave some benefit of doubt to the user to connect the dots. Only expand on subject minutiae when it helps clear up questions repeatedly raised in the [community forum](https://forum.textpattern.com/). See the [documentation collaboration procedures](https://docs.textpattern.com/brand/user-docs-procedures) for more on that notion and others. 

For example, administration-side panels strive to be as intuitive as possible by design. Perhaps not perfect but always improving. Therefore, it’s probably not necessary to meticulously document panel functionality in minute detail, especially as the panels provide help tips in context of a given function or widget.

Before writing or revising documentation on the administration-side functionality, see that interface panels themselves are written and designed better, including the associated help tips; ensure they are as meaningful and clear as possible. If a UI tip doesn’t make sense to you, [start an Issue](https://github.com/textpattern/textpattern.github.io/issues) to bring it to attention and suggest how it can be improved.

When fine-grain descriptions are warranted on a page, but the page starts feeling overly dense, or you are inclined to use a lot of parenthetical notes in sentences, consider [using notes](#using-notes) instead.

Whether main text or notes, ensure you’re not using more words than necessary to convey a useful fact (see [Concise writing tips](#concise-writing-tips)).

## Writing and editing

In addition to the helpful guidelines below for writing and editing documentation, see the baseline [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide) for style conventions in general. 

### Author perspective

Documentation is written from the perspective of an impersonal expert to the first-time user of the software; in this case, a Textpattern administrator, who is likely developer, designer, and author, too, in that order.

#### Second-person

Therefore, documentation authors and editors should write in the second-person point of view, using the pronouns *you*, *your*, and *yours* when referring to the reader; the assumed administrator of a new Textpattern installation:

Click your name in the Users panel to change your email.
{: style="list-style-position:inside; margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

The second-person stance empowers the reader on their solo adventure. You're just an impartial voice over their shoulder guiding them along. But don't go overboard on the pronouns. If you're addressing the reader in every other sentence, you have revising to do.  

Never use first-person singular (*I*, *me*, *my*) or plural (*we* and *us*) in user documentation. The documentation isn't about you, and the voice of Textpattern is unnecessary and inappropriate. See the [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide#author-perspective) for other platform perspectives.

#### Exceptions to the rule

There is at least one exception to the 'second-person' rule. The third-person could be used in specific contexts, like when guiding the administrator on user accounts. Consider this hypothetical example:

To change a user’s role, find and click their name in the Users panel . . .
{: style="list-style-position:inside; margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

You are still in second-person mode, but you've introduced a third-party, the potential future collaborators of the reader. It could just as well be third-person singular (*his*, *her*). But for the vast majority of documentation, you will never need to do this.

Another exception is with regard to materials like you are reading now, materials written by editors for other editorial collaborators. _We_ are speaking to each other, so use of ‘we’ (first-person plural) can be appropriate in pages like this.

### Abbreviations

Regarding user documentation, two topics are especially important to review in the [Abbreviations](https://docs.textpattern.com/brand/editorial-style-guide#abbreviations) section of the editorial style guide: the avoidance of common-word abbreviations like ‘admin’, and the recommended use of Latin idioms as abbreviations in parenthetical notes over English equivalents in regular text.

### Brand name

Particularly in documentation, do not overuse the brand name. The context of being a Textpattern resource is already clear to readers by fact they are using the software and in the documentation domain. See more in [Brand name](https://docs.textpattern.com/brand/editorial-style-guide#brand-name) guidelines of editorial style guide. 

## Formatting interface strings

Interface strings are the text elements a user reads in the back-end panels of the software; from headers to form control labels to system feedback messages. Thoughtful development of these strings is critical for good software usability, but so is referring to them consistently yet unobtrusively in documentation.

A clear but minimum set of formatting rules are needed to distinguish the different types of strings from regular documentation text. A single format style (e.g. bold, italic, quotation marks, or whatever) is little more effective than no formatting at all. Thus a balance needs struck: On one hand a minimum number of formatting styles used; on the other, clear distinction between string types, and across types and normal documentation text.

Various strings in the software's back end, that you may need to document, are detailed in the following sections. Some of these strings use `strong` and `em` (emphasis) via Markdown for [inline formatting](#inline-text-formatting). Be cognizant of the fact that Markdown does not provide syntax for true `i` (italic) and `b` (bold) element formatting. In this case, however, it's okay; you want screen-reading technology to catch the distinguished (**strengthened** or *emphasized*) interface strings, in addition to those solely distinguished by capitalization or quotation marks. 

### Headers, labels, and options

The documentation of panel and widget headers, and form control labels and options, would be difficult and confusing to readers if a single formatting convention were used. Part of the problem is the sentence-case convention used in interface strings and in editorial style. To account for this, a minimum of necessarily different formatting rules are needed here and against the other types of interface strings. It is the aforementioned balance between consistency and unobtrusiveness in writing.   

Single-word strings, capitalized
: Formatting: Normal font weight
: Example: The Write panel.

Multiple-word strings, no terminal punctuation
: Formatting: `**Bold**` font weight
: Example: The **Date format** setting.

Full-sentence strings with terminal punctuation
: Formatting: `*Italic*` font style
: Example: The *Prevent widowed words in article titles?* preference.

Select box option strings
: Formatting: Single quote marks
: Example: Select ‘Yes’ from the drop-down options.

### Presentation element names

Presentation elements refer to the names of default and custom semantic elements found under the Presentation section of Textpattern's back end; specifically Themes, Sections, Pages, Forms, and Styles. Presentation element names should always be formatted as bold-italic, for example:[^examples]  

The ***comments_display*** form.
{: style="margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

Because some of these core elements use the same name for defaults, namely ***default*** (and mind that it's not capitalized when used as the proper noun), you must be careful to use formatting in the proper context.

Consider this example of doing it correctly, where the first instance of 'default' is just an adjective, thus not formatted to distinguish it as an element name:[^examples]

A default stylesheet, named ***default***, must exist. It will be created as an empty stylesheet on import if missing in the *styles* directory of a theme package.
{: style="margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

In the *rare* case you need to use lists of Presentation element names (sometimes needed in plugin and theme development documentation), leave the formatting out (i.e. use normal text), but *only* if the items in a given list are all strings of a single type and no other text.

For example, the following is one of several actual lists of form names used in a themes documentation page. Everything is formatted correctly, from lead-in sentence (providing the necessary context) to list items:[^examples]

Article forms:
{: style="margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

* article_listing
* default
* search_results
{: style="list-style-position:inside; margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

The example is not reflecting actual `code`, so is not marked up that way. Nor should it be styled as a component of a file tree file (see [File tree examples](#file-tree-examples)).

If the list items were adulterated with normal text, the expected formatting would have to be used, for example:

* the ***default*** form
{: style="list-style-position:inside; margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

That would be sloppy list construction anyway, so it should never be needed.

### Alert messages

Alert messages appear to software users as feedback dialogue in the Diagnostics panel, or in other panels as a software user proceeds through certain tasks (e.g. when saving draft changes). Four kinds of alert messages exist (Table 1). The full set of alert messages in core are detailed in [Diagnostics](https://docs.textpattern.com/administration/diagnostics-panel).

<div class="tabular-data" itemscope itemtype="https://schema.org/Table"><table>
<caption>Table 1. Class selectors for alert messages.</caption>
<thead><tr>
<th scope="col">Alert type</th>
<th scope="col">Color</th>
<th scope="col">Selectors&#x002a;</th>
</tr></thead>
<tbody>
<tr>
<th scope="row">Success</th>
<td>Green</td>
<td><code>.success</code></td>
</tr>
<tr>
<th scope="row">Information</th>
<td>Blue</td>
<td><code>.information</code></td>
</tr>
<tr>
<th scope="row">Warning</th>
<td>Yellow</td>
<td><code>.warning</code></td>
</tr>
<tr>
<th scope="row">Error</th>
<td>Red</td>
<td><code>.erroer</code></td>
</tr>
</tbody>
<tfoot>
<tr><td colspan="3">
<ol>
<li>Each alert uses two class selectors: a common one (<code>.alert-block</code>), plus the unique one shown in table. </li>
</ol>
</td></tr>
</tfoot>
</table></div>

Use Kramdown’s [block element styling](#block-element-styling) syntax on a paragraph to apply the needed selectors, for example:

```
Success alert.
{: .alert-block .success}
```

Hypothetical examples of each alert's presentation:

You did good.
{: .alert-block .success}

New version available.
{: .alert-block .information}

Watch your step.
{: .alert-block .warning}

OMFG, _no!_
{: .alert-block .error}

### File paths and names

Uniform resource identifiers (e.g. URLs), absolute or relative file paths, and directory and file names, whether described as strings in back-end panels or being used in regular documentation text, should be formatted as italic, preferably using HTML tags (i.e. `<i>italic</i>`), though most will undoubtedly ignore that recommendation. See the [Inline text formatting](#inline-text-formatting) section for why HTML is recommended in this case (and blame it on Markdown). 

Examples:
: Absolute URL: <i>https://textpattern.com</i>
: Relative file path: <i>/Users/name/Sites/sitename/textpattern/tmp</i>
: Directory name: textpattern
: File name: <i>.htaccess</i>, <i>index.php</i>, <i>default.txp</i>, <i>front-end-themes.md</i>, and so on.

And mind these conditions:

1. Do not use quotation marks to distinguish paths and file names for any reason.
2. When using a file name by itself, always include the file extension. This is the convention to distinguish file names from directory names (i.e. *index.php* is correct, but *index* is not).  
3. Do not prefix a directory name with a foreslash (e.g. */textpattern*) when referring to the name by itself. Again, file name extensions will distinguish file names from directory names.)
4. Do not format paths, directories, or file names used inline as code (unless the context is actual code). Always italic!

Specific situations of use…

#### Paths, directories, and file paths in code

Ignore italic formatting, of course, if the path or name is reflecting actual code, such as from the Diagnostics panel, for example:

```
Textpattern version: 4.7.3 (7c46d1f4c8ac79e62a7d5e54a9ddac53)
Last update: 2019-03-11 07:38:57/2019-02-25 22:22:30
Textpattern path: __TXP-ROOT/textpattern
Article URL pattern: title_only
Production status: live
Temporary directory path: __TXP-ROOT/textpattern/tmp
```

#### Paths, directories, and file paths in lists

Do not italicize these strings when used in a list, such as reflecting a file tree, directory contents, or what have, for example:

* . . .
* directory
  * file.ext 
  * file.ext
* directory
* directory
* . . .
{: .list--no-bullets style="margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

### Normal text

Normal text strings are any other type outside of those already described (outside of any functional control or interface widget). A notably example are the possible types of text that appear at the bottoms of back-end panels, like software versions numbers.

Normal text strings should be offset from regular documentation copy by single quotation marks, for example (links are part of the actual interface text):

[Textpattern CMS]() (v4.7.3)
{: style="margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

And:[^examples]

[Back to top]()
{: style="margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

This is the same formatting used on form control options, so make sure the differing contexts are clear in writing.

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

## Markup

Due to certain platform constraints, documentation uses a mixture of HTML, regular Markdown, and Kramdown (unfortunately), depending on what you need.

Whenever possible, use regular Markdown syntax for formatting inline text (strong, emphasis) and adding content types (lists, blockquotes, etc.). 

For certain block elements, you either need to use straight HTML, because of certain presentational needs (namely tables), or Kramdown syntax (e.g. block spans, notes, definition lists…). The following sections explain the situations you may need to accommodate.

### Styling

Styling content, whether on inline text or block elements, can be done using basic Markdown, Kramdown (an augmented version of Markdown), or regular HTML, if all else fails.

#### Inline text formatting

You will rarely-to-never need to format inline text beyond **strong**, *emphasis*, or ***strong-emphasis***, which is easily done by using regular Markdown syntax (Table 2).

<div class="tabular-data" itemscope itemtype="https://schema.org/Table"><table>
<caption>Table 2. Markdown syntax for inline formatting.</caption>
<thead><tr>
<th scope="col">Style</th>
<th scope="col">Markdown</th>
<th scope="col">HTML element</th>
<th scope="col">Effect</th>
</tr></thead>
<tbody>
<tr>
<th scope="row">Emphasis</th>
<td><code>*Emphasis*</code><br><code>_Emphasis_</code></td>
<td><code>em</code></td>
<td><em>Emphasis</em></td>
</tr>
<tr>
<th scope="row">Strong</th>
<td><code>**Strong**</code><br><code>__Strong__</code></td>
<td><code>strong</code></td>
<td><strong>Strong</strong></td>
</tr>
<tr>
<th scope="row">Italic</th>
<td>–&#x002a;</td>
<td><code>i</code></td>
<td><i>Italic</i></td>
</tr>
<tr>
<th scope="row">Bold</th>
<td>–&#x002a;</td>
<td><code>b</code></td>
<td><b>Bold</b></td>
</tr>
</tbody>
<tfoot><tr><td colspan="4"><ol>
<li>There is no Markdown syntax for true (semantic) italic and bold formatting.</li>
</ol></td></tr></tfoot>
</table></div>

Unlike in Textile (which can not be used in user docs), Markdown does not have syntax for rendering `i` (italic) and `b` (bold) elements. HTML must be used when these specific inline elements are needed for formatting words or text strings without the implied strength and emphasis that is otherwise detected by screen-readers for the visually impaired.[^emphasis]

[^emphasis]: As an example, it's appropriate to italicize the titles of major works, always in capital-case, as you might do in main text or endnotes like this. But not by using `em`, which would emphasize the text unnecessarily when read by a screen-reader.

#### Inline text styling

In the rare cases you need more than **strong** or *emphasis* formatting, you can use a HTML `span` to apply inline styles, for example:

```
<span style="color:red;">Stop!</span>
```

Or apply the style using Kramdown’s ‘inline attribute list’ notation on a `strong` or `em` element applied by Markdown. 

For example, this:

```
**Stop!**{: style="color:red"}
```

Will tell you: **Stop!**{: style="color:red"}

The color style is applied to the `strong` element on ’Stop!’ (i.e. `<strong style="color: red">Stop!</strong>`).

#### Inline selectors

Custom selectors for inline styling do not exist at this time, but you would use them the same way as before:

```
**All systems go.**{:.blastoff}
```  

#### Block element styling

Block element styling can be done with HTML or Kramdown. Use the cleaner Kramdown notation whenever HTML is not required (e.g. [tables](#tables) do require HTML at this point).

The Kramdown notation for block element styling is similar to that used for inline styling, except the syntax goes on its own line immediately after the block element content:

```
This is a paragraph styled as a hypothetical example.
{: .class-name}
```

Only worry about styling block element content if the following sections describe a means for it.

### Text alignment

Align text (or a block element) left, right, centre, or justified with one of these class selectors, respectively:

* `.align-left`
* `.align-right`
* `.align-center`
* `.align-justify`

You should not have a need to do this against existing presentation rules, however.

### Non-bulleted lists

It's possible to use the `list--no-bullets` class to remove bullets from list items in first-level lists:

```
* list item 1
* list item 2
* etc
{: .list--no-bullets}
```

But you probably won't use this selector by itself; it becomes more handy when combined with other styling rules (e.g. see see [File tree examples](#file-tree-examples)). 

### Example blocks

Example blocks are block level elements (mainly paragraphs or lists) of hypothetical text used as examples in documentation. The styling helps distinguish these blocks from regular text so there's no confusion for the reader. Use these whenever the content is not appropriately code or a displayed quotation.

All example blocks use the following Kramdown 'inline attributes list' for base styling. The inline `style` rules are needed until a custom class selector is provided to simply the syntax:

```
{: style="margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}
```

The base rules work splendidly on a regular paragraph, for example:

A paragraph used to show a text example in user documentation.
{: style="margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}

#### File-tree examples

Sometimes you may need to show a file tree, or the contents of a folder, or just a sample set of a directory's contents. This kind of content should not be marked up as a `code` block; rather, use an unordered list with the baseline example styling, but adjusted for list display.

If you want to use the bullets, add a rule to position them inside the `ul` container (see actual use in the [Presentation element names](#presentation-element-names) section):

```
* . . .
* file0.css
* file1.index 
* file.md
* . . .
{: style="list-style-position:inside; margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}
```

If you'd rather not show as many bullets, add the custom selector for removing the first-level:

```
* . . .
* directory
  * file.ext 
  * file.ext
* directory
* directory
* . . .
{: .list--no-bullets style="margin-left:3%; padding-left:.5em; border-left:2px dotted #e0e0e0;"}
```

Either way, the lists are distinguished from regular lists, and they're not inappropriately marked up as `code`, because they are not code in this context; they're just lists.  

### Definition lists

Definition lists are added using Kramdown syntax.

There is no particular type of documentation content you need to know about; just use a list if/when it’s better to.

The structure is:

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

Add more data items as needed via additional lines preceded by a colon and space:

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
<th scope="col">Header</th>
</tr></thead>
<tbody>
<tr>
<th scope="row">data</th>
<td>data</td>
<td>data</td>
</tr>
<tr>
<th scope="row">data</th>
<td>data</td>
<td>data</td>
</tr>
</tbody>
<tfoot><tr><td colspan="3"><ol>
<li>note item</li>
<li>note item</li>
<li>note item</li>
</ol></td></tr></tfoot>
</table></div>
```

If you don’t use any [notes in your tables](#notes-in-tables), remove the entire `<tfoot>…</tfoot>` region of the table, or change it to use the footer a different way, as needed.

### Notes

Notes are used sparingly and in limited cases in Textpattern documentation; either as reference notes in tables, using a reference-mark system, or as general notes in main text, producing short _endnotes_ lists.

#### Notes in tables

Since these notes are in HTML tables, they are also structured with straight HTML. Style rules are added to documentation to make reference-mark lists work in the table footer.[^refmarks] 

Reference-mark notes are a common annotation device in information design, and are specifically used in tables. The standard reference-mark system cycles through six marks, in this order: *, †, ‡, §, ¶, ‖.

If a table ever needs more than six notes, which should be rare to never, the pattern repeats in duplicate (**, ††, ‡‡, §§, ¶¶, ‖‖), then triplicate, and so on. Try not to go that far.

Consider the following table, which is an example of the notes in effect.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
<table>
<caption>Table 3. Reference-mark entities as table notes.</caption>
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

[^refmarks]: Note to documentation team: CSS rules need provided in documentation to make the reference-mark lists in `tfoot` work. See [workable CSS](https://github.com/textpattern/textpattern.github.io/issues/123#issue-516949203).

#### Notes in main text

Notes are, technically speaking, half of notes and bibliography referencing systems and are used to cite sources (e.g. the source of a quotation used), or enable authors to expand on ideas without over-bloating the main text. With this in mind…

**Use notes sparingly**:

User notes sparingly in user documentation. We’re not recording history, only providing how-to information. Fewer notes are less overhead for readers wanting to get something done. However, a few notes won’t hurt if the information is relevant and brief.

**Refer to them correctly**:  

Many markup languages, like Markdown, Kramdown, Textile, and so on, call their notes functionality ‘footnotes’. But that’s not correct, a misnomer, because footnotes are not what these extensions actually create. ‘Footnotes’ means notes that are positioned in immediate visual context of their inline reference markers, notably at bottoms of pages in print publications (or digital formats that mimic the set page dimensions of print media). A reader should not have to flip pages by finger or thumbswipe, or jump long distances by link or scrollbar, to read footnotes; otherwise they are not really footnotes. When notes all come at the end of a publication in a single list, whether print or web document, they are called ‘endnotes’, and every English style manual that matters, including *Oxford* and *Chicago*, will say so. The *foot-* and *end-* prefixes merely indicate _where_ the notes are placed in published material. They same style manuals refer to both types more generally as just ‘notes’. So if you can’t get it right specifically, at least get it right generally.[^notes]

**Adding the notes syntax**:

Notes are added using Kramdown notation, and they function the same way whether you write inline markers as numerals in sequence (`[^1]`, `[^2]`, etc.) or as unique text (e.g. `[^dope]`, `[^dongle]`, `[^dingo]`, . . .), whatever you choose to use. Either way, the resulting endnotes list is an ordered list of arabic numerals at the bottom of the page, inside a preformatted `div`.

Using text as inline markers is a better for a couple of reasons:

1. Text markers can be created relevant to the topic being annotated, thus they’re immeditately intuitive and easier to spot when editing.
2. Numbered markers are needlessly distracting if you are trying to keep them in order; and confusing if you have many of them and they get out of order.

Skip the madness and use text markers only. It’s easier.

**Example of notes usage:**

At the time this section was written, this document used two notes: one in the [**Author perspective**](#author-perspective) section, and the other in this section on notes. In each case, you will see the inline marker as a sequential superscript numeral.

The actual markers used in the markup are: `[^we]` and `[^notes]`. Each note marker uses a word relevant to the topic. Logical.

The notes themselves are added at the bottoms of the sections they appear in. Sure, you could end up having notes spread out through the document this way. But by putting them at the ends of the sections they belong to, it’s easy to find and edit them in context, instead of jumping up and down in the document.

Each note begins with the same syntax and marker used inline, followed by a colon:

```
[^we]: It’s okay to use first-person plural (i.e. we, us) in editor collaboration materials . . .
```

```
[^notes]: Recognize that all those markup languages, . . .
```

As already mentioned, the resulting notes list appears at bottom of the page (ergo, endnotes), because that’s how Kramdown notes are designed to function. Seek down and you shall find them.

Custom styles are used to provide a faux header in the endnotes list container. This provides proper visual heading of the back matter section, while keeping it out of the contents list (i.e. the table of contents) at top of page, which automatically targets headers.[^backmatter]

[^notes]: So, if you’re thinking of developing yet another notes extension for web documents, call it _notes_, or _endnotes_ specifically.

[^backmatter]: Note to documentation team: This should be simple to add and endlessly useful.  

