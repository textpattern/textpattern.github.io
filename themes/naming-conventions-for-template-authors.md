\\n

#### Unofficial Working Draft for a TXP Templating Naming Convention {#unofficial_working_draft_for_a_txp_templating_naming_convention}

##### Purpose and Intention of this Document {#purpose_and_intention_of_this_document}

1.  This is a Draft for a proposed Naming Convention, to name, structure
    and package up Template Files
2.  the Purpose of this document is to help Template Authors and Porters
    to:
3.  Provide Template Packages, that are compatible with:
    1.  Current versions of Textpattern of the 4.0.x Branch
    2.  Helper Plugins and Texteditors that handle either/or/and
        1.  TXP Form, Page, and CSS files
        2.  TXP source Code

4.  Providing both forwards and backwards compatibility, also towards a
    possible Implementation of a [Theme
    Engine\]](/home/www/zendstudio/dokuwiki/bin/doku.php?id=http:textpattern.net_wiki_index.php&title=Themes)
    is desired from the large User Base of Textpattern, allthough not
    defined yet as a concrete concept.
5.  Users and Developpers are encouraged, to provide Idias, correct
    mistakes towards a useful and thoughtful planning of this
    Naming Convention.
6.  A possible sample Download Package, that Template Authors can
    download would be ideal, to have consistent results, once all
    involved Parties have agreed upon a convention, that does not cause
    any problems, with any further evolution of the TXP source code.

##### Background and current Base Implementations of Templating work {#background_and_current_base_implementations_of_templating_work}

1.  The basic need for a naming convention has partly emerged, after
    various Tools, to work with template files have been created from
    the TXP Userbase.
2.  These Tools do exist in various forms and for different reasons,
    either in the form of plugins, modifications of the Source code and
    as extensions of External TextEditors to also ease the work on
    Source code in general.

##### Understanding templating workflows with mcw_templates {#understanding_templating_workflows_with_mcw_templates}

1.  Import and Export Session.

<!-- -->

1.  To maintain compatibilty with mcw_templates for example, we have to
    distinguish between Import and export Sessions.
2.  Performing an export session, mcw_templates already prepends the
    form type delimiter on all form files that successfully got
    exported, while the file extension is configurable in the
    plugin itself.
3.  An Import Session of a Template Set can not be performed, if the
    form type delimiter prepended to the extension is missing. (That is
    how it works)

##### Current Convention Proposals {#current_convention_proposals}

1.  The following convention Proposals already have been made
    1.  File Naming Convention, Proposal 1
        1.  Form files could have 4 distinct parts.

An example for an article form file (As a packaged derivative)

    xxx_yyyy.article.ext

1.  - - The first part (xxx) is the creator code, that would identify
    the Template author, in the same fashion, as it is already handled
    for plugin files.Here it is followed by an underscore, that suits
    the general syntax structure of a txp tag.
    1.  The second part (yyyy) (after the underscore delimiter) is the
        part that could identify the structural and functional aspect of
        the form file.It is followed by a dot delimiter.
    2.  This second part, can by itself have a subpattern, that could
        naturally follow any mental pattern a Template Author prefers.
        Example:

<!-- -->

    xxx_promo_sticky_teaser_front.article.ext

<ol>
<li>
- - The third part identifies the form category (article, comment, link,
file or misc.)

<ol>
<li>
The forth part, the file extension could be altered, from txt, to
something else, to also make it possible, to distinguish between forms,
pages and CSS files.

<ol>
<li>
Proposal:

<ol>
<li>
    txfml for forms.

</li>
<li>
    txpml for pages.

</li>
<li>
    css for styles. 

</li>
</ol>
</li>
</ol>
</li>
</ol>
</li>
</ol>
= What to take in to account ? =

1.  Of particular importance is cross platform compatibility on
    different Operating Systems:
    1.  Do double extension values work on these.
    2.  And if so , with how many digits ?
    3.  Is it managable in most of the used Texteditors ?

Things, that generally should be avoided:

1.  White space characters in file and folder-names
2.  Arbitrary and unnecessary Information in File and Form-names (Those
    can easily go inside the files themself as comments)
3.  UTF characters that are not part of the ASCII ANSI range
4.  Braces, hyphens, quotes or any other non_word or non_numerical
    characters
5.  Files, that are not properly UTF-8 encoded and old-style ISO doctype
    meta declarations in Page Templates.
6.  Uppercasing,Titlecasing and Camelcasing of file and folder names.
    Lowercase file and folder names should be the prefered format, to
    avoid confusion and inconsistencies accross different OS platforms.

= Proposed Folder Structure =

1.  All names lowercase.
2.  No spaces
3.  The folder names can simply be :\`css\`,\`pages\`, and \`forms\` and
    should be sibblings where the parent-folder could have the template
    name as folder-name.
4.  It has been suggested, to move the textpattern Folder outside of the
    textpattern directory, to make maintenance of the TXP Source Code
    easier and more reliable. This example can be seen in a modified
    version of mcw_templates
    [here\]](/home/www/zendstudio/dokuwiki/bin/doku.php?id=http:txpun.com_wiki_cms:templates)

##### To Consider {#to_consider}

A Folder and File structure and convention like the one mentioned above,
does successfully perform an Import session with mcw_templates. If part
of the conventions mentioned in section one are not met, it fails.

#### Resources

##### Existing Templating Tools {#existing_templating_tools}

[mcw_templates by Mike
West\]](/home/www/zendstudio/dokuwiki/bin/doku.php?id=http:mikewest.org_archive_mcwtemplates-v02)

[cms
templates\]](/home/www/zendstudio/dokuwiki/bin/doku.php?id=http:txpun.com_wiki_cms:templates)

[TextMate
Bundle\]](/home/www/zendstudio/dokuwiki/bin/doku.php?id=http:textpattern.org_tutorials_629_textmate-bundle-for-textpattern)

##### Theming Support {#theming_support}

[Themes\]](/home/www/zendstudio/dokuwiki/bin/doku.php?id=http:textpattern.net_wiki_index.php&title=Themes)
