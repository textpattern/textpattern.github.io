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

The target audience of user documentation is primarily new users of [Textpattern](https:/textpattern.com), and notably the administrator (or ‘Publisher’), since that role is automatically adopted when installing Textpattern software.

## Scope and depth of material

The scope and depth of user documentation should be what is needed and not more.

### Scope of documentation

The scope of the documentation is primarily on the software’s core functionality; the out-of-the-box features and capabilities.

To a lesser degree (and until further notice), the documentation site also harbours [plugin development resources](https://docs.textpattern.com/development/) and Textpattern [brand and collaboration information](https://docs.textpattern.com/brand/), including these guidelines.

With regard to the primary user documentation, it’s better to write and add new pages when needed than to anticipate every possible topic in advance without knowing it’s warranted.

If a page already exists, it should be kept current with the latest software release, as well reviewed for refinement on a feasibly regular basis.

Else, a page can be removed, upon editor review, if the effort to revise it is not worth the return it provides by doing so. More likely, any material of value on such a page can be recycled into another relevant location.

### Depth of page content

A given page should only be as explanatory as necessary; thorough, but not belabouring every possible factoid (see [Revising existing pages](#revising-existing-pages)).

Rely on the usability of Textpattern’s interface, and leave some benefit of doubt to the user to connect the dots. Only expand on subject minutiae when it helps clear up questions repeatedly raised in the [community forum](https://forum.textpattern.com/). See the [documentation collaboration procedures](https://docs.textpattern.com/brand/user-docs-procedures) for more on that notion and others. 

Administration-side panels strive to be as intuitive as possible by design. Perhaps not perfect but always improving. Therefore, it’s probably not necessary to meticulously document panel functionality in minute detail, especially as the panels provide help tips in context of a given function or widget.

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
{: .example-text}

The second-person stance empowers the reader on their solo adventure. You're just an impartial voice over their shoulder guiding them along. But don't go overboard on the pronouns. If you're addressing the reader in every other sentence, you have revising to do.  

Never use first-person singular (*I*, *me*, *my*) or plural (*we* and *us*) in user documentation. The documentation isn't about you, and the voice of Textpattern is unnecessary and inappropriate. See the [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide#author-perspective) for other platform perspectives.

#### Exceptions to the rule

There is at least one exception to the 'second-person' rule. The third-person could be used in specific contexts, like when guiding the administrator on user accounts. Consider this hypothetical example:

To change a user’s role, find and click their name in the Users panel . . .
{: .example-text}

You are still in second-person mode, but you've introduced a third-party, the potential future collaborators of the reader. It could just as well be third-person singular (*his*, *her*). But for the vast majority of documentation, you will never need to do this.

Another exception is with regard to materials like you are reading now, materials written by editors for other editorial collaborators. _We_ are speaking to each other, so use of ‘we’ (first-person plural) can be appropriate in pages like this.

### Abbreviations

Regarding user documentation, two topics are especially important to review in the [Abbreviations](https://docs.textpattern.com/brand/editorial-style-guide#abbreviations) section of the editorial style guide: the avoidance of common-word abbreviations like ‘admin’, and the recommended use of Latin idioms as abbreviations in parenthetical notes over English equivalents in regular text.

### Brand name

Particularly in documentation, do not overuse the brand name. The context of being a Textpattern resource is already clear to readers by fact they are using the software and in the documentation domain. See more in [Brand name](https://docs.textpattern.com/brand/editorial-style-guide#brand-name) guidelines of editorial style guide. 

## Formatting interface strings

Interface strings are the text elements a user reads in the back-end panels of the software; from headers to form control labels to system feedback messages. Thoughtful development of these strings is critical for good software usability, but so is referring to them consistently yet unobtrusively in documentation.

A clear but minimum set of formatting rules are needed to distinguish the different types of strings from regular documentation text. A single format style (e.g. bold, italic, quotation marks, or whatever) is little more effective than no formatting at all. Thus a balance needs struck: On one hand a minimum number of formatting styles used; on the other, clear distinction between string types, and across types and normal documentation text.

Various strings in the software's back end, that you may need to document, are detailed in the following sections. Some of these strings use `strong` and `em` (emphasis) via Markdown for [inline formatting](#inline-text-formatting). Be cognizant of the fact that Markdown does not provide syntax for true `i` (italic) and `b` (bold) element formatting. In this case, however, it's okay; you want screen-reading technology to catch the distinguished (**strengthened** or *emphasized*) interface strings, in addition to those solely distinguished by capitalization or quotation marks. The noted exception is with regard to [path and file names](#paths-and-file-names).

### Headers, labels, and options

One reason multiple formatting styles are needed to document interface strings like headers, labels, and control options: sentence case is used for writing them. This prevents relying on capitalizations alone to denote where a string ends in regular text. On the other hand, some strings are indeed sentences with terminal punctuation, so even if title case was the convention for strings, there'd still be some needing more distinction than what capitalization alone could provide. Thus a maximum of four formatting styles are defined as balance between distinction and presentation.   

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

Note that panel names and headers under the Presentation section of the back end (i.e. Themes, Sections, Pages, Forms, and Styles) are different from the names of templates created in those respective panels.

### Presentation template names

Template names are the names of Textpattern's default and custom presentation templates created and accessed via their respective Presentation panels. The names, notably the core names, are not capitalized, and compound names are separated by underscores. This makes it difficult to discern these strings, especially the single-word names, from regular text without additional formatting. But do not confuse these strings with other strings by using the wrong formatting.

#### General use

The formatting to use, preferably, is <i>**italic-strong**</i> (i.e. `<i>**italic-strong**</i>`), but ***emphasis-strong***  (i.e. `***emphasis-strong***`) is acceptable, despite the double emphasis made to screen-readers, since Markdown does not provide for non-emphasized italic formatting and most writers won't bother with the preferable syntax (see [Inline text formatting](#inline-text-formatting) section for more explanation).

An example:

The default page is aptly named <i>**default**</i>.
{: .example-text}

Note how the word 'default' is used twice in that sentence, but only one context is correctly a template name. The first instance is used as an adjective. Ensure to format only the proper nouns in this case; the actual string names.

Another example:

The markup controlling how comments are displayed is found in the <i>**comments_display**</i> form in the Forms panel.
{: .example-text}

Note the underscore on core compound names. Also note that 'Forms' is a single-word header string denoting the name of the panel; used here as a proper adjective, and correctly distinguished from regular text by the capitalization. The word 'form`, however, is just a common noun, thus not formatted.

One more example with default again:

A default stylesheet, named ***default***, must exist in the *styles* directory of a theme package. If it's missing, it will be created as an empty stylesheet upon importing the theme.
{: .example-text}

#### Used in lists

In the rare case you need to use a list of template names for a given template type (sometimes needed in plugin and theme development documentation), leave the formatting out (i.e. use normal text), but only if the items in a given list are all strings of a single type and no other text.

For example, the following is one of several actual lists of form names used in the [Front-end themes](https://docs.textpattern.com/themes/front-end-themes) page of documentation. Everything is formatted correctly, from lead-in sentence (providing the necessary context) to list items:

Article forms:
{: .example-text}

* article_listing
* default
* search_results
{: .example-list}

Ignore the fact the list is styled as a documentation example here. The three things to note are: 1) template names are not formatted. Formatting them is unnecessary in this case because the list is purely template names and the lead-in sentence makes that perfectly clear. 2) The list is not `code`, so should not be marked up as a code block. It's just a simple list. 3) Nor should it be styled as a file tree component, because it's not representing the contents of a specific directory (see [File tree examples](#file-tree-examples)).

If the list items were adulterated with normal text, the expected formatting would have to be used, for example:

* the <i>**article_listing**</i> form
* the <i>**default**</i> form
* the <i>**search_results**</i> form
{: .example-list}

But that would be sloppy list construction anyway, so it should never be needed.

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

### Paths and file names

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

Do not italicize these strings when used in a list, such as reflecting a file tree, directory contents, or what have. See the appropriate styling for these unique cases in the [File-tree components](#file-tree-components) section.

### Normal text

Normal text strings are any other type outside of those already described (outside of any functional control or interface widget). A notably example are the possible types of text that appear at the bottoms of back-end panels, like software versions numbers.

Normal text strings should be offset from regular documentation copy by single quotation marks, for example (links are part of the actual interface text):

[Textpattern CMS]() (v4.7.3)
{: .example-text}

And:[^examples]

[Back to top]()
{: .example-text}

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

## Markup and styling

Due to certain platform constraints, documentation uses a mixture of HTML, regular Markdown, and Kramdown, depending on what you need. Markdown is used to add the usual content types (lists, blockquotes, code). Kramdown is used to add and/or style specific block-level content types (definition lists, notes, example, file trees). HTML is used solely to add [tables](#tables).

Before getting to those neat block-level content types, a few important words need said about formatting inline text.  

### Formatting inline text

Only use inline formatting like *emphasis*, **strong**, or ***emphasis-strong*** when [documenting interface strings](#formatting-interface-strings). The sole exception is when emphasizing a word as a part of regular text (e.g. ‘You *really* don’t want to do that.’), and this should rarely be necessary. Never use such inline formatting at any other time in regular copy unless it’s to distinguish an interface string, otherwise you add confusion. For the sake of formatting interface strings, consider Table 2.

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

Unlike with Textile (not usable in GitHub), Markdown does not have syntax for rendering `i` (italic) and `b` (bold) elements. HTML must be used when these specific inline elements are needed, without the inherent strength and emphasis that is otherwise detected by screen-readers for the visually impaired.[^emphasis]

[^emphasis]: As an example, it's appropriate to italicize the titles of major works, always in title case, as you might do in main text or endnotes like this. But not by using `em`, which would emphasize the text unnecessarily when read by a screen-reader.

### Block-level content and styling

Aside from the usual Markdown to add common block-level content types (lists, blockquotes, code), Kramdown can be used to add other block level types (definition lists and notes), or to style common types to create new specific types of content (documentation examples, file tree components).

In the latter case, Kramdown’s ‘[inline attributes list](https://kramdown.gettalong.org/syntax.html#inline-attribute-lists)’ (IAL) notation is used to apply a custom class selector. It’s done easily by placing the IAL syntax on a new line immediately under the block element to be styled, for example:

```
This is a paragraph styled as a hypothetical example.
{:.class-name}
```

Only worry about styling block element content if such selectors are described in the following sections.[^custom]

[^custom]: Avoid using Kramdown and HTML’s `style` attribute to create non-standard presentation on inline or block-level content. If you think a new style is needed, follow the [documentation collaboration procedures](https://docs.textpattern.com/brand/user-docs-procedures) to propose one so a custom selector may be created for it.

### Block quotes

Do not use block quotes in documentation (i.e. the `blockquote` element). There is simply no need, despite how easy it is to hit the `>` key to add one via Markdown. This may not be true in other Textpattern platforms (e.g. the Forum), but documentation has no need of them, and especially if used incorrectly.

Block quotes are for ‘displayed quotations’ only (i.e. quotations that are not embedded inline).[^disquotes] The W3C specification says the same thing: <q cite="https://www.w3.org/TR/html52/grouping-content.html#the-blockquote-element">the `blockquote` element represents content that is quoted from another source</q>.[^blockquotes]

Displayed quotations are for when you need to quote large amounts of matter, and that works against the [scope and depth objective](#scope-and-depth-of-material) for documentation; to be clear, concise, and actionable. Conversely, inline quotations, using `<q cite="">. . .</q>`, are perfectly fine, as demonstrated in the previous paragraph, as long as they’re not overused.

Block quotes are specifically not used as example boxes, or for any other miscellaneous need. Don’t be fooled by their neat orange presentation, though it grabs your attention. See options for custom content needs, such as offset examples, in the following sections.

[^disquotes]: <i>New Oxford Style Manual</i>, ed. Anne Waddingham (3rd edn, Oxford, 2016), p 162.

[^blockquotes]: HTML 5.2: W3C Recommendation, World Wide Consortium, 14 December 2017, [w3.org/TR/html52/grouping-content.html#the-blockquote-element](https://www.w3.org/TR/html52/grouping-content.html#the-blockquote-element), accessed 14 November 2019.

### Example blocks

Example blocks are paragraphs, or more rarely lists, of hypothetical text used for showing examples in documentation. The styling helps distinguish these blocks from regular text so there's no confusion for the reader. Use these whenever the example content is not code, a displayed quotation, or a file tree example (see [File tree examples](#file-tree-examples)).

#### Example text

Examples of regular text (i.e. paragraph blocks) should use the following Kramdown IAL:

```
Add paragraph text here.
{: .example-text}
```

Or:

```
Add paragraph text here.
{: style="margin-left:3%; padding-left:.5em; border-left:2px dotted #c3edfa;"}
```

This will indent the example and add a dotted blue-grey left border to distinguish the example from normal documentation copy.

#### Example list

Though you should rarely need it, if ever, you can employ a general list for example reasons, use this IAL instead:

```
* item one
* item two
* etc
{: .example-list}
```

The example list styling looks like the example text styling except the bullets are changed to hyphens and positioned inside the list container, thus the need for it’s own selector. 

### File-tree components

Sometimes you may need to show a file tree, or the contents of a folder, or just a sample set of a directory's contents. This kind of content should not be be shown as regular text lists, nor marked up as a `code` block; rather, use one of the two available class selectors, depending on scope of list. 

*Always* add file extensions on file names, and *never* add inline formatting on list items. When the tree stylings are used, the inline formatting (e.g. making paths and files italic in regular text) is unnecessary. 

#### Full tree scope

If you need to show an entire tree, or a directory with its subdirectories expanded as well, for example:

* parent_directory
  * child_directory1
  * . . .
  * child_directory4
    * file1.ext
    * file2.ext 
    * file3.ext
  * . . .
{: .list-tree}

Use this Kramdown IAL:

```
{: .list-tree}
```

This will present the nested lists as a file tree structure. The top-post parent will be indicated by a right-facing arrow, and folder association lines will replace bullets on all child items. The font size will be slightly smaller than regular text. 

#### Single directory contents scope

If you want to just show the contents of a single directory, without including the parent directory or showing expanded subdirectories (i.e. a non-nested list), for example:

* . . .
* subdirectory2
* subdirectory3
* . . .
* directory5
* . . .
* file1.ext 
* file2.ext
* . . .
{: .list-directory}

Use this Kramdown IAL:

```
{: .list-directory}
```

This has the same font styling as a full tree display, but there are no association lines or bullets otherwise on items.  

### Definition lists

Definition lists are added using regular Kramdown; no custom selector is need:

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

Add more data items as needed.

### Notes

Notes are used sparingly and in limited cases in Textpattern documentation; either as reference notes in tables, using a reference-mark system, or as general notes in main text, producing short _endnotes_ lists.

#### Notes in tables

Reference-mark notes are a common annotation device in information design, and are specifically used in tables. The standard reference-mark system cycles through six marks, in this order: *, †, ‡, §, ¶, ‖.

If a table ever needs more than six notes, which should be rare to never, the pattern repeats in duplicate (**, ††, ‡‡, §§, ¶¶, ‖‖), then triplicate, and so on. Only the first six single marks are provided for in CSS. Since these notes are in [HTML tables](#tables), they must also be structured with HTML. 

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

Then write the corresponding note in the footer `li`, in the same order. The entities are added to list items automatically. Don’t add them manually in list items.

If you ever need more than six notes, then use `<ol class="list--no-numbers">`, for a list without any list style at all, then add the reference marks manually:

```html
<ol class="noliststyle">
<li>. . .</li>
<li>&#x2016; . . .</li>
<li>&#x002a;&#x002a; . . .</li>
<li>. . .</li>
</ol>
```

#### Notes in main text

Notes, technically speaking, are half of notes and bibliography referencing systems. The notes part are meant to cite sources discussed in text (e.g. the source of a quotation used), or enable authors to expand on ideas without over-bloating the article. We can use notes in documentation without bibliographies too.

But use notes sparingly in user documentation. We’re not recording history, only providing how-to information. Fewer notes are less overhead for readers wanting to get something done.

Notes are employed using Kramdown.[^notes] A note marker is first added to the end of a sentence (or clause), in context of the applicable topic, for example:

. . . end of a sentence.[^marker]
{: .example-text}

Then, at the bottom of that section (i.e. just before the next document header), add the corresponding note, which begins with the same marker notation plus a colon `:`, for example:

```
[^marker]: Start of corresponding note . . .
```

If you have multiple notes in a given section, continue the same way, making sure notes are in the order as they are marked in main text. Not because they have to be that way, Kramdown will render the correct order automatically, but because it’s just logical.

Having notes spread out through the document this way might seem strange at first, but it’s easier to find and edit them in context. By contrast, if notes are listed together at the end of a document (as needing done with Textile), you must jump up and down in the document (i.e. out of context) whenever revising them. Either way the resulting endnotes list is rendered at the end of the page (inside a pre-formatted `div`), but use the process described above, which is a collaboration standard for Textpattern documentation.

Custom styles are used to provide a faux header in the endnotes `div` container. This provides proper visual heading of the back matter section, while keeping it out of the contents list (a.k.a. table of contents) that automatically targets `h2` through `h4` headers.

[^notes]: Many markup languages, like Markdown, Kramdown, Textile, and so on, call their notes functionality ‘footnotes’. But that’s incorrect, a misnomer, because footnotes are not what these extensions actually create. ‘Footnotes’ are a specific type of notes positioned in immediate visual context of their inline reference markers on printed pages having set dimensions (or digital formats that mimic the set page dimensions of print media). A reader should not have to flip pages by finger or thumb-swipe, or jump long distances by link or scrollbar, to read footnotes; otherwise they are not really footnotes. When notes all come at the end of a publication in a single list, whether print or web document, they are called ‘endnotes’, and every English style manual that matters, including *Oxford* and *Chicago*, will say so. The *foot-* and *end-* prefixes merely indicate _where_ the notes are placed in published material, regardless of medium. They same style manuals refer to both types more generally as just ‘notes’. So if you can’t get it right specifically, at least get it right generally. And if you’re thinking of developing a notes extension for a cool, new markup language (e.g. Textup), don’t make the same mistake as other markup languages. Call the functionality Endnotes, or Notes in general, but not ‘Footnotes’.

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

