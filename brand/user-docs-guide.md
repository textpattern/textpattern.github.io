---
layout: document
category: Brand
published: true
title: User documentation guidelines
description: Guidelines for author and editor changes to Textpattern’s user documentation.
---

# User documentation guidelines

These guidelines, an extension of Textpattern’s baseline [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide), are specifically for the upkeep of [user documentation](https://docs.textpattern.com/). Documentation authors, editors, and other interested contributors will want to read up here, as well review the [documentation collaboration procedures](https://docs.textpattern.com/brand/user-docs-procedures).

**On this page**:

* Table of contents
{:toc}

## Target audiences

User documentation is currently maintained with primary and secondary audiences in mind.

### Primary audience: New users of software

The primary target audience of user documentation is new users of Textpattern, and notably the administrator (or ‘Publisher’), since that role is assumed when installing Textpattern software. We also assume that administrators will write their own user instructions if setting up a Textpattern installation for third-party use, so no presumptions are made about what administrators need for their own communities.

### Secondary audiences: Experienced users of software

Secondary audiences are experienced users and active [community](https://forum.textpattern.com/) participants having various project interests, including plugins development and themes design.

## Scope of documentation

In relation to the primary and secondary audiences are specific breadths and depths of documentation. The majority of existing user documentation is for the primary audience.

### Breadth of primary documentation 

The breadth of primary-audience documentation is the core (out-of-the-box) functionality of Textpattern. This includes  [administration](https://docs.textpattern.com/administration) features and capabilities, and [Textpattern tags](https://docs.textpattern.com/tags) and [tag attributes](https://docs.textpattern.com/tags/tag-basics) information. To a lesser degree is information about initially [installing Textpattern](https://docs.textpattern.com/installation), including tips on web server and database configuration, and post-installation troubleshooting information in the form of [FAQs](https://docs.textpattern.com/faqs). Also new, in reflection of new core functionality, are a handful of [shortcode](https://docs.textpattern.com/tags/shortcodes/custom-short-tags-and-shortcodes) examples as tutorials. 

Excepting the following section, the remainder of these guidelines are written with the primary audience and documentation scope in mind.

### Breadth of secondary documentation 

The breadth of secondary-audience documentation includes [plugin development](https://docs.textpattern.com/development/) resources, a smattering of [back-end themes](https://docs.textpattern.com/themes) instructions (or not), and Textpattern [brand and collaboration](https://docs.textpattern.com/brand/)  information, including these guidelines.

This information is piecemeal and may not be ideally suited for this repository. Other network platforms like [Textpattern Tips](https://textpattern.tips/), and the forthcoming Plugins and Themes websites may help serve secondary documentation types better (see [A single documentation type](#a-single-documentation-type)). 

### Depth of documentation

Depth of documentation can be thought of in terms of a layering system to determine what documentation is really needed. There’s a maximum number of layers, but the fewer layers a user must descend, the better it is for everyone: Users are more independent and get tasks done quicker. Volunteer editors have less overhead to maintain.

#### Rely on software usability

Textpattern developers strive to make the software usable, intuitive, memorable, and enjoyable (a classic definition of software having good usability) by listening to [user feedback](https://forum.textpattern.com/viewforum.php?id=2), considering [issues for development](https://github.com/textpattern/textpattern/issues), and avoiding needless feature creep. So while some documentation is needed, the goal is to maintain only the minimum necessary suite of information, relying on the software’s usability to speak for itself.

A high usability of Textpattern — from finding and accessing the package, through installation and configuration, through architecture development, to publishing content — is the first and most important layer of documentation, because the more usable the software is, the less additional written documentation is needed.

Sparse documentation is the best kind when the reason is that more is unnecessary.

#### Rely on embedded help tips

Embedded help tips in the back-end interface panels are an important component between overall software usability and end-user documentation. They are meant to quickly and _sufficiently_ explain a feature when the organization, design, and/or labeling of the functionality is not otherwise clear. So not only are embedded help tips an interface usability concern for developers, but they are a documentation concern for editors. Embedded help must get the same attention and care the documentation website receives.

But the two information sources have vastly different contexts of use. Embedded tips are immediate to the user doing tasks in the software, while user documentation is external to software and represents methodic study. The two types of help must be written with those different contexts in mind. Embedded tips are not simply extracts of what is found on documentation pages. Nor should user documentation wax redundantly what embedded tips already explain.

#### A single documentation type

The more kinds of documentation in a single repository, the harder it is for primary audiences to navigate and find targeted information, and the harder it is for editors to optimally organize and maintain the repository over time. Ideally the end-user documentation repository has a [primary audience breadth of scope](#scope-of-primary-audience-documentation)), and nothing more.

Other types of documentation are better used and managed in context of the platforms they concern. When a third-party developer decides to develop a Textpattern plugin, the first place they will go to learn how to proceed is the bar with the neon marquee flashing [Plugins](https://github.com/textpattern/textpattern-plugins-website). Information at source of inspiration. No mucking about in core functionality documentation, which is outside and below developer interest. Likewise for designers wanting to try their hand at a new front- or back-end theme; they head to the [Themes](https://github.com/textpattern/textpattern-themes-website) bazaar, where a cornucopia of ‘skin’ inspiration and documentation is at their disposal in context.

This information does not need written in technical documentation style, but as regular web page content, with screenshots or videos or whatever other format is appropriate for a platform.

Brand and collaboration information like the document you are reading may logically stay where it is for common project reference.  

#### Necessary pages and nothing more

The user documentation is fairly well filled-out. Maybe too much in some places and not enough in others. Important exceptions exist, of course. Textpattern tags and tag attributes, for example, need a fair bit of explanation. And new and future features like themes, image handling, and unlimited custom fields will certainly require revisions and new material.

If you pour over [software usability](#rely-on-software-usability) and the [embedded help tips](#rely-on-embedded-help-tips), the two main layers in this conceptual layering system, you gain a sense of where some material is needed or needs revised. And review of pages against new software releases is important, as well regular refinement of material when opportunities arise. Else, an editor may propose removing a page if it becomes a pointless outlier. A little content recycling across high-traffic locations is enough to trim a needless page.

When [docs collaboration procedures](https://docs.textpattern.com/brand/#user-docs-procedures) are not throwing a 404, they will guide where to focus and on what. But for immediate purposes, it’s better to draft documentation when there’s an obvious need for a topic or type genre (specification, tutorial, FAQ, etc.), than to produce material without knowing it’s warranted. Let the writing be dictated by the community’s demand, or its struggle around a pernicious problem, one prioritized piece at a time. Monitor the forum for repeating gripes and you’ll identify the _what_ part. Collaboration between author, editors, and doc-tree architects will take care of the _how_.

#### Scope and depth of a page

The scope and depth of a page’s subject matter can be what is needed and not necessarily more, even if more could be said for the sake of thoroughness, or repetition in context.

Again, consider [software usability](#rely-on-software-usability) and [embedded help tips](#rely-on-embedded-help-tips) in relation to documenting back-end panel features. If the features of an otherwise intuitive panel, including what is revealed in panel help tips, are meticulously annotated in user documentation for the sake of doing it, then users wade through needless detail in search of what little may, in fact, need elaboration.

One way to start downsizing needless content in administration panel documentation is to maintain their structure, but replace  redundant or obvious descriptions with simple referral statements.

An example referral statement to see the software itself:

See intuitive feature in software.
{: .example-text}

It’s safe to assume that anyone reading that particular line will have installed the software, and thus can refer to it. And if not, the documentation wouldn’t matter to them anyway.

Here’s another useful referral statement. Use this one if a given feature is only clear from the additional information conveyed via a help tip:

See help tip for this feature.
{: .example-text}

Buy using statements like above in feature sections of page documentation, where the software or embedded help tips already make the feature’s purpose and function clear, we reduce needless information load on the page. This makes it easier for documentation users to scan pages for the instances when more elaboration is needed and provided.

And when such elaboration is needed, it should augment embedded help information, not repeat it redundantly.

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

A clear but minimum set of formatting rules are needed to distinguish the different types of strings from regular documentation text. A single format or style (e.g. bold, italic, quotation marks, or whatever) is little more effective than no formatting at all. Thus a balance needs struck between having: a minimum number of distinguishing features, and clear distinction between string types and across types and regular documentation text.

The conventions for formatting or marking interface strings, and other types, are detailed in the following sections. Some of these strings define using `em` (emphasis) or `strong` formatting, easily added via Markdown. Others define using `i` (italic) because the emphasis from using `em` is not appropriate for screen-readers in those cases. The latter situation requires  adding `i` as HTML, since Markdown does not provide syntax for true `i` (or `b`, bold) element formatting. See the [inline formatting](#inline-text-formatting) section for more on that issue specifically. Specific style and formatting issues are addressed individually per string type. 

### Header and label strings

The use of sentence-case for writing strings is one reason no single style or format, or reliance on capitalizations alone, will work to address the different interface headers and labels. And in any case, some strings are sentences with terminal punctuation. To address the various combinations of headers and labels, four style conventions are needed across them all: capitalization, strong formatting, italic formatting, and single quotation marks.   

#### Single-words, capitalized

Headers and labels that are single-word strings require no additional formatting. Their capitalization alone, recognized by screen-readers, is sufficient for distinguishing these strings, as long as the context is made clear, for example:

The Write panel.
{: .example-text}

In this common-use example, the string is a proper adjective (i.e., a name being used as a adjective), which is always capitalized. The word ‘panel’, a subject noun, is not part of the string; rather, it provides the general *what* and *where* context of ‘Write’.

Another example, albeit exaggerated, with all kinds of *what* and *where* context:

Under the Presentation section of the back-end’s main navigation are five presentation panel links: Themes, Sections, Pages, Forms, and Styles.
{: .example-text}

In this example we have six single-word strings being named, easily identified by their capitalization. ‘Presentation’ (a link label) is used as another proper adjective; in this case, modifying ’section’, a part of the main navigation. But the second instance of the word, ‘presentation’, is just a regular adjective modifying ‘panel links’. No capitalization is necessary there. And no specific presentation panel exists, anyway, so capitalizing it would be confusing. The remaining five strings are used as proper nouns of link labels.

Note that panel names and headers under the Presentation section of the back end are different from the names of templates created in those respective panels. The latter is dealt with in [Presentation template names](#presentation-template-names).

#### Multiple-words, no terminal punctuation

Headers and labels also exist as multiple-word strings lacking terminal punctuation. But because of the sentence-case capitalization on interface strings, we can’t rely on capitalization alone to distinguish the entire string from regular text. To account for this, `**strong**` formatting is used, for example:

The **Date format** setting.
{: .example-text}

Screen-readers will also pick up the strong format, which is appropriate here because the lack of title-case on such strings would otherwise make the extent of them undetectable to screen-readers without the added strength. 


#### Full sentences

These types of strings are uniquely preferences labels (a.k.a. settings) in the Site, Admin, Publish, and Feeds sections of the Preferences panel. Specifically, they are the settings with labels posed as questions. For these labels, `emphasis` is used to distinguish them easier from regular text, which screen-readers also pick up on, for example:

Widowed words happen when the last word of a title wraps to a new line by itself. You may not like it. Prevent widowed words from happening by selecting ‘Yes’ for the *Prevent widowed words in article titles?* preference in the Publish section of the Preferences panel.
{: .example-text}

As in earlier examples, additional strings are used (correctly) and lots of context is involved to make them clear. The string were concerned with here is the preference label posed as a question, distinguished by emphasized text. Without the emphasis, the string would be much harder to see and understand.

### Option strings

Options strings can be thought of as two types: select box options and radio button choices. The latter is not really an option, technically speaking, but a label. Regardless, we distinguish them the same way because it probably fits a users mental model better: that these are choices to make for a given setting. The treatment to use, picked up by screen-readers, is single quotation marks, for example: 

If you want URL titles to be hyphenated, select ‘Hyphenated (title-like-this)’ from the select-box options for the preference, **Permalink title URL pattern**, in the Publish section of the Preferences panel.
{: .example-text}

Again, this exaggerated example uses other string types and lots of context for demonstration. In actual documentation, much of the context will be clear, thus the exhausting specificity won’t be necessary. Ensure that it is clear, but only as much as needed.

### Template name strings

Template names are the names of Textpattern's default and custom presentation templates created and accessed via their respective panels under the Presentation section. The names, notably those provided in an out-of-box installation, are not capitalized, and compound names are separated by underscores. This makes it difficult to discern these strings, especially the single-word names, from regular text without additional formatting, described in the next two sections. But do not confuse these strings with other strings by using the wrong formatting.

#### General template name use

The formatting to use is, preferably, <i>**italic-strong**</i> (`<i>**italic-strong**</i>`) or *<b>emphasis-bold</b>* (`*<b>emphasis-bold</b>*`). The `i` or `b` must be added with HTML because Markdown does not provide italic or bold syntax (see [Formatting inline text](#formatting-inline-text)). This ensures screen-readers pick up on the name without getting the double emphasized hit that using `***emphasis-strong***` would otherwise give. Let your conscience be your guide.

An example:

The default page is aptly named <i>**default**</i>.
{: .example-text}

Note how the word 'default' is used twice, but only one instance is correctly formatted as a template name.

Another example:

The markup controlling how comments are displayed is found in the <i>**comments_display**</i> form in the Forms panel.
{: .example-text}

Note the underscore on core compound names. Also note that 'Forms' is a single-word header string denoting the name of the panel; used here as a proper adjective, and correctly distinguished from regular text by the capitalization. The word 'form', however, is just a common noun, thus not formatted.

One more example combining another string type, an [inline directory name](#paths-directories-and-files-inline):

A default stylesheet, named ***default***, must exist in the *styles* directory of a theme package. If it's missing, it will be created as an empty stylesheet upon importing the theme.
{: .example-text}

#### Template names in lists

In the rare case you need a list of specific template names (sometimes needed in plugin and theme development documentation), leave the formatting off and use normal text, for example:

* article_listing
* default
* search_results
{: .example-list}

The three things to note in this example are:

1. **No formatting**. Template names are not formatted. The formatting is unnecessary in this case because the list is purely template names.
2. **No code**. The list is not `code`, so should not be marked up as a code block. It's just a simple list.
3. **No special styling**. In this case, the list is not representing the contents of a directory, so it should not be styled with one of the custom selectors for file tree components (see [File tree examples](#file-tree-examples)).

If the list items were adulterated with normal text, the expected formatting would have to be used, for example:

* the <i>**article_listing**</i> form
* the <i>**default**</i> form
* the <i>**search_results**</i> form
{: .example-list}

But that would be sloppy list construction to avoid.

### Alert message strings

Alert messages appear to software users as feedback dialogue in the Diagnostics panel, or in other panels as a software user proceeds through certain tasks (e.g. when saving draft changes). Four kinds of alert messages exist (Table 1). The full set of alert messages in core are detailed in [Diagnostics](https://docs.textpattern.com/administration/diagnostics-panel).

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption>Table 1. Class selectors for alert messages.</caption>
        <thead>
            <tr>
                <th scope="col">Alert type</th>
                <th scope="col">Color</th>
                <th scope="col">Selectors&#x002a;</th>
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
                <td><code>.erroer</code></td>
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

#### Embedded use of free text

An embedded quotation of short strings might look like this (links are part of the actual interface text but not functional here):

At bottom of every back-end panel are two lines. One indicates the software version used, ‘[Textpattern CMS]() (v4.7.3)’, and the other provides a link back to top of the given panel, ‘[Back to top]()’.
{: .example-text}

#### Displayed use of free text

When a free-text string is long enough to warrant being a displayed quotation, mark it up as a `blockquote`. Only one instance of text in the back end is long enough to warrant this markup; in the Languages panel under the panel header, the following paragraph is found:
 
> **You can help us improve Textpattern!** We welcome additional translations (and corrections to current translations) by our user community. Please visit Textpattern language translations (opens an external link in a new window) for further details.

That example represents the *only* time, anywhere in user documentation, that a `blockquote` would be used (see explanation in [Block quotes](#block-quotes)).

### Paths, directories, and file names

This scope includes uniform resource identifiers (e.g. URLs), absolute or relative file paths, and individual directory or file names. The formatting conventions are the same whether you are describing them as strings in back-end panels or using them as regular paragraph text.

#### Paths, directories, and files inline

When embedded (inline) in regular documentation text, these elements are italicized (i.e. `i`, not `em`) using HTML, since Markdown does not provide for `i` formatting. Screen-readers do not need to pick up unnecessary emphasis on these elements.

A long hypothetical example for demonstration of various qualifying strings:

The log in location for the software’s back end is located at <i>domain.tld/textpattern</i>. The front end is dynamically generated via the <i>index.php</i> file, though you don’t see it in the URL of your website. An <i>.htaccess</i> file is installed with the core software package in the same directory, whether a root directory, often <i>public_html</i> when provided by web hosts, or a subdirectory of your choosing. Many Apple users who setup local development will install Textpattern in their <i>Sites</i> directory (i.e. <i>/Users/name/Sites</i>), in which case the path to use for the <i>tmp</i> directory will be at <i>/Users/name/Sites/sitename/textpattern/tmp</i>.
{: .example-text}

If you ever feel a particular path, directory, or file name needs to stand out more than others, don’t mark it up as `code`, which is inappropriate; instead, make it strong, too, for example:

It’s called the <i>**tmp**</i> directory, not the ‘temp’ directory, and you find it at <i>…/textpattern/tmp</i>.
{: .example-text}

But, obviously, don’t do this on every inline path, directory, or file name or it’s confused with the formatting of other string types.

Also mind these important conventions for distinguishing these elements:

* **File names**. Always include the file extension, whether used in a path or by itself (e.g. use <i>index.php</i>, never <i>index</i> only). This is what distinguishes file names from directory names, or anything else.  
* **Single directory names**. Do not prefix directory names with a fore-slash (e.g. <i>/textpattern</i>) when referring to the name by itself. Again, file name extensions will distinguish file names from directory names, and a directory name is sufficiently distinguished from regular text by italic formatting and proper description of context.  

#### Paths, directories, and files in code

When, and only when, these elements are reflecting actual code, display them as block-level code examples in the actual code they come from and ignore any other formatting convention, for example:

```
Textpattern version: 4.7.3 (7c46d1f4c8ac79e62a7d5e54a9ddac53)
. . .
Textpattern path: __TXP-ROOT/textpattern
Article URL pattern: title_only
. . .
Temporary directory path: __TXP-ROOT/textpattern/tmp
```

Never style paths, directories, or file names inline as `code`.

#### Paths, directories, and files in lists

In the rare case it’s necessary or convenient to use paths, directories, or file names in a list, unique to one of those types of elements (i.e. a list of paths only, or a list of file names only, etc.), do not use italic formatting since the list itself is distinguishing these items from regular text.

If such a list is reflecting a file tree or directory contents, ensure the list is styled correctly using an appropriate selector. See more on this in [File-tree components](#file-tree-components).

## Linking strategy

Try to keep a big-picture perspective on documentation and add logical bridges between related, helpful topics. This can be done by cross-linking between documentation pages and anchor-linking within a given page.

There’s a side benefit from this too: as one becomes familiar with the big-picture, it gets easier to spot ROT (redundancy, outdated, trivial) material, and easier to see how to revise and refine documentation as a whole.

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

### Inline-text formatting

Table 2 shows what Markdown syntax provides for inline formatting; either emphasis (`em`), strong (`strong`), or a combination of both. There is no syntax for italic (`i`) or bold (`b`), unfortunately, which must be added with regular HTML if needed.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption>Table 2. Markdown syntax for inline formatting.</caption>
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
                <td>None&#x002a;</td>
                <td><code>i</code></td>
                <td><i>Italic</i></td>
            </tr>
            <tr>
                <th scope="row">Bold</th>
                <td>None&#x002a;</td>
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

So this business with inline formatting is tricky, and why the golden rule of thumb is: don’t use inline formatting unless you  are documenting [interface strings](#formatting-interface-strings), and the necessary like.

The sole exception is when emphasizing a word as a part of regular text (e.g. ‘You *really* don’t want to do that.’), But this should rarely be necessary.

### Inline-text styling

In contrast to simple [inline-text formatting](#inline-text-formatting), Kramdown enables specific styling using its ‘[inline attributes list](https://kramdown.gettalong.org/syntax.html#inline-attribute-lists)’ (IAL) notation.

For example we can use the predefined selectors for alert colours (`.success`, `.information`, `.warning`, or `.error`) to style text as:

* **green**{: .success} = `**green**{: .success}`
* **blue**{: .information} = `**blue**{: .information}` (avoid using this)
* **yellow**{: .warning} = `**yellow**{: .warning}`
* **red**{: .error} = `**red**{: .error}`

The class selector notation only works if it has an element to apply to. The `strong` element is used in this case because it’s easily added via Markdown and, unlike `em`, which also works, `strong` makes the colours easier to see *in comparison*{: .warning}). Regardless of what element, though, avoid using blue (`.information`) as a font colour style; it looks too much like a link and could be confusing.

### Block-level content and styling

A small variety of block-level elements and specialized content types are employed in documentation, and different syntaxes and/or class selectors are used:

* Markdown enables easy addition of paragraphs and (un)ordered lists. No demonstration is needed. You know them.
* Kramdown enables easy use of [definition lists](#definition-lists) and [notes](#notes) (i.e. endnotes).
* HTML must be used for [tables](#tables), due to a specialized wrapper requirement. 
* Predefined class selectors, applied using Kramdown’s ‘inline attributes list’ notation,[^ial] enable turning regular paragraphs and lists into [example blocks](#example-blocks), and [file tree components](#file-tree-components).

This small set of block elements and content types is enough for Textpattern user documentation.

One element you will *never* use is block quotes, and that deserves and explanation.  

### Block quotes

Do not use block quotes (i.e. the `blockquote` element), despite how easy it is to hit the `>` key to add one. Other platforms like Forums, blogs, and magazines use them extensively, but there is no need for block quotes in user documentation. None. Especially if used incorrectly.

Block quotes are for ‘displayed quotations’ only (i.e. quotations that are not embedded inline).[^disquotes] The W3C specification says the same thing: <q cite="https://www.w3.org/TR/html52/grouping-content.html#the-blockquote-element">the `blockquote` element represents content that is quoted from another source</q>.[^blockquotes]

Displayed quotations are only appropriate when quoted matter is too lengthy for inline use. Lengthy matter, quoted or otherwise, works against the [scope and depth objective](#scope-and-depth-of-material) for documentation to be clear, concise, and actionable. Conversely, inline quotations, using `<q cite="">. . .</q>`, as demonstrated in the previous paragraph, are perfectly fine, as long as they’re relevant and not overused.

Block quotes are specifically not used as example boxes, or for any other miscellaneous need. Don’t be fooled by their neat orange presentation, though it grabs your attention.

Only one situation exists where using `blockquote` is appropriate, and it’s demonstrated in this page, in the [Displayed use of free text](#displayed-use-of-free-text) section. It’s used there as an opportunity to discuss it here. In no other situation in user documentation should text be marked up with `blockquote`. 

[^disquotes]: <i>New Oxford Style Manual</i>, ed. Anne Waddingham (3rd edn, Oxford, 2016), p 162.

[^blockquotes]: HTML 5.2: W3C Recommendation, World Wide Consortium, 14 December 2017, [w3.org/TR/html52/grouping-content.html#the-blockquote-element](https://www.w3.org/TR/html52/grouping-content.html#the-blockquote-element), accessed 14 November 2019.

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

Notes are used sparingly and in limited cases in Textpattern documentation; either as reference notes in tables, using a reference-mark system, or as general notes in main text, producing short _endnotes_ lists.

#### Notes in tables

Reference-mark notes are a common annotation device in information design, and are specifically used in tables. The standard reference-mark system cycles through six marks, in this order: *, †, ‡, §, ¶, ‖.

When more than six notes are needed, and we assume here they never will be, the pattern repeats in duplicate (**, ††, ‡‡, §§, ¶¶, ‖‖), then triplicate, and so on. Only the first six single marks are provided for in CSS. Since these notes are in [HTML tables](#tables), they must also be structured with HTML. 

Consider the following table, which is an example of the notes in effect.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption>Table 3. Reference-mark entities as table notes.</caption>
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
                <th scope="row">Pilcrow<sup>&#x2020;</sup></th>
                <td>¶</td>
                <td><code>00b6</code></td>
            </tr>
            <tr>
                <th scope="row">Double Vertical Line</th>
                <td>‖</td>
                <td><code>2016</code>&#x2021;</td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="3">
                    <ol class="list--refmarks">
                        <li>Unicode values for character glyphs. These can be used as ASCII characters by prefixing values with <code>&#x</code> and adding a <code>;</code> at the end.</li>
                        <li>Also known as the ‘paragraph sign’ in layman’s terms.</li>
                        <li>And so on.</li>
                    </ol>
                </td>
            </tr>
        </tfoot>
    </table>
</div>

You must add the entity values in the table where needed, in the correct order, for example:

``` html
<th scope="col">Entity&#x002a;</th>
```

Then write the corresponding note in the footer `li`, in the same order. The entities are added to list items automatically. Don’t add them manually in list items.

#### Notes in main text

Notes, technically speaking, are half of notes and bibliography referencing systems. The notes part enable citing sources in context of a topic or quotation, or enable authors to expand on ideas without over-bloating the article. Notes can also be used without bibliographies, like here.

But use notes sparingly. We’re not recording history, only providing how-to information. Fewer notes are less overhead for readers wanting to get something done.

Notes are employed using Kramdown.[^notes] A note marker is first added to the end of a sentence (or clause), in context of the applicable topic, for example:

. . . end of a sentence.[^marker]
{: .example-text}

Then, at the bottom of that section (i.e. just before the next document header), add the corresponding note, which begins with the same marker notation plus a colon `:`, for example:

```
[^marker]: Start of corresponding note . . .
```

If you have multiple notes in a given section, continue the same way, making sure notes are in the order as they are marked in main text. Not because they have to be that way (Kramdown will render the correct order automatically), but because it’s logical.

Having notes spread out through the document this way might seem strange at first, but it’s easier to find and edit them in context. By contrast, if notes are listed together at the end of a document (as needing done with Textile), you must jump up and down in the document (i.e. out of context) whenever revising them. Either way the resulting endnotes list is rendered at the end of the page (inside a pre-formatted `div`), but use the process described above, which is a collaboration standard for Textpattern documentation.

Custom styles are used to provide a faux header in the endnotes `div` container. This provides proper visual heading of the back matter section, while keeping it out of the contents list (a.k.a. table of contents) that automatically targets `h2` through `h4` headers.

[^notes]: Many markup languages, like Markdown, Kramdown, Textile, and so on, call their notes functionality ‘footnotes’. But that’s incorrect, a misnomer, because footnotes are not what these extensions actually create. ‘Footnotes’ are a specific type of notes positioned in immediate visual context of their inline reference markers on printed pages having set dimensions (or digital formats that mimic the set page dimensions of print media). A reader should not have to flip pages by finger or thumb-swipe, or jump long distances by link or scrollbar, to read footnotes; otherwise, they are not really footnotes. When notes all come at the end of a publication in a single list, whether print or web publication, they are called ‘endnotes’, and every English style manual that matters, including *Oxford* and *Chicago*, will say so. The *foot-* and *end-* prefixes merely indicate _where_ the notes are placed in published material, regardless of medium. The same style manuals refer to both types more generally as just ‘notes’. If you can’t be specific about it, be general.

### Tables

Tables are very effective at presenting tabular data and other dense sets of information suited to grid display. And they make nice presentation breaks when a page is otherwise a lot of regular text. But tables can be problematic if designed poorly, such as being too wide for mobile screens.

Use the following guidelines to make tables well-structured and useful:

1. **HTML only**. Tables must be marked up with HTML in user docs. Ensure the markup is complete with `caption`, `thead`, `tbody`, `tfoot` (see #4), including the `div` container. Copy/paste the markup below to make it easier.
2. **Tabular data**. Use tables as much as appropriate for tabular data sets. Avoid tables if data is mostly long strings of text (sentences, paragraphs, lists), in which case one or more [definition lists](#definition-lists) will work better.
3. **Captions**. Unlike figure captions, which function more like descriptions, a table’s `caption` is really its title. Use it to number and title tables (e.g. ‘Table 1. Caption of table.’, ‘Table 2. Caption of table.’, and so on) even if only one table is used. This makes it easy to refer to tables in the main text.
4. **Notes**. Table notes are optional (see [Notes in tables](#notes-in-tables)), but can help convey meaning and understanding from table headers and data. If notes are not needed, or a table footer at all, remove the `tfoot` region.

``` html
<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption>Table n. Title of table</caption>
        <thead>
            <tr>
                <th scope="col">Header</th>
                <th scope="col">Header</th>
                <th scope="col">Header</th>
            </tr>
        </thead>
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
        <tfoot>
            <tr>
                <td colspan="3">
                    <ol class="list--refmarks">
                        <li>note item</li>
                        <li>note item</li>
                        <li>note item</li>
                    </ol>
                </td>
            </tr>
        </tfoot>
    </table>
</div>
```

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

Though rarely needed, if ever, a general list can be employed for example reasons, use this IAL instead:

```
* item one
* item two
* etc
{: .example-list}
```

The example list styling looks like the example text styling except the bullets are changed to hyphens and positioned inside the list container, thus the need for it’s own selector. 

### File-tree components

Sometimes you may need to show the contents of a folder, or just a sample set of a directory's child materials. Marking it up as a regular list misses an opportunity to visually communicate what type of list it is. Nor is marking it up as a `code` block appropriate. Instead, use one of the two available class selectors described in the next sections, depending on scope of list. 

And remember, *always* add file extensions on file names, and *never* add inline formatting on list items. When the tree stylings are used, the inline formatting (e.g. making paths and files italic in regular text) is unnecessary. 

#### Full tree scope

If you need to show an entire tree, or a directory with its subdirectories expanded as well, for example:

* {: .directory--open} parent_directory
  * {: .directory} child_directory1
  * . . .
  * {: .directory--open} child_directory4
    * {: .document} file1.ext
    * {: .document} file2.ext
    * {: .document} file3.ext
  * . . .
{: .list--tree}

Use this Kramdown IAL:

```
* {: .directory--open} parent_directory
  * {: .directory} child_directory1
  * . . .
  * {: .directory--open} child_directory4
    * {: .document} file1.ext
    * {: .document} file2.ext
    * {: .document} file3.ext
  * . . .
{: .list--tree}
```

This will present the nested lists as a file tree structure. The top-post parent will be indicated by a right-facing arrow, and folder association lines will replace bullets on all child items. The font size will be slightly smaller than regular text. 

#### Single directory scope

If you want to just show the contents of a single directory, without including the parent directory or showing expanded subdirectories (i.e. a non-nested list), for example:

* . . .
* {: .directory} subdirectory2
* {: .directory} subdirectory3
* . . .
* {: .directory} subdirectory5
* . . .
* {: .document} file1.ext 
* {: .document} file2.ext
* . . .
{: .list--tree}

Use this Kramdown IAL:

```
* . . .
* {: .directory} subdirectory2
* {: .directory} subdirectory3
* . . .
* {: .directory} directory5
* . . .
* {: .document} file1.ext 
* {: .document} file2.ext
* . . .
{: .list--tree}
```

This has the same font styling as a full tree display, but there are no association lines or bullets otherwise on items.