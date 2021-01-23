---
layout: document
category: Brand
published: true
title: Guidelines for documentation development
description: Guidelines for the development of Textpattern user documentation.
---

# Guidelines for documentation development

These guidelines, an extension of Textpattern’s baseline [editorial style guide](/brand/editorial-style-guide), are specifically for the upkeep of user documentation. Documentation authors, editors, and other interested contributors will want to read up here (as well review the [documentation collaboration procedures](https://github.com/textpattern/textpattern.github.io/issues/149)).

**Contents**

* Table of contents
{:toc}

## Audience

The primary target audience of user documentation is new users of Textpattern, and notably the administrator (or ‘Publisher’) role, since that role is acquired when installing Textpattern software for the first time.

Secondary audiences are, to a lesser degree, experienced users and active [community](https://forum.textpattern.com/) participants using specific resources like the [Tags reference](/tags) or [developer documentation](/development).

## Breadth of documentation

The breadth of documentation spans the out-of-the-box functionality of Textpattern. This includes key administration features and capabilities, and using Textpattern tags.

## Depth of documentation

Here is where collaborating authors and editors must be aware and aligned. Depth of documentation can be thought of in terms of a layered information system. There’s a maximum number of layers, but the fewer layers a user must descend, the better it is for everyone. Thus is the goal for maintaining user documentation over time: produce only what is needed and not more.

Achieving this goal means users are more capable of helping themselves (versus asking questions in the forum) and tasks done quicker (by being independent), while volunteer editors have less overhead to maintain.

The first point of contact in this layered support system is the usability of the software.

### Rely on software usability

Textpattern developers strive to make the software usable, intuitive, memorable, and enjoyable (a classic definition of software having good usability) by listening to [user feedback](https://forum.textpattern.com/viewforum.php?id=2), considering [issues for development](https://github.com/textpattern/textpattern/issues), and avoiding needless feature creep.

So while some documentation is needed, we only need to explain what isn’t already clear from the software’s interface design, and that includes embedded interface help.

### Rely on embedded help tips

Embedded help tips (a.k.a. pophelp) in the back-end interface panels are the second layer in the layered support system. They are a bridge between overall software usability and end-user documentation.[^pophelp] They are meant to quickly and _sufficiently_ explain a feature when the organization, design, and/or labeling of the functionality is not otherwise clear. Thus Embedded help tips are an interface usability concern for developers and a documentation concern for editors.

Though embedded help and user docs are both written for users of the software, they have different contexts of use and must be written with those different contexts in mind. Embedded tips are not simply extracts of what is found on documentation pages. Nor should user documentation wax redundantly what embedded tips already explain.

[^pophelp]: Embedded help tips might better bridge software and user documentation by including links at ends of pophelp items for elaborated explanations in the user docs.

### A single documentation page

The third layer of the support system is the single documentation page that best expands on a given back-end panel concept or scenario. A given page may concern many pophelp items, and that’s okay; the need for fewer documentation pages, not more, is the goal.

When [docs collaboration procedures](/brand/#user-docs-procedures) are not throwing a 404, they will guide where to focus editorial attention. But for immediate purposes, it is better to draft new documentation only when there’s a clear need for the material. Let the writing needed be dictated by the community’s demand for specific information, or its struggle around a pernicious problem. Monitor the forum for repeating gripes and you’ll identify the _what_ part. Collaboration between author, editors, and doc-tree architects will take care of the _how_.

### Scope and depth of a page

The scope and depth of a page’s subject matter can be what is needed and not necessarily more, even if more could be said for the sake of thoroughness, or repetition in context.

Again, consider [software usability](#rely-on-software-usability) and [embedded help tips](#rely-on-embedded-help-tips) in relation to documenting back-end panel features. If the features of an otherwise intuitive panel, including what is revealed in panel help tips, are meticulously annotated in user documentation for the sake of doing it, then users wade through needless detail in search of what little may, in fact, need elaboration.

One way to start downsizing needless content in administration panel documentation is to maintain their structure, but replace redundant or obvious descriptions with simple referral statements.

An example referral statement to see the software itself:

See intuitive feature in software.
{:.example}

It is safe to assume that anyone reading that particular line will have installed the software, and thus can refer to it. And if not, the documentation wouldn’t matter to them anyway.

Following is another example of a referral statement. Use this one if a given feature is only clear from the additional information conveyed via a help tip:

See help tip for this feature.
{:.example}

Buy using statements like above in feature sections of page documentation, where the software or embedded help tips already make the feature’s purpose and function clear, we reduce needless information load on the page. This makes it easier for documentation users to scan pages for the instances when more elaboration is needed and provided.

And when such elaboration is needed, it should augment embedded help information, not repeat it redundantly.

## Writing and editing

In addition to the helpful guidelines below for writing and editing documentation, see the baseline [editorial style guide](/brand/editorial-style-guide) for style conventions in general.

### Author perspective

Documentation is written from the perspective of an impersonal expert to the first-time user of the software; in this case, a Textpattern administrator, who is likely developer, designer, and author, too, in that order.

#### Second-person

Therefore, documentation authors and editors should write in the second-person point of view, using the pronouns *you*, *your*, and *yours* when referring to the reader; the assumed administrator of a new Textpattern installation:

Click your name in the Users panel to change your email.
{:.example}

The second-person stance empowers the reader on their solo adventure. You're just an impartial voice over their shoulder guiding them along. But don't go overboard on the pronouns. If you're addressing the reader in every other sentence, you have revising to do.

Never use first-person singular (*I*, *me*, *my*) or plural (*we* and *us*) in user documentation. The documentation isn't about you, and the voice of Textpattern is unnecessary and inappropriate. See the [editorial style guide](/brand/editorial-style-guide#author-perspective) for other platform perspectives.

#### Exceptions to the rule

There is at least one exception to the 'second-person' rule. The third-person could be used in specific contexts, like when guiding the administrator on user accounts. Consider this hypothetical example:

To change a user’s role, find and click their name in the Users panel . . .
{:.example}

You are still in second-person mode, but you've introduced a third-party, the potential future collaborators of the reader. It could just as well be third-person singular (*his*, *her*). But for the vast majority of documentation, you will never need to do this.

Another exception is with regard to materials like you are reading now, materials written by editors for other editorial collaborators. _We_ are speaking to each other, so use of ‘we’ (first-person plural) can be appropriate in pages like this.

### Abbreviations

Regarding user documentation, two topics are especially important to review in the [Abbreviations](/brand/editorial-style-guide#abbreviations) section of the editorial style guide: the avoidance of common-word abbreviations like ‘admin’, and the recommended use of Latin idioms as abbreviations in parenthetical notes over English equivalents in regular text.

### Brand name

Particularly in documentation, do not overuse the brand name. The context of being a Textpattern resource is already clear to readers by fact they are using the software and in the documentation domain. See more in [Brand name](/brand/editorial-style-guide#brand-name) guidelines of editorial style guide.

### Version numbers

Do not make reference to past or future Textpattern version numbers. This only makes it harder to maintain documentation as new versions are released. Write about the functionality of the current version without indicating in what versions the functionality changed. Totally unnecessary.

The sole exception is in tag pages where ‘Genealogy’ sections are maintained.

## Formatting interface strings

Interface strings are the text elements a user reads in the back-end panels of the software; from headers to form control labels to system feedback messages. Thoughtful development of these strings is critical for good software usability, but so is referring to them consistently yet unobtrusively in documentation.

A clear but minimum set of formatting rules are needed to distinguish the different types of strings from regular documentation text. A single format or style (e.g. bold, italic, quotation marks, or whatever) is little more effective than no formatting at all. Thus a balance needs struck between having: a minimum number of distinguishing features, and clear distinction between string types and across types and regular documentation text.

The conventions for formatting or marking interface strings, and other types, are detailed in the following sections. Some of these strings define using `em` (emphasis) or `strong` formatting, easily added via Markdown. Others define using `i` (italic) because the emphasis from using `em` is not appropriate for screen-readers in those cases. The latter situation requires adding `i` as HTML, since Markdown does not provide syntax for true `i` (or `b`, bold) element formatting. See the [inline formatting](#inline-text-formatting) section for more on that issue specifically. Specific style and formatting issues are addressed individually per string type.

### Header and label strings

The use of sentence-case for writing strings is one reason no single style or format, or reliance on capitalizations alone, will work to address the different interface headers and labels. And in any case, some strings are sentences with terminal punctuation. To address the various combinations of headers and labels, four style conventions are needed across them all: capitalization, strong formatting, italic formatting, and single quotation marks.

#### Single-words, capitalized

Headers and labels that are single-word strings require no additional formatting. Their capitalization alone, recognized by screen-readers, is sufficient for distinguishing these strings, as long as the context is made clear, for example:

The Write panel.
{:.example}

In this common-use example, the string is a proper adjective (i.e., a name being used as a adjective), which is always capitalized. The word ‘panel’, a subject noun, is not part of the string; rather, it provides the general *what* and *where* context of ‘Write’.

Another example, albeit exaggerated, with all kinds of *what* and *where* context:

Under the Presentation section of the back-end’s main navigation are five presentation panel links: Themes, Sections, Pages, Forms, and Styles.
{:.example}

In this example we have six single-word strings being named, easily identified by their capitalization. ‘Presentation’ (a link label) is used as another proper adjective; in this case, modifying ’section’, a part of the main navigation. But the second instance of the word, ‘presentation’, is just a regular adjective modifying ‘panel links’. No capitalization is necessary there. And no specific presentation panel exists, anyway, so capitalizing it would be confusing. The remaining five strings are used as proper nouns of link labels.

Note that panel names and headers under the Presentation section of the back end are different from the names of templates created in those respective panels. The latter is dealt with in [Presentation template names](#presentation-template-names).

#### Multiple-words, no terminal punctuation

Headers and labels also exist as multiple-word strings lacking terminal punctuation. But because of the sentence-case capitalization on interface strings, we can’t rely on capitalization alone to distinguish the entire string from regular text. To account for this, `**strong**` formatting is used, for example:

The **Date format** setting.
{:.example}

Screen-readers will also pick up the strong format, which is appropriate here because the lack of title-case on such strings would otherwise make the extent of them undetectable to screen-readers without the added strength.

#### Full sentences

These types of strings are uniquely preferences labels (a.k.a. settings) in the Site, Admin, Publish, and Feeds sections of the Preferences panel. Specifically, they are the settings with labels posed as questions. For these labels, `emphasis` is used to distinguish them easier from regular text, which screen-readers also pick up on, for example:

Widowed words happen when the last word of a title wraps to a new line by itself. You may not like it. Prevent widowed words from happening by selecting ‘Yes’ for the *Prevent widowed words in article titles?* preference in the Publish section of the Preferences panel.
{:.example}

As in earlier examples, additional strings are used (correctly) and lots of context is involved to make them clear. The string we're concerned with here is the preference label posed as a question, distinguished by emphasized text. Without the emphasis, the string would be much harder to see and understand.

### Option strings

Options strings can be thought of as two types: select box options and radio button choices. The latter is not really an option, technically speaking, but a label. Regardless, we distinguish them the same way because it probably fits a users mental model better: that these are choices to make for a given setting. The treatment to use, picked up by screen-readers, is single quotation marks, for example:

If you want URL titles to be hyphenated, select ‘Hyphenated (title-like-this)’ from the select-box options for the preference, **Permalink title URL pattern**, in the Publish section of the Preferences panel.
{:.example}

Again, this exaggerated example uses other string types and lots of context for demonstration. In actual documentation, much of the context will be clear, thus the exhausting specificity won’t be necessary. Ensure that it is clear, but only as much as needed.

### Template name strings

Template names are the names of Textpattern's default and custom presentation templates created and accessed via their respective panels under the Presentation section. The names, notably those provided in an out-of-box installation, are not capitalized, and compound names are separated by underscores. This makes it difficult to discern these strings, especially the single-word names, from regular text without additional formatting, described in the next two sections. But do not confuse these strings with other strings by using the wrong formatting.

#### General template name use

The formatting to use is, preferably, <i>**italic-strong**</i> (`<i>**italic-strong**</i>`) or *<b>emphasis-bold</b>* (`*<b>emphasis-bold</b>*`). The `i` or `b` must be added with HTML because Markdown does not provide italic or bold syntax (see [Formatting inline text](#formatting-inline-text)). This ensures screen-readers pick up on the name without getting the double emphasized hit that using `***emphasis-strong***` would otherwise give. Let your conscience be your guide.

An example:

The default page is aptly named <i>**default**</i>.
{:.example}

Note how the word 'default' is used twice, but only one instance is correctly formatted as a template name.

Another example:

The markup controlling how comments are displayed is found in the <i>**comments_display**</i> form in the Forms panel.
{:.example}

Note the underscore on core compound names, and that 'Forms' is a single-word header string denoting the name of the panel; used here as a proper adjective, and correctly distinguished from regular text by the capitalization. The word 'form', however, is just a common noun, thus not formatted.

One more example combining another string type, an [inline directory name](#paths-directories-and-files-inline):

A default stylesheet, named ***default***, must exist in the *styles* directory of a theme package. If it's missing, it will be created as an empty stylesheet upon importing the theme.
{:.example}

#### Template names in lists

In the rare case you need a list of specific template names (sometimes needed in plugin and theme development documentation), leave the formatting off and use normal text, for example:

* article_listing
* default
* search_results
{:.example}

The three things to note in this example are:

1. **No formatting**. Template names are not formatted. The formatting is unnecessary in this case because the list is purely template names.
2. **No code**. The list is not `code`, so should not be marked up as a code block. It's just a simple list.
3. **No special styling**. In this case, the list is not representing the contents of a directory, so it should not be styled with one of the custom selectors for file tree components (see [File tree examples](#file-tree-examples)).

If the list items were adulterated with normal text, the expected formatting would have to be used, for example:

* the <i>**article_listing**</i> form
* the <i>**default**</i> form
* the <i>**search_results**</i> form
{:.example}

But that would be sloppy list construction to avoid.

### Alert message strings

Alert messages appear to software users as feedback dialogue in the Diagnostics panel, or in other panels as a software user proceeds through certain tasks (e.g. when saving draft changes). Four kinds of alert messages exist (Table 1). The full set of alert messages in core are detailed in [Diagnostics](/administration/diagnostics-panel).

<div class="tabular-data" tabindex="0" aria-labelledby="table1-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table1-caption" itemprop="about">Table 1. Class selectors for alert messages.</caption>
        <thead>
            <tr>
                <th scope="col">Alert type</th>
                <th scope="col">Color</th>
                <th scope="col">Selectors<sup>&#x002a;</sup></th>
            </tr>
        </thead>
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
                <td><code>.error</code></td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">
                    <ol class="list--refmarks">
                        <li>Each alert uses two class selectors: a common one (<code>.alert-block</code>), plus the unique one shown in table.</li>
                    </ol>
                </td>
            </tr>
        </tfoot>
    </table>
</div>

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

### Free text strings

Free-text strings are any other type of text in back-end panels not already described. These strings refer to words or paragraphs outside of navigation, forms, tables, widgets, and so on. Because free text strings can be short (a few words) or long (a full paragraph) it’s most appropriate to treat them as embedded (inline) quotations or displayed (block quote) quotations, accordingly.

#### Embedded quotations

Embedded quotations are short strings of text from another source quoted inline. *Short* being the key word, because the strings are not long enough to warrant being [displayed quotations](#displayed-quotations).

A few such strings are scattered around the administration side of the software. Following is a hypothetical documentation example that points out two such strings (links are part of the actual interface strings but not functional here):

At bottom of every back-end panel are two short strings. One informs you of the software version used: <q>[Textpattern CMS](#embedded-quotations) (v4.8.0)</q>. The other provides a link to the top of the panel: <q>[Back to top](#embedded-quotations)</q>.
{:.example}

It’s appropriate to mark up the embedded quotations using a `q` element, which adds the quotation marks automatically, for example:

```
<q>Textpattern CMS (v4.8.0)</q>
```

Do not bother adding a `cite` attribute to the `q` element when quoting short, free-text strings because every back-end panel includes the strings. Pointing to one panel in particular is needlessly arbitrary. A `cite` element would be appropriate, however, if using an embedded quotation for any other reason, like used in the next paragraph to cite the W3C.

#### Displayed quotations

When, and only when, a free-text string is long enough to warrant being a ‘displayed quotation’ (i.e. quotations that are not embedded inline).[^disquotes], mark it up as a block quote using a `blockquote` element via Markdown’s `>` notation). The W3C specification says the same thing: <q cite="https://www.w3.org/TR/html52/grouping-content.html#the-blockquote-element">the `blockquote` element represents content that is quoted from another source</q>.[^blockquotes]

There are only two situations that you might ever use a block quote; if quoting a popup help tip, or if quoting the only free-text string in the back-end interface that’s long enough to warrant this markup. It’s a paragraph in the [Languages panel](/administration/languages-panel), under the panel header, and reads:

> **You can help us improve Textpattern!** We welcome additional translations (and corrections to current translations) by our user community. Please visit Textpattern language translations (opens an external link in a new window) for further details.

Never use `blockquote` to mark up example boxes, note boxes, or any other miscellaneous block elements simply to make text stand apart from regular copy. Specific selectors are available for such situations and described later.

[^disquotes]: <i>New Oxford Style Manual</i>, ed. Anne Waddingham (3rd edn, Oxford, 2016), p 162.

[^blockquotes]: HTML 5.2: W3C Recommendation, World Wide Consortium, 14 December 2017, [w3.org/TR/html52/grouping-content.html#the-blockquote-element](https://www.w3.org/TR/html52/grouping-content.html#the-blockquote-element), accessed 14 November 2019.

### URIs, directory paths, and file names

This scope includes uniform resource identifiers (e.g. URLs), relative directory paths (e.g. /textpattern), and file names (e.g. index.php, .htaccess, and so on). The formatting conventions are the same whether you are describing them as strings in back-end panels or using them as regular paragraph text.

#### URIs, paths, and file names inline

URIs, directory paths, and file names used inline are not formatted with italic or bold, nor marked up as inline code, nor set apart with quotation marks.

Wrong:
: *example.com*
: The ‘Sites’ directory.
: */Users/name/Sites*
: `~/Sites`
: **index.php**
: `.htaccess`

Correct:
: https://example.com/textpattern
: example.com
: The Sites directory.
: /Users/name/Sites
: ~/Sites
: index.php
: .htaccess

Always include the file extensions on file names and make sure it’s the correct extension for the file you mean (i.e. index.php, index.html, index.md…).

Always use a true root-relative path when referring to file tree locations. For example:

* Correct: /textpattern/setup
* Wrong: /setup.

#### URIs, paths, and file names in code

When, and only when, these elements are reflecting actual code, display them as block-level code examples in the actual code they come from and ignore any other formatting convention, for example:

```
. . .
Textpattern path: __TXP-ROOT/textpattern
Article URL pattern: title_only
. . .
Temporary directory path: __TXP-ROOT/textpattern/tmp
```

Again, never style URIs, directory paths, or file names inline as `code`.

## Linking strategy

Try to keep a big-picture perspective on documentation and add logical bridges between related, helpful topics. This can be done by cross-linking between documentation pages and anchor-linking within a given page.

There’s a side benefit from this too: as one becomes familiar with the big-picture, it gets easier to spot ROT (redundancy, outdated, trivial) material, and easier to see how to revise and refine documentation as a whole.

That said, there’s a point where too much linking can be distracting, so don’t fill a page up with a lot of links like a Wikipedia page. Likewise, refrain from adding bridge links too soon after creating new material. It never fails that several rounds of page editing are needed, and in-page anchor links, especially, are repeatedly broken before the content stabilizes.

### Cross-links

Cross-links between documentation pages should use Markdown link syntax and absolute URLs:

```
[link text](/directory/page-title)
```

### Anchor links

Anchor links are links within a given page, pointing from one section location to another, to bridge related information in context.

The links are relative links, and ideally applied at the ends of relevant paragraphs as a parenthetical with the following simple pattern:

```
. . . end of paragraph. (See [Target section](#target-section) section.)
```

The consistent placement and parenthetical pattern of anchor links makes them clear to readers that they are in-page links.

## Markup and styling

Due to certain platform constraints and necessities, documentation uses a mixture of Markdown, Kramdown, and regular HTML, depending on what you need.

### Inline-text formatting

Table 2 shows what Markdown syntax provides for inline formatting; either emphasis (`em`), strong (`strong`), or a combination of both. There is no syntax for italic (`i`) or bold (`b`), unfortunately, which must be added with regular HTML if needed.

<div class="tabular-data" tabindex="0" aria-labelledby="table2-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table2-caption" itemprop="about">Table 2. Markdown syntax for inline formatting.</caption>
        <thead>
            <tr>
                <th scope="col">Style</th>
                <th scope="col">Markdown</th>
                <th scope="col">HTML element</th>
                <th scope="col">Effect</th>
            </tr>
        </thead>
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
                <td>None<sup>&#x002a;</sup></td>
                <td><code>i</code></td>
                <td><i>Italic</i></td>
            </tr>
            <tr>
                <th scope="row">Bold</th>
                <td>None</td>
                <td><code>b</code></td>
                <td><b>Bold</b></td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="4">
                    <ol class="list--refmarks">
                        <li>This isn’t Textile, and never will be on GitHub.</li>
                    </ol>
                </td>
            </tr>
        </tfoot>
    </table>
</div>

But the lack of true (semantic) italic and bold formatting in Markdown is only unfortunate if we care about screen-readers and people who rely on them, because the inherent emphasis/strength of text marked up with `em` and `strong` is picked up by this technology.

Recall from the [paths, directories and file names](#paths-directories-and-file-names) guidelines that such text elements, whether representing back end strings or not, should be formatted as italic. But if we easily rely on Markdown, which only adds `em`, rather than take the extra two seconds to type `i` tags, then such strings appear italic but deliver the emphasized punch, too, to anyone *listening* via a screen-reader. That would be pretty annoying for a lot of paths and file names. That’s why the guideline there suggests adding the HTML instead of using Markdown, if one can be bothered.

Similarly, the [template names strings](#template-name-strings) section counsels using italic-strong or emphasis-bold, but not emphasis-strong, which otherwise gives screen-reading technology a needless double-hit. It’s definitely quicker to hit your italic and bold keys in succession, of course, which Markdown will add as `***emphasis-strong***` — but you should not, if you care.

The strong formatting for [multiple-word strings with no terminal punctuation](#multiple-words-no-terminal-punctuation), however, is appropriate for screen-readers, or listeners would not know where the multi-word string ends in regular text.

So this business with inline formatting is tricky, and why the golden rule of thumb is: don’t use inline formatting unless you are documenting [interface strings](#formatting-interface-strings), and the necessary like.

The sole exception is when emphasizing a word as a part of regular text (e.g. ‘You *really* don’t want to do that.’), But this should rarely be necessary.

### Inline-text styling

In contrast to simple [inline-text formatting](#inline-text-formatting), Kramdown enables specific styling using its ‘inline attributes list’ (IAL) notation.[^ial]

For example we can use the predefined selectors for alert colours (`.success`, `.information`, `.warning`, or `.error`) to style text as:

* **green**{: .success} = `**green**{: .success}`
* **blue**{: .information} = `**blue**{: .information}` (avoid using this)
* **yellow**{: .warning} = `**yellow**{: .warning}`
* **red**{: .error} = `**red**{: .error}`

The IAL notation only works if it has an element to apply to. In this case the `strong` element is used because it’s easily added with Markdown and makes the colours **stand out more**{: .warning}, *compared to emphasis*{: .warning}. Regardless of what format, though, avoid using blue (`.information`); it looks too much like a link and could be confusing.

[^ial]: https://kramdown.gettalong.org/syntax.html#inline-attribute-lists

### Block-level content and styling

A small variety of block-level elements and specialized content types are employed in documentation, and different syntaxes and/or class selectors are used:

* Markdown enables easy addition of paragraphs and (un)ordered lists. No demonstration is needed. You know them.
* Kramdown enables easy use of [definition lists](#definition-lists) and [notes](#notes) (i.e. endnotes).
* HTML must be used for [tables](#tables), due to a specialized wrapper requirement.
* Predefined class selectors, applied using Kramdown’s ‘inline attributes list’ notation, enable turning regular paragraphs and lists into [example blocks](#example-blocks), and [file tree components](#file-tree-components).

This small set of block elements and content types is enough for Textpattern user documentation.

One element you will rarely to *never* use is [displayed quotations](#displayed-quotations) (i.e. block quotes using `blockquote`).

### Definition lists

Definition lists are added using regular Kramdown; no custom selector is need:

```
Definition title
: Definition data
```

That will render a definition list as:

``` html
<dl>
    <dt>Definition title</dt>
    <dd>Definition data</dd>
</dl>
```

Add more data items as needed.

### Notes

Two kinds of notes are used in Textpattern documentation:

* Table notes, using a reference-mark system.
* Article notes, as part of a notes/bibliography system, producing an endnotes list.

#### Notes in tables

Table notes use a reference-mark system; a common annotation device in information design, and are specifically used in tables. The standard reference-mark system cycles through six marks — *, †, ‡, §, ¶, ‖ — in that order.

Add the entity values in ASCII notation as superscripts on the headers or data you want to notate, for example:

``` html
<th scope="col">Entity&#x002a;</th>
```

Then add your corresponding note as a list item in the footer of the tables (i.e. in the `tfoot`), for example:

```html
<li>Unicode entities may be used as ASCII characters by prefixing values with <code>&#x</code> and adding a <code>;</code> at the end.</li>
```

Table 3 presents the entities to use, and demonstrates the notes as well, from which the above examples are taken.

<div class="tabular-data" tabindex="0" aria-labelledby="table3-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table3-caption" itemprop="about">Table 3. Reference-mark entities as table notes.</caption>
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Mark</th>
                <th scope="col">Entity<sup>&#x002a;</sup></th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">Asterisk</th>
                <td>&#x002a;</td>
                <td><code>002a</code></td>
            </tr>
            <tr>
                <th scope="row">Dagger</th>
                <td>&#x2020;</td>
                <td><code>2020</code></td>
            </tr>
            <tr>
                <th scope="row">Double Dagger</th>
                <td>&#x2021;</td>
                <td><code>2021</code></td>
            </tr>
            <tr>
                <th scope="row">Section Sign</th>
                <td>&#x00a7;</td>
                <td><code>00a7</code></td>
            </tr>
            <tr>
                <th scope="row">Pilcrow<sup>&#x2020;</sup></th>
                <td>&#x00b6;</td>
                <td><code>00b6</code></td>
            </tr>
            <tr>
                <th scope="row">Double Vertical Line</th>
                <td>&#x2016;</td>
                <td><code>2016</code><sup>&#x2021;</sup></td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">
                    <ol class="list--refmarks">
                        <li>Unicode entities may be used as ASCII characters by prefixing values with <code>&#x</code> and adding a <code>;</code> at the end.</li>
                        <li>Known as the ‘paragraph sign’ in layman’s terms.</li>
                        <li>And so on.</li>
                    </ol>
                </td>
            </tr>
        </tfoot>
    </table>
</div>

The footer notes will appear with the appropriate reference marks automatically via CSS. Ensure the reference marks you add table headers or data match the correct order.

When more than six notes are needed, the pattern repeats in duplicate (**, ††, ‡‡, §§, ¶¶, ‖‖), then triplicate, and so on. However, only the first six single marks are provided for. Needing more would suggest your tables are too complex.

#### Notes in main text

Notes used in main text are, technically speaking, half of notes and bibliography referencing systems. The notes part enable citing sources in context of a topic or quotation, or enable authors to expand on ideas without bloating the article. Notes can also be used without bibliographies, as we employ them in user documentation. But use notes sparingly. More than five or six to a page might be over doing it. Fewer notes are less distractions.

Notes are employed using Kramdown.[^notes] First, a note marker is added to the end of a sentence (or clause), for example:

. . . end of a sentence.[^marker]
{: .example}

Then, at bottom of that section, just before the next document header, add the corresponding note, beginning with the same marker notation plus a colon `:`, for example:

```
[^marker]: Start of corresponding note . . .
```

If you have multiple notes in a given section, continue the same way, making sure notes are in the order as they are first marked in text. Not because they have to be that way (Kramdown will render the correct order automatically), but because it’s logical convention, and it makes it easier for collaborators to follow.

[^notes]: While many markup languages, like Markdown, Kramdown, Textile, and so on call their notes functionality ‘footnotes’, it’s a misnomer, because what they really create are *endnotes*. Every English style manual, like the one we use, will explain it. The *foot-* and *end-* prefixes merely indicate *where* the notes are placed in published material, regardless of medium. The style manuals also refer to both types more generally as ‘notes’. So if you can’t be specific, be general.

### Tables

Tables are very effective at presenting tabular data and other dense sets of information suited to grid display. And they make nice presentation breaks when a page is otherwise a lot of regular text. But tables can be problematic if designed poorly, such as being too wide for mobile screens.

Use the following guidelines to make tables well-structured and useful:

1. **HTML only**. Tables must be marked up with HTML in user docs. Ensure the markup is complete with `caption`, `thead`, `tbody`, `tfoot` (see #4), including the `div` container. Copy/paste the markup below to make it easier.
2. **Tabular data**. Use tables as much as appropriate for tabular data sets. Avoid tables if data is mostly long strings of text (sentences, paragraphs, lists), in which case one or more [definition lists](#definition-lists) will work better.
3. **Captions**. Unlike figure captions, which function more like descriptions, a table’s `caption` is really its title. Use it to number and title tables (e.g. ‘Table 1. Caption of table.’, ‘Table 2. Caption of table.’, and so on) even if only one table is used. This makes it easy to refer to tables in the main text.
4. **Notes**. Table notes are optional (see [Notes in tables](#notes-in-tables)), but can help convey meaning and understanding from table headers and data. If notes are not needed, or a table footer at all, remove the entire `tfoot` region and ensure the three example reference marks in the HTML below (added as `sup` elements) are removed from table cells.

``` html
<div class="tabular-data" tabindex="0" aria-labelledby="tablen-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="tablen-caption" itemprop="about">Table n. Title of table</caption>
        <thead>
            <tr>
                <th scope="col">Header</th>
                <th scope="col">Header<sup>&#x002a;</sup></th>
                <th scope="col">Header</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">data<sup>&#x2020;</sup></th>
                <td>data</td>
                <td>data</td>
            </tr>
            <tr>
                <th scope="row">data</th>
                <td>data</td>
                <td>data<sup>&#x2021;</sup></td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">
                    <ol class="list--refmarks">
                        <li>Example notes list</li>
                        <li>Remove the list if not needed</li>
                        <li>And remove the <code>sup</code> marks from table cells</li>
                    </ol>
                </td>
            </tr>
        </tfoot>
    </table>
</div>
```

### Example blocks

Example blocks are paragraphs and, more rarely, lists, of hypothetical text used for showing examples in documentation. They are especially useful for the kind of documentation you are reading now, where examples need made about writing examples.

The styling, added via Kramdown’s ‘inline attributes list’ notation, helps distinguish these blocks so there's no confusion to the reader about what is regular text and what is example material.

Use these when block code, [displayed quotations](#displayed-quotations), or [file tree components](#file-tree-components)) are not appropriate for distinguishing example text.

#### Example text

Examples of text (words, sentences, or paragraphs) are styled using the selector, `.example`, and are distinguished from regular text by the light-blue, left border and the lighter tone of font colour:

An example paragraph for demonstration purposes. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
{:.example}

Add the selector using Kramdown notation on a new line directly under the example paragraph.

```
The example paragraph text here.
{:.example}
```

#### Example list

Less frequently needed are example lists. Example list styling looks like example text styling plus unordered list style types are changed to circles:

* item one
* item two
  * nested item one
  * nested item two
* item three
* etc
{:.example}

As before, add the notation on a new line directly under the list block:

```
* item one
* item two
  * nested item one
  * nested item two
* item three
* etc
{:.example}
```

### File-tree components

There may be times you want to show the contents of a directory, or more of the package tree itself. Marking up content like this as `code` is inappropriate. And when marked up as regular lists, it’s hard to know for sure how to format the lists or their child items. And regular lists are a lost opportunity to add distinction.

You now can style such lists using specific selectors:

* `{:.directory--open}` on parent directories
* `{:.directory}` on child directories
* `{:.document}` on files
* `{:.image}` on images
* `{:.list--files}` for the list block

These selectors are demonstrated in the next two sections for the two kinds of file-tree examples you may want to show.

Remember: *always* add file extensions on file names, and *never* add inline formatting on list items when items are not a mix of text types.

#### Full tree scope

File tree scope implies showing one or more open directories and all or some of their child items, for example:

* {:.directory--open} parent_directory
  * {:.directory} child_directory1
  * . . .
  * {:.directory--open} child_directory4
    * {:.document} file1.ext
    * {:.document} file2.ext
    * {:.document} file3.ext
    * {:.image} image1.png
  * . . .
{:.list--files}

Using the selectors provided for this type of content, apply them using Kramdown’s inline attributes notation like this:

```
* {:.directory--open} parent_directory
  * {:.directory} child_directory1
  * . . .
  * {:.directory--open} child_directory4
    * {:.document} file1.ext
    * {:.document} file2.ext
    * {:.document} file3.ext
    * {:.image} image1.png
  * . . .
{:.list--files}
```

Again, make sure file names include their type extensions, and do not add formatting inline.

#### Single directory scope

Single directory scope implies all or some of the contents of one directory only. While you could include the parent directory at the top, as demonstrated in the previous example, it’s easier to exclude it in this case to avoid needing a nested list, thus the parent-child relationship lines are dropped as well:

* . . .
* {:.directory} subdirectory2
* {:.directory} subdirectory3
* . . .
* {:.directory} subdirectory5
* . . .
* {:.document} file1.ext
* {:.document} file2.ext
* {:.image} image1.png
* . . .
{:.list--files}

The code to copy and modify is:

```
* . . .
* {:.directory} subdirectory2
* {:.directory} subdirectory3
* . . .
* {:.directory} subdirectory5
* . . .
* {:.document} file1.ext
* {:.document} file2.ext
* {:.image} image1.png
* . . .
{: .list--files}
```
