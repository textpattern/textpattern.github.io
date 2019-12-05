---
layout: document
category: Administration
published: true
title: Styles panel
description: The Styles panel is where the CSS (Cascading Style Sheets) used within a Textpattern website are created and edited.
---

# Styles panel

The Styles panel is used to edit CSS (Cascading Style Sheets) for your website, and has a similar layout to the [Pages panel](/administration/pages-panel).

On this page:

* [Creating a new CSS file](#creating-a-new-css-file)
* [Duplicating a CSS file](#duplicating-a-css-file)

Note: For performance benefits, you may wish to host your CSS as flat files (outside of the Textpattern database) instead of using this panel.
{: .alert-block .information}

The first column is the list of the current style sheets, as well as an indication of which one you are currently editing.

The second column is a large edit field where you may edit the CSS directly, and controls for creating a brand new style sheet or creating a copy of an existing style sheet. Standard CSS rules can be entered here.

## Creating a new CSS file

To create a new CSS file, select the 'Create new style' button. The Styles editor will be empty. Before working on the CSS content, it's best to first give it an unique name and save it, all using the controls in the Styles editor.

You can then go back to editing the Style's content, either by hand, or by pasting in some starter code from an existing CSS file and editing it as needed. Be sure to save your changes as you progress to not risk losing anything!

## Duplicating a CSS file

Making a copy of the current CSS file is easy. Select the 'Duplicate' button and a copy of whatever is in the 'Style code' field will be saved to a new CSS file.

If you have already altered the 'Style name' field before duplication, the new CSS file will use that name (as long as the name is not already in use). If you have not altered the name, the new CSS file will have the same name as the currently loaded file, with the word 'copy' appended to it.

Your new CSS file is then immediately available for editing.

[Next: Diagnostics panel](/administration/diagnostics-panel)
