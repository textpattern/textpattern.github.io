---
layout: document
category: Brand
published: true
title: Textpattern documentation guidelines
description: Guidelines for contributions to Textpattern CMS user documentation.
---

# Textpattern documentation guidelines

These guidelines concern the editorial upkeep of the [Textpattern CMS user documentation](https://docs.textpattern.com/). Therefore, they specifically concern documentation editors, authors, and all interested contributors. These guidelines are an extension of Textpattern’s baseline [editorial style guide](https://docs.textpattern.com/brand/textpattern-editorial-style-guide). Be sure to read and use that one too if you write or edit Textpattern documentation.

**On this page:**

* [Audience and scope of documentation](#audience-and-scope-of-documentation)
* [Collaborative editing process](#collaborative-editing-process)
  * [Scope and depth of material](#scope-and-depth-of-material)
  * [New documentation pages](#new-documentation-pages)
     * [Using repository Issues](#using-repository-issues)
     * [Determining new topics](#determining-new-topics)
  * [Revising existing pages](#revising-existing-pages)
  * [Cross-linking](#cross-linking)
* [Writing and editing](#writing-and-editing)
  * [Author perspective](#author-perspective)
  * [Concise writing tips](#concise-writing-tips)
  * [Typos and grammar gotchas](#typos-and-grammar-gotchas)
  * [Brand usage](#brand-usage)
     * [Administration panels context](#administration-panels-context)
         * [Admin vs. administration vs. administrator](#admin-vs-administration-vs-administrator) 
         * [Administration side vs. Administration-side](#administration-side-vs-administration-side)
         * [Formatting interface strings](#formatting-interface-strings)
* [Markup](#markup)
  * [Tables (HTML only](#tables-html-only)
  * [Using notes](#using-notes)
     * [Notes in tables](#notes-in-tables)
     * [Notes in main text](#notes-in-main-text)

## Audience and scope of documentation

The target audience of user documentation is primarily new users of [Textpattern CMS](https:/textpattern.com), and notably _administrators_, since installing Textpattern requires having that role automatically.

The scope of the documentation is primarily on the software’s core functionality (i.e. the out-of-the-box features and capabilities).

That is _primarily_, not entirely, because the documentation site also harbours [development documentation](https://docs.textpattern.com/development/) for plugin authors, [theme development](https://docs.textpattern.com/themes) documentation, and Textpattern [brand identity information](https://docs.textpattern.com/brand/), in which these guidelines and other materials fall for community collaboration.

## Collaborative editing process

Anyone can help with Textpattern documentation. But it’s not a free-for-all wiki. We maintain a tight set of documentation pages by topic need and editorial consideration. This needs-based approach is not meant to be selective or to controll what gets produced; rather, it makes the best documentation when quality is valued but time and help resources are limited.

History has shown there’s little need for a lot of user documentation, though it’s still a matter of pinpointing what hits the mark. History has also shown that few people want to write documentation anyway. Since demand for documentation is low, the dirth of fly-by-night authors is balanced by a committed few editors, including core developers as technical reviewers. This fellowship of expositionists is sufficient for upkeeping the resource, if not always timely.

The good editors are volunteers like anyone else; busy with thier own lives labours. They’re not making ends meet by proofing the documentation suite on an endless cycle. They are, rather, more like volunteer firefighters who dutifully arrive with pale and water when a flame is spied. Happy to set things safe and right when the community sounds the alarm. 

And there it is, editors rely on the community to help bring documentation inaccuracies and deficiencies to attention as they are found. The more often this happens, the better the state of the documentation at any given time. The process for addressing issues is revealed through the following sections.

### Scope and depth of material

The scope and depth of user documentation should be what is needed and not more.

#### Scope

Once upon a time, the Textpattern website had over a hundred FAQs. Ludicrous. At that point, _frequently asked questions_ had long become a misnomer. The material was as much ROT (redundant, outdated, trivial) as good, and the good was buried. Hidden and non-discoverable. The story ended on a positive note, however. Core developers worked with community editors to audit the sea of FAQs along with community documentation. Now there are only four [FAQs](https://docs.textpattern.com/faqs/) (with room for adjustment), and a well-groomed documentation suite. Just as it should be.

That experience left collaborators with some takeaways.

First, it’s better to add new pages when needed than to cover every possible topic in advance without knowing it’s warranted. That’s an important point to keep in mind through editorial upkeep.

Also, if a page already exists, it should be kept current with the latest software release, as well reduced and simplified anywhere it can be.

Else, a page can be removed, upon editor review, if the effort to revise it is not worth the return it provides by doing so. More likely, any material of value on such a page can be extracted and edited into another relevant location.

#### Depth

A given page should only be as explanatory as necessary. Thorough, but not belabouring every possible granule of consideration. (See [**Revising existing pages**](#revising-existing-pages).)

Rely on the usability of Textpattern’s interface, and leave some benefit of doubt to the user. Only fill out topic minutiae when it may help clear up questions repeatedly raised about it in the [community forum](https://forum.textpattern.com/). (See [**Determining new topics**](#determining-new-topics).)

For example, administration-side panels strive to be as intuitive as possible by design. Perhaps not perfect but always improving. Therefore, it’s probably not necessary to meticulously document panel functionality in minute detail, especially as the panels provide help tips in context of a given function or widget.

Before writing or revising documentation on the administration-side functionality, see that interface panels themselves are written and designed better, including the associated help tips; ensure they are as meaningful and clear as possible. If a UI tip doesn’t make sense to you, [start an Issue](https://github.com/textpattern/textpattern.github.io/issues) to bring it to attention and suggest how it can be improved.

When fine-grain descriptions are warranted on a page, but the page starts feeling overly dense, or you are inclined to use a lot of parenthetical notes in sentences, consider [using notes](#using-notes) instead.

No matter what, main text or notes, ensure you’re not using more words than necessary to convey a useful fact. (See [**Concise writing tips**](#concise-writing-tips). 

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

### Cross-linking

(To be added.)

All links within the documentation should be full URLs, for example http://docs.textpattern.com/tags/article-custom. This will allow for easier reuse of documentation text within other projects (such as an e-book or pophelp files).## Contributing

## Writing and editing

In addition to the helpful guidelines below for writing and editing documentation, see the baseline [editorial style guide](https://docs.textpattern.com/brand/textpattern-editorial-style-guide) for style conventions in general. 

### Author perspective

The documentation is written from the perspective of an _anonymous_ expert to the first-time administrator. Therefore, documentation authors and editors must write in the _second-person_ point of view. Pronouns are ‘you’, ‘your’, and ‘yours’ when referring to the reader, the assumed administrator of a new Textpattern installation.

For example:

> Click your name in the Users panel to change your email.

Never use the first-person singular or plural in regular user documentation. It's easy to slip into first-person plural mode with an official Textpattern voice (i.e. ‘we’ and ‘us’), but it’s unnecesary, and inappropriate for the targeted user documentation.

Likewise, _never_ make it personal with pronouns like ‘I’, ‘me’, and ‘my’ no matter what type of documentation it is. Collaborative documentation is never about you, and the reader doesn’t care about you either. Take the second person stance and empower the reader. Make them feel like they're doing it alone, because they are. You're just an impartial voice over their shoulder guiding them along.

**Exceptions to the rule**

The key is paying attention to the type of documentation you’re writing, or special contexts within the user documentation.

For example, the above rules apply to _user_ documentation as described, so first-person should never be used, but it’s possible third-person could be in specific contexts, like when needing to guide the administrator with respect to other user accounts. For example:

> To change a user’s role, find and click their name in the Users panel . . .

The word to note there being ‘their’, a third-person plural pronoun. It could just as well be ‘his’ or ‘her’, too, third-person singular. But for the vast majority of documentation, you will never need these.

The other exception is with the type of documentation it is. Again, _user_ documentation abides by the above rules, but in materials like your reading now, written by editors for community collaboration. _We_ are speaking to eachother so use of ‘we’, a first-person plural pronoun, can be appropriate.

### Concise writing tips

To improve the readability of documentation, write as concisely as you can. There are several effective ways to achieve this.

**Use the appropriate [author perspective](#author-perspective)**. When you don't centre the writing around your own experience, point of view, and wit, you say a lot less. It's magic.

**Avoid passive verb structures**. Verb structures like _to be/have_, _could be/have_, _should be/have_, _might be/have_, and so forth are not only miserable to read, but they bloat copy with unnecessary words. You are the expert giving the sound advice, so assume the role. Find a more direct and active way of word phrases. Using a generic structure as example: ‘put this thing there’ is far cleaner and direct than either ‘you should put this thing there’ or ‘that thing should be put there’. Both are lousy. If a reader doesn’t want to put something somewhere, they won’t, but they’ll appreciate you weren’t wishy-washy about the instruction. Kill the passive verb structures.

**Avoid useless adverbs**. Adverbs like _very_, _really_, _only_, and others are commonly used in speech when we talk to each other, and in that context are easily overlooked, but they look and read terrible in writing, and add considerable bloat to documents when all tallied up.

For example, ‘the really large code block’ or ‘only copy the lines between x and y’ are bloated ways of writing ‘the large code block’ and ‘copy the lines between x and y’. There’s no loss of meaning or  instruction by dropping the needless adverbs, and it reads a lot better too.

**Question every use of "that" and "just”**. It's easy to abuse both words. Every time you use ‘that’ or ‘just’ in a sentence, read the sentence without using the words and see if it still makes sense. Most of the time it will. If it does, leave the words out. (A lot of teachers of English as a second language have lead too many minds astray here, unfortunately. It’s time to reabilitate.)

**Avoid over use of adverbs, idioms, and other partial clauses at the beginnings or endings of sentences**. The excessive use of things like ’meanwhile’, ’on the other hand’, ‘however’, ’in other words’, ‘nevertheless’, and so forth can get bore a reader quickly. This doesn't mean never use them, but if you're using them regularly in every paragraph, then it's too much. Rewrite the sentences more concisely without need for the clause breaks.

**Cut any words until you can’t**. This is not always the best advice for descriptive, persuasive, and narrative writing, but it’s absolutely solid advice for expository writing, and that’s what typ of writing documentation is. Every word provides value and clarity, or delete it out.

**Break long, multi-clause sentences into multiple shorter sentences**. Again, not always good advice for other types of writing, but for expository like documentation, it’s generally a good idea. Careful, though, sometimes a single longer sentence can read more smoothly if it's free of needless word bloat. Multiple shorter sentences doesn't mean result in choppy stilted reading. Use your best judgement.

### Typos and grammar gotchas

As per the [Textpattern editorial style guide](https://docs.textpattern.com/brand/textpattern-editorial-style-guide) user documentation is written using British-English spelling and punctuation conventions, notably those adopted by the *Oxford English Dictionary* and the *Oxford Style Manual*.

A few examples, as it may help with documentation are mentioned here:

**Login vs. log in**. Use 'login' when it's a noun (e.g. ‘the login location’), but use 'log in' when it's a verb (e.g. ‘after you log in’ or ‘after logging in’). Likewise handling of ‘logout’ (noun) and ‘log out’ (verb).

**Panel vs. tab**. Do not use 'tab' (a depracated term) to refer to an administration-side panel, use 'panel’.[^’Tabs’ was the common reference used years ago when the administration side’s visual design looked like manilla file folders with tabs. The refence was obsolete and confusing when the new Hive design was adopted.]

The sole exception, of course, is in the case of [developer documentation](https://docs.textpattern.com/development/), where one might need to document, for plugin development reasons, the underlying code of the administration-pages. For example, this snippet from the Preferences panel involves a lot of use of `tab`, `tabs`, `tablist`, and `tabindex`:

```
<div role="group">
<ul class="switcher-list ui-tabs-nav" role="tablist">
<li role="tab" tabindex="0" class="ui-tabs-tab ui-tab ui-tabs-active ui-state-active" aria-controls="prefs_group_site" aria-labelledby="ui-id-1" aria-selected="true" aria-expanded="true"><a data-txp-pane="site" data-txp-token="a95e6b7ac5f4e49261bbca40e4c20e52" href="#prefs_group_site" role="presentation" tabindex="-1" class="ui-tabs-anchor" id="ui-id-1">Site</a></li>
<li role="tab" tabindex="-1" class="ui-tabs-tab ui-tab" aria-controls="prefs_group_admin" aria-labelledby="ui-id-2" aria-selected="false" aria-expanded="false"><a data-txp-pane="admin" data-txp-token="b779d31464114db7dcd3aeb3cac06643" href="#prefs_group_admin" role="presentation" tabindex="-1" class="ui-tabs-anchor" id="ui-id-2">Admin</a></li>
. . .
</ul>
</div>
```

### Brand usage

Do not use Textpattern brand acronyms like ‘Txp’ and ‘TXP’ in documentation. Always spell ‘Textpattern’ out fully.

These pet abbreviations of the brand name are convenient for use in the support forum, but they are inconsistent and non-intuitive to the outside world. Needless brand abbreviations like these muddy documentation when so many abbreviations are already used in code examples, for instance.

History has shown that the world still can’t spell ‘Textpattern’ correctly on a reliable basis, so don’t make it worse by using abbreviations.

At the same time, do not overuse the brand name in documentation, even if it’s part of a title. Too much repetition of ‘Textpattern’ becomes monotonous and distracting. It’s a context that is already clear to readers by fact the are using the software.

### Administration panels context

These guidelines are important for writing about the adminstration side in a clear and consistent manner throughout documentation. They also have important implications for plugin authors, who should follow the same editorial guidelines in their [plugin help files](https://docs.textpattern.com/development/plugin-template-help).

#### Admin vs. administration vs. administrator

Using ‘admin’ as an abbreviation can lead to confusion about what is meant.

**Admin** is a top-level panel in the administration side, and it’s the _only_ time when the abbreviation should be used in user documentation.

Do not use ‘admin’ to mean an administrator, and do not use ‘admin side’ (or ‘admin-side’) to mean the administration side of the software. In both cases it’s lazy writing. Always write ‘adminstration’ when meaning the administration side, and always write ‘administrator’ when meaning the Textpattern site administrator.

This also helps avoid mistakes between noun and adjective usage, as explained next.

#### Administration side vs. Administration-side

When referring to the administration side, make sure you are doing so correctly between noun (no hyphen) and adjective (hyphenated) forms.

A noun form example:

> The login to the administration side is located at . . .

An adjective form example:

> The default top-level administration-side panels are Content, Presentation, and Admin. 

#### Formatting interface strings

Interface strings are the text elements a user reads in the administration interface. Their consideration is critical to good software usability. Likewise, referring to them consistently yet unobtrusively in documentation is also critical. The balance between consistency and unobtrusiveness, however, can be challenging when many types of strings exist.

Textpattern documentation tries to find a clear balance with seven formatting rules, summarized in the following table. Seven sounds like a lot, but they will make sense when you review them. An explanation of how and why the rules were derived follows the table.

**Formatting rules:** 

<div class="tabular-data" itemscope itemtype="https://schema.org/Table"><table>
<thead><tr>
<th scope="col">String type</th>
<th scope="col">Formatting</th>
</tr></thead>
<tbody>
<tr>
<th scope="row">Capitalized single words</th>
<td>Normal (e.g. ‘the Write panel’)</td>
</tr>
<tr>
<th scope="row">Multiple-words, no terminal punctuation</th>
<td>Bold (e.g. ‘the <b>Date format</b> setting’)</td>
</tr>
<tr>
<th scope="row">Full-sentence strings with terminal punctuation</th>
<td>Italic (e.g. ‘the <i>Prevent widowed words in article titles?</i> setting’)</td>
</tr>
<tr>
<th scope="row">Form control options</th>
<td>Single quote marks (e.g. ‘select ‘Yes’ from the drop-down options’).</td>
</tr>
<tr>
<th scope="row">Textpattern Form names</th>
<td>Bold-italic (e.g. <b><i>default</i></b>, <b><i>files</i></b>, <b><i>comments_display</i></b>).</td>
</tr>
</tbody>
</table></div>

Two other possible interface strings include system messages and file paths/names.

System messages will appear to users as feedback dialogue in the Diagnostics panel, or in other panels as success/failure messages (e.g. when saving changings). A system message can be one of four different colours: green, blue, yellow, or red. When documenting system messages, format them as they appear in the interface using the following codes.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table"><table>
<thead><tr>
<th scope="col">Message type</th>
<th scope="col">Colour</th>
<th scope="col">Markup</th>
</tr></thead>
<tbody>
<tr>
<th scope="row">Success</th>
<td>green</td>
<td><code>Message string. {: .alert-block .success}</code></td>
</tr>
<tr>
<th scope="row">Warning</th>
<td>yellow</td>
<td><code>Message string. {: .alert-block .warning}</code></td>
</tr>
<tr>
<th scope="row">Error</th>
<td>red</td>
<td><code>Message string. {: .alert-block .error}</code></td>
</tr>
<tr>
<th scope="row">Information</th>
<td>blue</td>
<td><code>Message string. {: .alert-block .information}</code></td>
</tr>
</tbody>
</table></div>

Finally, you may sometimes need to document URLs, file paths, and file names. In these cases, use italic text, and make sure file extensions are included on any file names (e.g. *domain.tld/textpattern*, *.htaccess*, *index.php*, etc.)

Do not format URLs and file paths as code unless they are part of an actual code snippet.

**Explanation of rules:**

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

## Markup

### Tables (HTML only)

Use tables sparingly (they can be problematic to read on small screen devices), and only when the content is definitely tabular data. If the content can semantically be called a definition list, then structure the material as a definition list instead.

When using tables, don’t use Markdown. Copy/paste the following markup, and ensure the surrounding `div` tags are included:

``` html
<div class="tabular-data" itemscope itemtype="https://schema.org/Table"><table>
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
<tfoot><tr><td colspan="2">
<ol>
<li>note item</li>
<li>note item</li>
</ol>
</td></tr></tfoot>
</table></div>
```

If you don’t use any [notes in your tables](#notes-in-tables), remove the entire `<tfoot>…</tfoot>` region of the table.

### Using notes

Notes are used sparingly and in limited cases in Textpattern documentation; either as reference notes in tables, using a reference-mark system, or as general notes in main text, producing short _endnotes_ lists.

#### Notes in tables

Reference-mark notes are a common annotation device in information design, and are specifically used in tables. The standard reference-mark system cycles through six marks, in this order: *, †, ‡, §, ¶, ‖.

If a table ever needs more than six notes, which should be rare to never, the pattern repeats in duplicate (**, ††, ‡‡, §§, ¶¶, ‖‖), then triplicate, and so on. Try not to go that far.

Textpattern documentation provides CSS styles to make reference mark lists in a table’s `tfoot` element. Consider the following table, which is an example of the notes in effect.

<div class="tabular-data" itemscope itemtype="https://schema.org/Table">
<table>
<thead>
<tr>
<th scope="col">Name</th>
<th scope="col">Mark&#x002a;</th>
<th scope="col">Entity</th>
</tr>
</thead>
<tbody>
<tr>
<th scope="row">Asterisk</th>
<td>*</td>
<td><code>&#x002a;</code></td>
</tr>
<tr>
<th scope="row">Dagger</th>
<td>†</td>
<td><code>&#x2020;</code></td>
</tr>
<tr>
<th scope="row">Double Dagger</th>
<td>‡</td>
<td><code>&#x2021;</code></td>
</tr>
<tr>
<th scope="row">Section Sign</th>
<td>§</td>
<td><code>&#x00a7;</code></td>
</tr>
<tr>
<th scope="row">Pilcrow&#x2020;</th>
<td>¶</td>
<td><code>&#x00b6;</code></td>
</tr>
<tr>
<th scope="row">Double Vertical Line</th>
<td>‖</td>
<td><code>&#x2016;</code>&#x2021;</td>
</tr>
</tbody>
<tfoot><tr><td colspan="3">
<ol>
<li>Notes can be used to clarify headers, or indicate units.</li>
<li>Can elaborate data items (e.g. also known as the ‘paragraph sign’).</li>
<li>And so on.</li>
</ol>
</td></tr></tfoot>
</table>
</div>

The author must add the correct entity values on the table headers or data items they want to annotate, for example:

```
<th scope="col">Mark&#x002a;</th>
```

Then simply add the corresponding notes in the appropriate `li` in the tables footer, for example:

```
<ol>
	<li>Notes can be used to clarify headers, or indicate units.</li>
	. . .
</ol>
```

Documentation CSS will provide the appropriate reference mark as the list item’s style up to the first six marks.

If you ever need more than six notes, then use `<ol class="nolistitem">`, for a list without any list style at all, then add the reference marks manually:

```
<ol class="nolistitem">
	<li>. . .</li>
	<li>&#x2016; . . .</li>
	<li>&#x002a;&#x002a; . . .</li>
	<li>. . .</li>
</ol>
``` 

#### Notes in main text

(To revise.)

Use [kramdown notes](https://kramdown.gettalong.org/syntax.html#footnotes) for any side details not immediately needed in the main text.[^1] Use a subsequent number for each new note on the page, even if they're not in the same section. ([Footnote examples](https://docs.textpattern.com/administration/security))

Although markup languages like Markdown, Textile, and so forth use ‘footnotes’ as the semantic name of their notes feature, we just call them notes,  like most editorial style guides do when describing footnotes and endnotes in general terms. In this case, ‘endnotes’ also works. Footnotes are a specific type of notes usage in print publishing only, where pages have a physical set dimension and word limit. In web publishing, documents have no such contraint and notes always appear at the very end of the document (excepting PDFs and ebooks that mimic print layouts). It is therefore more logical to call such markup features ‘endnotes’, because that’s what they really are when appearing at the end of the document. The _foot_ and _end_ prefixes simply indicate the placement of notes in published material.

[^1]: Tangential elaboration or parenthetical notation makes documentation harder to wade through.

## Notes

