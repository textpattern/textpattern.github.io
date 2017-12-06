---
layout: document
category: Development
published: true
title: Plugin user-help guidelines
description: Use this template and its associated guidelines when writing your plugin's user instructions.
---

# Plugin user-help guidelines TODO

Use this template and its associated guidelines when writing your plugin's user instructions.[^1] Doing so will make it easier for you, as well result in plugin help that's complete, consistent across other developer plugins (improved user experience), and more usable (intuitive and easy to navigate).

Equally important to help file structure is writing concisely (without
sacrificing clarity). Complex plugins require larger help files due to
more explanatory detail, which adds to the size of the plugin file
overall. Large plugin files sometimes interfere with plugin installation
by timing out before they fully load. So keep your copy clear and
concise to help reduce total plugin file size.

On this page:

-   [Suggested help sections](#sec1)
-   [The template](#sec2)
-   [Template guidelines](#sec3)
-   [Textile formatting](#sec4)

## Suggested sections

This is the full set of sections for structuring your help file. You may
not need all of these, but you should not need more than this. (Items in
**bold** are what you must use no matter what.)

\#(roman) **Summary and version details**

1.  Table of contents (use if you have more than three sections, or your
    sections are long)
2.  **List of features** (if you don't have many features, make this
    part of your summary)
3.  **Minimum requirements** (even if no requirements, say that)
4.  Installation (when differs from standard installation procedure)
5.  Uninstallation (when differs from standard uninstallation procedure)
6.  Tags (along with attribute descriptions and examples)
7.  Exposed functions (for class plugins)
8.  Global variables
9.  Plugin events
10. Examples
11. **License**
12. **Author contact**

Obviously, if your plugin provides a tag or more, you will include
sections 7 and 11 in your help file (and perhaps 8–10), and thus a Table
of Contents too.

## The template

The following code block is the plugin help template, which takes into
account the entire suite of sections indicated above. Copy everything in
the block, paste it into your editor, and remove the sections you don't
need, if any. Nothing else but text editing should be needed.[^2]

    h1. prefix_plugin_name

    p. A brief summary of what the plugin does.

    p. *Version:* current version number goes here.

    h2. Table of contents

    #(roman) "List of features":#sec01
    # "Minimum requirements":#sec02
    # "Installation":#sec03
    # "Uninstallation":#sec04
    # "Plugin tags":#sec05
    # "Exposed functions":#sec06
    # "Global variables":#sec07
    # "Plugin events":#sec08
    # "Examples":#sec09
    # "License":#sec10
    # "Author contact":#sec11

    h2(#sec01). List of features

    * Feature 1
    * Feature 2
    * Feature 3

    h2(#sec02). Minimum requirements

    p. This plugin has the following minimum requirements (and/or dependencies):

    * Textpattern 4.x
    * Plugin dependency 1
    * Plugin dependency 2

    h2(#sec03). Installation

    p. Any special installation instructions.

    h2(#sec04). Uninstallation

    p. Any special uninstallation instructions.

    h2(#sec05). Plugin tags

    h3. prefix_tag_name1

    p. Description of the plugin tag and how it is intended to be used.

    p. %attribute_name% %value_type%
    Description of the attribute usage.

    p. %attribute_name% %value_type%
    Description of the attribute usage.

    h3. prefix_tag_name2

    p. Description of the plugin tag and how it is intended to be used.

    p. %attribute_name% %value_type%
    Description of the attribute usage.

    p. %attribute_name% %value_type%
    Description of the attribute usage.

    h2(#sec06). Exposed functions

    h3(tag). my_plugin_func

    p. This function will do foo or bar.

    p. %(atts-name)Return Value% %(atts-type)return_value_type%
    Description of the function return value.

    p. %arg_name% %arg_value_type%
    Argument description.

    h2(#sec07). Global variables

    h3. $my_plugin_global

    p. This array is set during _blah_ and is false on failure.

    h2(#sec08). Plugin events

    h3. my_plugin.event

    p. This event is called when blah happens.

    h2(#sec09). Examples

    h3. Example 1

    p. A large example that puts it all together or examples to go with each tag (in which case it is probably better to include it with the tag above).

    bc. Example code

    h3. Example 2

    p. A large example that puts it all together or examples to go with each tag (in which case it is probably better to include it with the tag above).

    bc. Example code

    h2(#sec10). Licence

    p. State any special license information here.

    h2(#sec11). Author contact

    p. Developer contact details, or links to where one can get more help or make suggestions.

## Template guidelines

Clarifying notes about using the template:

**Prefix**. In the first line, `h1. prefix_plugin_name`, "prefix" will
be your [plugin developer
prefix](https://docs.textpattern.io/development/plugin-developer-prefixes).

**Features list**. If your plugin isn't complex (doesn't have a lot of
features), you may merge the "Features list" section into your summary
by simply saying in the summary what your plugin will do, rather than
making an unnecessary list.

**Minimum requirements**. If your plugin has no minimum requirements or
dependencies, include this section anyway and simply say "None." This
makes it clear rather than enigmatic.

**Installation/Uninstallation**. Only include these sections if they
provide any instruction *different* from standard installation
procedure. If not, leave them out.

**Plugin tags**. The `h3.` subsection headings for tags will be the
plugin prefix and name without surrounding tag syntax (i.e. use
**abc_tag_name**, not `<txp:abc_tag_name />`).

**Examples**. Ensure your `h3.` subsection headings for examples are
clearly indicative of what the example is about, as much as possible.
Your example intros will help make this clear, of course, but for
scanning reasons, headings should be informative too.

## Textile formatting

The template already includes the necessary
[Textile](http://txstyle.org/). We assume you know what Textile is if
you're using Textpattern (if not, you should get on that), but following
are the basic things to look for in the template.

**Headers h1-h3:**

-   `h1.` is for the help page title (the plugin's name).
-   `h2.` is for main sections of the help page, and include ID's to
    enable the in-page Table of Contents lists (e.g. `h2(#sec1).`).
-   `h3.` is for subsections, and these should not have ID's or classes.

**Paragraph copy:**

-   `p.` begins every new paragraph. (This is only required in plugin
    help, not when using Textpattern itself.)
-   `%(highlight)important statement here%` resolves as an inline `span`
    having `class="highlight"`. Use this when you want to notate
    something important within a paragraph.

**Lists:**

Ordered...

    # A number list example
    # Item 2
    # Item 3

Numbered...

    * A bullet list example
    * Item 2
    * Item 3

**Code:**

Inline code is noted by surrounding the code with 'commercial ats'...

    @<txp:tag_name />@

Multi-line block code, if it has no blank lines, begins with `bc.`:

    bc. <code>
    $code
    code('with code') {
    no blank lines
    }

Or with `bc..` (note the double full-stops) if blank lines exist:

    bc.. $code
    code('with code') {

        }

    # Yes, this...
    code_has('$some', '$bad', 'bugs=1)

[^1]: Derived from [this forum
    discussion](https://forum.textpattern.io/viewtopic.php?id=25327).

[^2]: All Textile formatting is provided already. All you have to do is
    fill in your content in the right locations. **Do not** use inline
    CSS styling of your own in help information. Allow the presentation
    provided in the admin-side theme to work on its own. All you need to
    do is use the indicated Textile as clarified.
