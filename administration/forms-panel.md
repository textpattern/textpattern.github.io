---
layout: document
category: Administration
published: true
title: Forms panel
description: The Forms administration panel is where the Form templates used within a Textpattern website are created and edited.
---

# Forms panel

The Forms administration panel contains an edit field, a list of existing [Form templates](http://docs.textpattern.io/themes/form-templates-explained) organized by rough categories, and a tag builder to help you construct Form template content. It's important to note that, like everything else, the Form templates are stored in the database - there is no physical file on the server that contains this Form template.

On this page:

* [Creating a new Form template](#creating-a-new-form-template)
* [Duplicating a Form template](#duplicating-a-form-template)

The first column of the panel is the list of current Form templates. To select a template for editing, click on the name in the first column and Textpattern will fill the second column edit field with the selected template.

The second column is a large edit field where you may edit the Form template code, and controls for creating a brand new Form template or creating a copy of an existing Form template. A Save button, located at the bottom of the second column, will save the Form template back into the Textpattern database.

## Creating a new Form template

To create a new Form template, click the 'Create new form' button. The Form template editor will be empty. Before working on the Form template content, it's best to first give it an unique name, assign a Form type and save it, all using the controls in the Form template editor.

You can then go back to editing the Form template's content, either by hand, or by pasting in some starter code from an existing Form template and editing it as needed. Be sure to save your changes as you progress to not risk losing anything!

All Form templates need to have unique names and a Form type association before saving them. should classify it according to the kind of Form template it will be. There are several form types:

* article
* category
* comment
* file
* link
* misc (miscellaneous)
* section

The form type you use is not vitally important, the purpose of assigning Form templates a type is to allow Textpattern's tag builder to help you easily find the form you want to use. Once you've named and classified your Form template, you can begin building it.

## Duplicating a Form template

Making a copy of the current Form template is easy. Click the 'Duplicate' button and a copy of whatever is in the 'Form code' field will be saved to a new Form template.

If you have already altered the 'Form name' field before duplication, the new Form template will use that name (as long as the name is not already in use). If you have not altered the name, the new Form template will have the same name as the currently loaded template, with the word 'copy' appended to it.

Your new Form template is then immediately available for editing.

[Next: Styles administration panel](http://docs.textpattern.io/administration/styles-panel)
