---
layout: document
category: Administration
published: true
title: Pages panel
description: The Pages administration panel is where the Page templates used within a Textpattern website are created and edited.
---

# Pages panel

The Pages administration panel contains an edit field, a list of existing [Page templates](http://docs.textpattern.io/themes/page-templates-explained), and a tag builder to help you construct page content. It's important to note that, like everything else, the Page templates are stored in the database - there is no physical file on the server that contains this Page template.

On this page:

* [Creating a new Page template](#creating-a-new-page-template)
* [Duplicating a Page template](#duplicating-a-page-template)

A list of current Page templates are displayed. To select a template for editing, click on its name and Textpattern will fill the 'Page code' edit field with the selected template. You may then edit the Page template code and save it back into the Textpattern database using the Save button, located below the edit field. Controls for creating a brand new Page template or creating a copy of an existing Page template are also available.

Note that the database can only store a maximum of 64KB of data in each Page template. Be aware of this limitation if you are pasting templates in from third party sites: check that the content has not been truncated after you Save it. If the content is too large to fit in the field, you can break it up into chunks and store them in [Forms](http://docs.textpattern.io/administration/forms-panel) - reusable snippets of template content. See the [output_form tag](http://docs.textpattern.io/tags/output_form) for more information.

## Creating a new Page template

To create a new Page template, click the 'Create new page' button. The Page template editor will be empty. Before working on the Page template content, it's best to first give it a unique name and save it, using the Save button in the Page template editor.

You can then return to editing the Page template's content, either by hand, or by pasting in some starter code from an existing Page template and editing it as needed. Be sure to save your changes as you progress to not risk losing anything!

## Duplicating a Page template

Making a copy of the current Page template is easy. Click the 'Duplicate' button and a copy of whatever is in the 'Page code' field will be saved to a new Page template.

If you have already altered the 'Page name' field before duplication, the new Page template will use that name (as long as the name is not already in use). If you have not altered the name, the new Page template will have the same name as the currently loaded template, with the word 'copy' appended to it.

Your new Page template is then immediately available for editing.

[Next: Forms administration panel](http://docs.textpattern.io/administration/forms-panel)
