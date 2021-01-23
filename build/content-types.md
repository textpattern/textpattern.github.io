---
layout: document
category: Construction and Presentation
published: false
title: Content types
description: Core content types, custom content types, and designing site architectures with these kinds of content needs in mind.
---

# Content Types

Intro...

**Contents**

* Table of contents
{:toc}

## Articles

## Images

## Files

## Links

## Comments

## Authors

## Categories

## Custom fields

Custom fields enable you to add site-specific content to your articles that extend the scope of the core fields defined above.

### Defining custom fields

On the Preferences panel, click the **Custom fields** item to see input text boxes for defining up to ten fields that will appear on the Write panel when defined.

#### Important notes on creating custom field names

Custom field names may include letters (uppercase or lowercase), numbers, and under scores, but no spaces or other special characters should be used. For example, `custom1`, `Custom1`, `Custom_1`, `Location` and `Project_name` are all valid name constructs, while `custom 1`, `custom !` and `Project name` are not.

Also, there are certain names **reserved** by Textpattern, which should *not* be used to name custom fields. Doing so will likely cause your site to not work as expected.

**Do not use the following for custom field names**:

* annotate
* article_image
* authorid
* body
* category
* category1
* category2
* comments_count
* comments_invite
* excerpt
* form
* id
* keywords
* limit
* offset
* posted
* section
* sort
* status
* thisid
* title
* url_title
* Or any other [tag attribute](/tags/tag-attributes-cross-reference), just in case!

A symptom of a name clash is when you go to check or display the contents of a custom field in an article and receive unexpected (or no) output. In this case, make sure your custom field names are not any of the reserved names listed above.

To remove a custom field, simply clear its name and save the changes.

