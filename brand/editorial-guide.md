---
layout: document
category: Brand
published: false
title: Editorial style guidelines
description: Editorial guidelines for content published on Textpattern platforms.
---

# Editorial style guide

Use these guidelines to write and format all written content published in, or downloadable from, Textpattern project websites. Textpattern uses the *Oxford Style Manual* and *Oxford English Dictionary* as baseline references, therefor this guide is intentionally brief. Specifics are only added here as it becomes clear what guidelines are actually needed.

For documentation development, the accompanying [docs development guidelines](/brand/user-docs-guide) must also be used, which is specifically written for that platform.

**Contents**

* Table of contents
{:toc}

## Baseline references

The Textpattern project uses two notable references for guiding how project content is styled:

* *Oxford Style Manual* (*OSM*) for structure, style, and punctuation (also available as *New Hart's Rules*)
* *Oxford English Dictionary* (*OED*) for spelling (any abridged version will do).

Therefore current guidelines only attempt to detail conventions that:

1. address the most common situations that trip up authors
2. are overridden by Textpattern's own rules for handling a situation if different from the baseline references.

**You are not expected to own the Oxford references in order to contribute to Textpattern content**. Rather, [pose questions](https://github.com/textpattern/textpattern.github.io/issues/17) you have about style conventions, and they will be answered here with new guidelines. In this way we develop guidelines together that are catered to collaborator needs, rather than start with a big, bloated mess that is hard to write, wade through, and maintain.

## Author perspective

Author perspective refers to what point of view is used when writing for the reader thus what pronouns to use in writing.

<div class="tabular-data" tabindex="0" aria-labelledby="tablen-caption" itemscope itemtype="https://schema.org/Table">
<table>
<caption id="tablen-caption" itemprop="about">Table 1. Author perspective and pronouns</caption>
<thead>
<tr>
<th scope="col"></th>
<th scope="col">1st person</th>
<th scope="col">2nd person</th>
<th scope="col">3rd person</th>
</tr>
</thead>
<tbody>
<tr>
<th scope="row">Singular</th>
<td>I, me, my, mine</td>
<td>you, your</td>
<td>she/him, hers/his</td>
</tr>
<tr>
<th scope="row">Singular neutral</th>
<td>–</td>
<td>–</td>
<td>they, them, theirs</td>
</tr>
<tr>
<th scope="row">Plural</th>
<td>we, us, our</td>
<td>you, your</td>
<td>they, them, theirs</td>
</tr>
</tbody>
</table>
</div>

Perspective is dictated by what platform and audience the content is for.

### Textpattern perspective

The main [Textpattern](https://textpattern.com) site primarily uses persuasive marketing and promotion types of content, and a little general steering to help people along. The audience is principally the general public. The voice is collectively Textpattern, and the tone friendly and inviting. Thus the perspectives to use are first person plural and second person singular and plural.

### User Docs perspective

The [User Documentation](https://docs.textpattern.com) site is largely general expository/explanatory information. This content is Textpattern's voice, but it does not have the same personable tone as the marketing-speak on the origin site. Content here impartially helps and explains, but otherwise keeps an arm's distance.

There are four distinctive audiences of user docs based on the reasons people might read documentation:

1. end users
2. site administrators
3. plugin developers
4. collaborators (like you reading this now).

**For all four audiences, second person singular and plural will be relevant**. After that it depends:

* Site administrators: possibly third person plural in rare occasions (e.g. using *they* in context of the administrator's own site's users)
* Plugin developers: first person plural is warranted
* Collaborators: Well, here *we* are, so first person plural is certainly acceptable.

Don't get carried away with pronouns in user docs. Second person works well enough.

### Plugins and Themes perspective

The [Plugins](https://plugins.textpattern.com) and [Themes](https://theme.textpattern.com) websites use minimal content, but it's directed at end users who have already committed to using Textpattern, so second person singular and plural is appropriate, if any pronouns are needed at all.

## Spelling

In the head of all platform web pages, you will find the following:

``` html
<html lang="en-GB-oxendict">
```

That's literally telling machines (and observant humans) that Textpattern websites use words as defined and spelled in the *Oxford English Dictionary* (*OED*). You should always use the *OED* conventions when writing Textpattern content.

Table 2 shows some representative examples and comparisons.

<div class="tabular-data" tabindex="0" aria-labelledby="table1-caption" itemscope itemtype="https://schema.org/Table">
    <table>
        <caption id="table1-caption" itemprop="about">Table 1. Quick comparison of English spelling conventions by region.</caption>
        <thead>
            <tr>
                <th scope="col"></th>
                <th scope="col">-ize/-ise</th>
                <th scope="col">-yze/-yse</th>
                <th scope="col">-or/-our</th>
                <th scope="col">-ler/-ller</th>
                <th scope="col">-og/-ogue</th>
                <th scope="col">-am/-amme</th>
                <th scope="col">-ense/-ence</th>
                <th scope="col">-ter/-tre</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th scope="row">en-GB-oxendict</th>
                <td>realize</td>
                <td>analyse</td>
                <td>behaviour</td>
                <td>traveller</td>
                <td>catalogue</td>
                <td>programme<br>program (computer code)</td>
                <td>defence</td>
                <td>centre</td>
            </tr>
            <tr>
                <th scope="row">en-GB</th>
                <td>realise,<br>realize</td>
                <td>analyse</td>
                <td>behaviour</td>
                <td>traveller</td>
                <td>catalogue</td>
                <td>programme<br>program (computer code)</td>
                <td>defence</td>
                <td>centre</td>
            </tr>
            <tr>
                <th scope="row">en-CA</th>
                <td>realize</td>
                <td>analyze,<br>analyse</td>
                <td>behaviour,<br>behavior</td>
                <td>traveller</td>
                <td>catalogue</td>
                <td>program,<br> programme</td>
                <td>defence</td>
                <td>centre</td>
            </tr>
            <tr>
                <th scope="row">en-US</th>
                <td>realize</td>
                <td>analyze</td>
                <td>behavior</td>
                <td>traveler</td>
                <td>catalog</td>
                <td>program</td>
                <td>defense</td>
                <td>center</td>
            </tr>
        </tbody>
    </table>
</div>

*Oxford English Dictionary* spelling is somewhat a compromise between general British English (en-GB) and American English (en-US), which makes it a good choice for a collaborating international community.

For example, American authors will be comfortable with words ending in *-ize* because *OED* English recognizes that ending on most such words (the *OED* takes a more etymological stance to how words should be spelled versus general British English). On the other hand, British authors will be more comfortable with *centre*, *colour*, and so forth, which are also defined by the OED, though the American spellings are used in code (e.g. `text-align:center;`). Be careful of words like *analyse*, Americans, which do not use *-yze*.

### Common spelling mistakes

Watch out for these.

**Log in vs. login**: *Log in* is a verb form (e.g. 'after you log in' or 'after logging in'), whereas *login* is a noun form (e.g. 'the login location'). Same handling for 'logout' (noun) and 'log out' (verb).

**Administration-side vs. administration side**: *Administration-side* is an adjective form (e.g. 'the administration-side login form'), whereas *administration side* is a noun form (e.g. 'the login to the administration side'). Also, do not abbreviate _administration_ in either context (see [Normal word abbreviations](#normal-word-abbreviations)).

## Brand name

Software, project… It's all the same.

### The project

Textpattern is spelled "*Textpattern*". Look at that closely. That is not two words, and there is no camel-case capital P. This isn't WordPress.

When you need to use the brand name at all, write 'Textpattern'. Do not tack on 'CMS' (i.e. 'Textpattern CMS'). Should anyone insist, because they feel strongly about SEO ranking, direct them to the metadata where they can have fun for machines. You're not offending the good human readers.

Do not abbreviate the brand name in copy. (See the [Brand abbreviations](#brand-abbreviations) section.)

When distinguishing between the software and the project, the name becomes a proper adjective: 'Textpattern software' or the 'Textpattern project'. Perfectly fine.

### Project platforms

When referring to one of the Textpattern platforms, use the proper name once the first time to establish a clear context (e.g. 'Textpattern user documentation'), thereafter feel free to simply write 'user documentation'. Readers will thank you.

Never refer to any of the project websites by their domain (e.g. 'textpattern.com'). Keep that in hyperlinks where it belongs.

## Abbreviations

Except for common proper nouns of well-recognized technologies and organizations (HTML, CSS, PHP, W3C, and so on), or Latin idioms used as abbreviations in parenthetical notation (n.b., i.e., e.g., etc.), do not abbreviate any words or proper nouns in regular copy. Specific examples follow.

### Normal word abbreviations

Never abbreviate normal words as shortcut reference for people, places, or things. Example:

**Admin**:

Avoid using 'admin' as an abbreviation unless you are specifically referring to one of the following locations in the administration side of the software (context is 'Hive' and 'Hive (Flat Neutral)' themes):

* The top-level Admin section, as labeled in the navigation for it. (In the 'Classic' theme, this defaults to the Users panel.)
* The Admin section of the Preferences panel.
* The Administration-side preferences in the Admin section of the Preferences panel.

Any other use of 'admin' can lead to confusion about what is meant. Whether you mean *administration* or *administrator*, write it out fully every time so the meaning and context is perfectly clear.

This includes writing 'administration side' (noun form) and 'administration-side' (adjective form) when referring to that side of the software.

### Brand abbreviations

Abbreviations like TXP, Txp, TxP, tXp, and txp are inconsistent and non-intuitive to the outside world, and needlessly lazy. Do not use any of these pet abbreviations in official copy unless:

1. You are specifically referencing TXP Magazine.
2. You are writing a code element showing tags (e.g. `<txp:else />`.

Always spell 'Textpattern' out fully, when you need to use the brand name at all. (See [Brand name](#brand-name).)

History has shown that most people still can't spell 'Textpattern' correctly, so don't make it worse by using nonsensical inventions.

## Latin and foreign expressions

Except for single words that have become common in English, and Latin idioms used as abbreviations in parenthetical notation, do not otherwise use Latin and foreign expressions in copy. Stick with simple English diction and your copy will be easier for people to understand (and translate).

### Common Latin words in English

Single words that have long since become common in English, and are not italicized for that reason, are perfectly fine to use, for example:

* ergo
* versus (always write it out; don't abbreviate it as 'vs.')
* via
* and so on.

### Latin idioms

Common Latin idioms, notably those below, are also recommended for use, but _only_ as abbreviations in parenthetical notation.

*exempli gratia*
: Meaning: for example
: Abbreviation: e.g.
: Example of use: '(e.g. [the thing(s) you are demonstrating]).'

*id est*
: Meaning: in other words
: Abbreviation: i.e.
: Example of use: '(i.e. [the thing(s) you are clarifying]).'

*et cetera*
: Meaning: and the others, and so on
: Abbreviation: etc.
: Example of use: '([one thing], [another thing], etc.).'

Also…

* Do not bother italicizing the Latin abbreviations.
* Do not follow the leading abbreviations with a comma.
* Do not use two abbreviations in the same parenthetical note. Either change 'etc.' to an ellipsis (…), or use an English text equivalent, or, best of all, refine the note to avoid the problem entirely.

This example is wrong by all three of the points above:

> . . . (*i.e.*, [this], [that], *etc.*).

These are correct alternatives:

> . . . (i.e. [this], [that]…).
>
> . . . (i.e. [this], [that], and so on).
>
> . . . (i.e. [a more specific thing]).

Finally, never use the Latin abbreviations in the main part of sentences, outside of a parenthetical note. Instead, write English equivalents like 'for example', 'in other words', 'and so on', 'and so forth'… But the whole point of using parenthetical notes is to be less word-bloaty when needing such idioms.

## Punctuation

Punctuation is business as usual, for the most part. However, there are two conventions you must pay attention to: commas and quotation marks.

### Commas

Use a serial comma (a.k.a. 'Oxford comma').

A serial comma is one that comes between the last two items in a series, and before the _and_, for example:

> Separating content, presentation, and behaviour is always a smart thing to do.

That sentence still makes sense if you forget the serial comma. But consider this one:

> I saw Bob's uncle, a boozer and a cruiser in the park, climb into that cardboard hut.

That's not indicative of copy used by Textpattern, but, man, poor Bob's uncle. He's described there as being a boozer and a cruiser because of a missing serial comma. Add the missing comma and you realize the sentence is about three different people, though the story is still a bit dark.

The point is, more important than consistency, ensuring your sentences are grammatically correct and make sense. If you use serial commas every time, you won't be wrong, even if you don't need one. If you write a sentence without a serial comma and an editor adds one later, don't argue.

### Quotations marks

The *Oxford Style Manual* (remember, [we use that](#baseline-references)) defines a 'modern British practice' of enclosing quoted text inside single quotation marks, and to use double quotation marks for a quotation within a quotation.[^quotes]

Textpattern also uses this convention for public-facing material in official projects. The convention may not be what most of the English-speaking world uses when it writes (including British news media), but Oxford is not wrong on the clarity and logic of its choice.

Consider this curious and purely hypothetical example:

'Select “'Testing'” for the **Production status** preference to put your site in testing mode.'
{: .example-text}

The good news is, you are unlikely to need quotations inside quotations, because all Textpattern material is boring ol' expository, not narrative. You are not a story narrator conveying complex dialogue between characters, so there's no need to use nested quotations, or to remember the associated punctuation rules, most logical as they are, that go along with the British quotation system.

If the example above was a line in user documentation and not being quoted here, it would look like this instead:

Select 'Testing' for the **Production status** preference to put your site in testing mode.
{: .example-text}

Now 'Testing' is properly formatted (normal weight and single quotations marks) following the interface-strings rule for select-box options (see [Headers, labels, and options](/brand/user-docs-guide#headers-labels-and-options) in the user documentation guidelines). That's why it appears as “'Testing'” when being quoted in the first example.

Should the marketing team want to get fancy in prose… Punctuation rules for the British quotation system are straight forward: the quotation marks go inside sentence punctuation unless the punctuation is part of the quoted text. In the first example, the full point is part of the text being quoted.

[^quotes]: *New Oxford Style Manual*, ed. Anne Waddingham (3rd edn, Oxford, 2016), p 162.

## Writing tips

Writing is a wonderfully varied craft. Doing it well hinges on knowing the audience, and the genre and type of writing needed; having a knack for syntax and diction, to say nothing of grammar; and having a set of guidelines like these at hand to spot check one's progress.

Good use of syntax (sentence structure) and diction (word choice) will make even the driest topics and eye-glazing expository more pleasant to read. Improve the readability of text by mixing sentence structures to break repetitive patterns and cutting needless words.

### Compound sentences

Compound sentences are a fine item in the writer's bag of tricks. But that's often not the case, and that _is_ a problem.

Again, not always good advice for other types of writing, but for expository like documentation, it's generally a good idea. Careful, though, sometimes a single longer sentence can read more smoothly if it's free of needless word bloat. Having multiple shorter sentences does not mean end up having choppy, stilted reading. Use your best judgement.

Clauses and phrases can appear anywhere in a sentence: beginning, middle, or end. When clauses are used in the middle, adverbs, idioms, and other excesses often end up flapping on the ends. That's not a bad thing, per se, but too much flapping becomes unbearable reading. Be careful with the following:

**Adverbs and adverb phrases**:

Adverbs, like *however*, *meanwhile*, and so on can load paragraphs down quick if used too often, for example:

> 'However, if you click this one . . .' Or, 'Don't use that one, however.'

**Idioms** like *in other words*, *in any case*, *on the other hand*, and so on can also overburden paragraphs if used too frequently at ends of sentences, for example:

 > In other words, don't do this.

One idiom that you will need a lot when writing documentation is _for example_ (as the two previous paragraphs might suggest). Because documentation rely heavily on this particular idiom, it's especially important to subdue it as much as possible. Using the idiom at the end of a paragraph, as used above, just before an actual example, is one good way to employ it.

Another good and appropriate way of using idioms like *for example* and *in other words* is as Latin abbreviations (i.e. *e.g.* and *i.e.*, respectively). See what just happened there? Latin abbreviations should **only** be used in parenthetical notation, and there is no need to make them italic, for example:

> System alerts require two selectors: one for the common box layout and one for the unique type of alert (e.g. `class=".alert-box .warning"`).

**Conjunctions**:

Conjunctions like _but_ and _and_ are fine to use infrequently at beginnings of sentences, but conjunctions like _therefore_, that require a following comma, should be avoided, for example:

> Therefore, don't do this.

**Avoid useless adverbs**:

Adverbs like _very_, _really_, _only_, and others are commonly used in speech when we talk to each other, and in that context are easily overlooked, but they look and read terrible in writing, and add considerable bloat to documents when all tallied up.

For example, 'the really large code block' or 'only copy the lines between x and y' are bloated ways of writing 'the large code block' and 'copy the lines between x and y'. There's no loss of meaning or instruction by dropping the needless adverbs, and it reads a lot better too.

**Avoid passive verb structures**. Verb structures like _to be/have_, _could be/have_, _should be/have_, _might be/have_, and so forth are not only miserable to read, but they bloat copy with unnecessary words. You are the expert giving the sound advice, so assume the role. Find a more direct and active way of word phrases. Using a generic structure as example: 'put this thing there' is far cleaner and direct than either 'you should put this thing there' or 'that thing should be put there'. Both are lousy. If a reader doesn't want to put something somewhere, they won't, but they'll appreciate you weren't wishy-washy about the instruction. Kill the passive verb structures.

**Question every use of 'that' and 'just'**:

It's easy to abuse both words. Every time you use 'that' or 'just' in a sentence, read the sentence without using the words and see if it still makes sense. Most of the time it will. If it does, leave the words out.


### Capitalizations

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
Do not use ampersands in place of the conjunction "and". However, if they used for a legitimate reason, ensure the character is marked up as an ASCII value, not a glyph. For example, Sanford & Sons Inc. would be `Sanford &amp; Sons Inc.`.

Links
Keep links in body copy to a minimum. Ensure links that are used are focused on calls to action (e.g. "Download") and/or contextual integration of different topic pages (e.g. links between different pages in wiki documentation). Only link to third-party websites if doing so aides the user in completing a Textpattern-related task.

## Terminology

Textpattern terms as administration-side panel and link references
When using the name of any administration-side panel to mean the location of that panel, it should always be a non-italicised link to the given wiki page it's referring to, and the link should only be on the word itself, i.e. the link text should be the same as the name of the wiki page it's pointing to.

Correct → Most of your content is created in the Write panel.

Wrong → Most of your content is created in the Write panel.

Wrong → Most of your content is created in the Write panel.
 There are two exceptions to the rule in bold above. Wiki pages for the Images and Comments panels are titled "Images (panel)" and "Comments (administration-side)", respectively. These are necessary (though inconsistently named) titles to avoid wiki page title conflicts with Tag pages having the same names. But they are unattractive, so we use custom links to these pages via wiki syntax.

Correct → Photos and other images are uploaded in the Images panel.

Correct → You can edit article comments in the Comments panel.

Wrong → Photos and other images are uploaded in the Images (panel).

Wrong → You can edit article comments in the Comments (administration-side) panel.

Textpattern terms as semantical (non-linked) references
Certain panel names—often considered to be Textpattern's semantical features—have a lot of similarity with general web terms, and thus can be easily confused if not clearly distinguished in documentation. Textpattern terms used in context of semantics, but not linked to panel documentation pages, should be capitalised and italicised.

Correct → All Textpattern Sections must have a Page and Style associated to it.

Wrong → All Textpattern Sections must have a Page and Style associated to it.
        (Because it suggests the context of an non-linked panel, which shouldn't exist.)

Wrong → All Textpattern Sections must have a page and style associated to it.
        (Because it lacks capitalisation as used in Textpattern's UI.)

Wrong → All Textpattern Sections must have a page and style associated to it.
        (Because there is no distinction from any other context.)


## Versioning
The proper way write the version releases of Textpattern. This is less a stylistic issue and more a Textpattern development policy; however, it's relevant to the template:Txp current version that provide this dynamic value in multiple places in documentation. Ensure the version is correct in this template against the current Textpattern release.

## Appendix A: Template metadata
For the sake of referencing, all Textpattern sites maintained in support of the Textpattern project should use "Textpattern CMS" in template header data.

Recommended use of name (arbitrary examples only):

Complete → <title>Textpattern CMS – Homepage</title>

Complete → <meta name="description" content="The Textpattern CMS homepage">

Complete → <meta name="keywords" content="Textpattern, CMS, homepage">

Not recommended:
Incomplete → <title>Textpattern – Homepage</title>
Incomplete → <meta name="description" content="The Textpattern homepage">
Incomplete → <meta name="keywords" content="Textpattern, homepage">

## References
1. Clarke, Andy (2008). A client-focused copy style guide. For a Beautiful Web. 15 Dec 2010.
2. Cohen, Georgy (2010). Mandy Brown and Erin Kissane at Content Strategy New England: A Pragmatic Approach to Editorial Style. Georgy Cohen: Writing and Web Communications. 15 Dec 2010.
3. Gruber, John (2010). Title Junk. Daring Fireball. 21 December 2010
4. Saloka, Elizabeth (2009). 5 Tips on Working with a Style Guide. Brain Traffic Blog. 18 Dec 2010



## Endnotes
