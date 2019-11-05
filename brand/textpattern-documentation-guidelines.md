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
  * [Cross-linking](#cross-linking)
* [Writing and editing](#writing-and-editing)
  * [Author perspective](#author-perspective)
  * [Concise writing tips](#concise-writing-tips)
  * [Typos and grammar gotchas](#typos-and-grammar-gotchas)
  * [Brand name usage](#brand-name-usage)
  * [Administration panels context](#administration-panels-context)
    * [Admin vs. administration vs. administrator](#admin-vs-administration-vs-administrator) 
    * [Administration side vs. Administration-side](#administration-side-vs-administration-side)
    * [Formatting interface strings](#formatting-interface-strings)
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

### Cross-linking

Cross-linking between documentation pages and within a given page (i.e. anchor links) is important to link related topics in context. Try to find logical opportunities for cross-linking topics across pages.

However, don’t get overzealous about it. Documentation that is too full of links is distracting.

Also, it’s best to refrain from cross-linking until it’s certain the concerned pages are pretty well past the _frequent revisions_ stage of editing, otherwise you likely have to correct a lot of broken cross links.  

Finally, cross-links between documentation pages should also use absolute URLs, for example:

> . . . the `[article_custom](https://docs.textpattern.com/tags/article_custom)` tag.

But anchor links within a given page can be relative URLs, for example:

> (See `[**Writing and editing**](#writing-and-editing)` section.)

Note it’s okay to make in-page anchor links bold, which helps distinguish them from external links.

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

As per the [editorial style guide](https://docs.textpattern.com/brand/textpattern-editorial-style-guide) user documentation is written using British-English spelling and punctuation conventions, notably those adopted by the *Oxford English Dictionary* and the *Oxford Style Manual*.

A few examples, as it may help with documentation are mentioned here:

#### Login vs. log in

Use 'login' when it's a noun (e.g. ‘the login location’), but use 'log in' when it's a verb (e.g. ‘after you log in’ or ‘after logging in’). Likewise handling of ‘logout’ (noun) and ‘log out’ (verb).

#### Panel vs. tab

Do not use 'tab' (a depracated term) to refer to an administration-side panel, use 'panel’.[^tabs]

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

[^tabs]: ’Tabs’ was the common reference used years ago when the administration side’s visual design looked like manilla file folders with tabs. The refence was obsolete and confusing when the new Hive design was adopted.

### Brand name usage

Do not use Textpattern brand acronyms like ‘Txp’ and ‘TXP’ in documentation. Always spell ‘Textpattern’ out fully, when it’s even needed at all. You might be surprised how much you can drop it.

These pet abbreviations of the brand name are convenient for use in the support forum, but they are inconsistent and non-intuitive to the outside world, as well needless. And history has shown that most people can’t spell ‘Textpattern’ correctly, so don’t make it worse by using abbreviations.

At the same time, do not overuse the brand name in documentation (or in any project), even if it’s part of a document title. Too much repetition of ‘Textpattern’ becomes monotonous and distracting. It’s a context that is already clear to readers by fact the are using the software.

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

Interface strings are the text elements a user reads in the administration interface, from headers to form control labels to system feedback messages. Their consideration is critical to good software usability.

Referring to them consistently yet unobtrusively in documentation is also critical. The balance between consistency and unobtrusiveness, however, can be challenging when many types of strings exist.

Textpattern documentation aims for a clear and logical balance with seven formatting rules, summarized in the next two tables. Seven sounds like a lot, but they will make sense when you review them.

##### Interface headers, labels, and file paths

Most of the types of interface strings are summarized in Table 1. An explanation of how and why the rules were derived follows the table. 

<div class="tabular-data" itemscope itemtype="https://schema.org/Table"><table>
<caption>Table 1. Header, label, and file path strings</caption>
<thead><tr>
<th scope="col">String type</th>
<th scope="col">Formatting</th>
<th scope="col">Example</th>
</tr></thead>
<tbody>
<tr>
<th scope="row">Capitalized single words</th>
<td>Normal</td>
<td>The Write panel.</td>
</tr>
<tr>
<th scope="row">Multiple words, no terminal punctuation</th>
<td>Bold</td>
<td>The <b>Date format</b> setting.</td>
</tr>
<tr>
<th scope="row">Full-sentence strings with terminal punctuation</th>
<td>Italic</td>
<td>The <i>Prevent widowed words in article titles?</i> preference.</td>
</tr>
<tr>
<th scope="row">Form control options</th>
<td>Single quote marks</td>
<td>Select ‘Yes’ from the drop-down options.</td>
</tr>
<tr>
<th scope="row">Textpattern Form names</th>
<td>Bold-italic</td>
<td>The <b><i>comments_display</i></b> form.</td>
</tr>
<tr>
<th scope="row">File paths and names&#x002a;</th>
<td>Italic&#x2020;</td>
<td><i>domain.tld/textpattern</i><br><i>.htaccess</i><br><i>index.php</i></td>
</tr>
</tbody>
<tfoot><tr><td colspan="3"><ol>
<li>Always show file extensions on file names!</li>
<li>Do not format URLs and file paths as code unless they are part of an actual code snippet.</li>
</ol></td></tr></tfoot>
</table></div>

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

##### Alert message strings

Another type of interface string that needs documented are system alerts. Alerts appear to users as feedback dialogue in the Diagnostics panel, or in other panels as success/failure messages (e.g. when saving changings).

Alerts can be one of four types: success, information, warning, or error. Style alerts as they appear in the interface buy using the appropriate class attributes. (You will need to add the selectors via Kramdown syntax. See [**Selectors and attributes**](#selectors-and-attributes).)

Success alerts
: `class=".alert-block .success"`
: Example:

Message string.
{: .alert-block .success}

Information alerts
: `class=".alert-block .information"`
: Example:

Message string.
{: .alert-block .information}

Warning alerts
: `class=".alert-block .warning"`
: Example:

Message string.
{: .alert-block .warning}

Error alerts
: `class=".alert-block .error"`
: Example:

Message string.
{: .alert-block .error} 

<div class="tabular-data" itemscope itemtype="https://schema.org/Table"><table>
<caption>Table 2. Alert message strings</caption>
<thead><tr>
<th scope="col">Alert type</th>
<th scope="col">Class attributes</th>
<th scope="col">Example</th>
</tr></thead>
<tbody>
<tr>
<th scope="row">Success</th>
<td><code>Success message. {: .alert-block .success}</code></td>
<td>
You did good.
{: .alert-block .success}
</td>
</tr>
<tr>
<th scope="row">Information</th>
<td><code>Information message. {: .alert-block .information}</code></td>
<td>
New version available.
{: .alert-block .information}
</td>
</tr>
<tr>
<th scope="row">Warning</th>
<td><code>Warning message. {: .alert-block .warning}</code></td>
<td>
Uh, that’s a cliff, dude…
{: .alert-block .warning}
</td>
</tr>
<tr>
<th scope="row">Error</th>
<td><code>Error message {: .alert-block .error}</code></td>
<td>
OMFG, _no!_
{: .alert-block .error}
</td>
</tr>
</tbody>
</table></div>

## Markup

Documentation uses a mixture of HTML, regular Markdown, and Kramdown. Whenever possible, we use regular Markdown syntax for formatting text elements (italic, bold, links, basic lists, blockuotes…). For other block elements, we either need to use straight HTML, because of certain styling needs, or Kramdown notation (e.g. block spans, notes, definition lists…). The following sections explain the most common situations needing HTML or Kramdown.

### Selectors and attributes

Applying HTML selectors and attributes inline (e.g. using `span`) or on a block level element requires Kramdown syntax.

Kramdown calls the syntax an ‘inline attributes list’.[^selectors] But it’s not called ‘inline’ to imply use on inline HTML elements; rather, it’s referring to the way attributes are lined up in curly brackets. The structure looks like this:

```
{: #id .class}
```

If you use an `id` selector, as shown, the space must exist between the `:` and `#`. If no `id` selector is needed (i.e. on block elements), then no space is needed either, and you can use as many class selectors as you want:

```
{:.class1 .class2 .class3 .etc}
```

**The bottom line on using selectors and attributes is:** You do not use them unless the documentation has already provided them for a specific formatting/styling reason. This means you will:

1. Never need inline selectors, _thank goodness!_, since Markdown can apply **bold**, *italic*, and ***bold-italic*** formatting when needed (and only when needed). Ergo, you will never need to use `span` on anything.
2. Only worry about block element styling when these guidelines define such selectors for use. Such selectors will be indicated in the relevant section of these guidelines where applicable (e.g. [**Alert message strings**](#alert-message-strings)). 

**Block element styling:**   

When using a Kramdown attributes list on a block element (e.g. `p`), position the syntax on a new line immediately after the element text:

```
This is a regular paragraph.
{:.class}
```

For a working example, recall the formatting rules for [**Alert message strings**](#alert-message-strings). Such strings are documented in the Diagnostics panel documentation, under the [Pre-flight checks](https://docs.textpattern.com/administration/diagnostics-panel#pre-flight-checks) section, among other possible places in documentation. Here’s an alert string all users like to see:

All checks passed!
{: .alert-block .success}

And this is how to structure it in markup:

```
All checks passed!
{: .alert-block .success}
```

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

Consider the following table, which is an example of the notes in effect (as is [Table 1](#interface-headers-labels-and-file-paths)).

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

#### Notes in main text

Remember that notes, which are, technically speaking, a part of notes and bibliography referencing systems, are used to cite sources (e.g. the source of a quotation used), or enable authors to briefly expand on ideas, for example, without bloating the main text.

**Use notes sparingly:**

Do not annotate text for the sake of it. Fewer notes are better in documentation because it’s less overhead for readers wanting to get something done. However, using a few notes for references (citing external sources) and/or expanding on insights the author may have on a given situation in context, can be useful.

**Call them what they really:**  

As for applying notes, GitHub does not use regular Markdown footnotes, so the syntax for notes that you may have learned at Daring Fireball, or by using iAWriter, whatever, will not work here. Instead, GitHub uses Kramdown footnotes, which are somewhat closer in method to how Textile footnotes work, so that’s a step in the right direction for Textile lovers.

From hereon, we refer to them simply as _notes_, as all leading references like the *New Oxford Style Manual* and the *Chicago Manual of Style* do when speaking of footnotes and endnotes in general terms, and _endnotes_, when referring to the notes list at end of the document.[^notes]

**Adding the syntax:**

You may or not be aware that Kramdown notes function the same way whether you write inline markers as numerals in sequence (i.e. `[^1]`, `[^2]`, `[^3]`, . . .) or as unique text-like tags, whatever you choose to use (e.g. `[^dope]`, `[^dongle]`, `[^dingo]`, . . .). Either way, the resulting endnotes list is an ordered list of arabic numerals.

Thus, using text as inline markers is a better way to go, because:

1. Text markers can be created relevant to the topic being annotated (i.e. they’re intuitive if used right), and you don’t have to worry about what order they are in.
2. Numbered markers can be needlessly distracting if you are trying to keep them in order; and confusing if you have many of them and they get out of order.

Skip the madness and use text markers only. It’s easier.

**Example of notes usage:**

This document uses three notes. The first comes way up in the [**Panel vs. tab**](#panel-vs-tab) section. The second comes in the [**Selectors and attributes**](#selectors-and-attributes) section. And the third in this section on notes. In each case, you will see the inline marker as a superscript ‘1’, ‘2’, and ‘3’, respectively, at the end of sentences.

The actual markers used in the markup are: `[^tabs]`, `[^selectors]`, and `[^notes]`. Each note marker uses a word relevant to the topic. Logical.

The notes themselves are added at the bottoms of the sections they appear in. Sure, you could have notes spread out through the document like that. But by putting them at the ends of the sections they belong to, it’s easy to find and edit them in context, instead of jumping up and down in the document.

Each note begins with the same marker used inline, followed by a `:`

```
[^tabs]: ’Tabs’ was the common reference used years ago . . .
```

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

