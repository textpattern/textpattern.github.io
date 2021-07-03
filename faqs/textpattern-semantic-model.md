---
layout: document
category: FAQs
published: true
title: "The Textpattern semantic model"
description: The system's six primary building blocks that make it possible to create and manage your site's structure, content and presentation.
---

# The Textpattern semantic model

When we talk about Textpattern's semantic model, we're talking about the system's six primary building blocks that make it possible to create and manage your site's structure, content and presentation easily. All it takes is getting familiar with the blocks, and how they are associated to one another, which is what this page overviews.

## Semantic model building blocks

Following is a visual representation, as it would reflect in a website, of the structural association between the semantic building blocks.

### Sections

[Sections](/administration/sections-panel), as you might expect, provide the lateral structure in a website, and are often reflected by the main navigation menu links.

Pages and Styles (described next) are associated to Sections to provide an HTML template and the CSS presentation - complete separation of content and aesthetics.

### Pages

[Pages](/administration/pages-panel) are essentially HTML templates to which all content is added, usually as a combination of standard HTML and Textpattern Tags. As mentioned, Pages must be assigned to Sections, which is how a given section of your website receives the web template it will use.

### Styles

[Styles](/administration/styles-panel) are the CSS style sheets that define the presentational layer of your web content. Like Pages, Styles are associated to Sections. A single Style can be associated to all Sections you create, or each Section can have it's own Style, depending on your website design objectives.

**Note:** Like all building blocks described on this page, Textpattern manages Styles in the database by default, not as files on the web server. However, you are not forced to manage your style sheets this way. e.g. you could still link your flat CSS files in the @<head>@ of a Page template in the standard way.

### Forms

[Forms](/administration/pages-panel), conceptually speaking, are like PHP includes or any other kind of code insertion process you may be aware of that enables you to create a predefined chunk of content once and reuse it in multiple places. In fact, Forms can be used in a variety of ways, including nesting Form templates within each other.

### Tags

[Tags](/tags/) are Textpattern's own type of markup syntax that work interchangeably with HTML. There is a variety of Tag types, all of which provide a seemingly infinite number of ways to construct website architecture and content publishing behaviour. Not the least of which, Tags are the means for positioning and inserting Form content into your various Page template locations. The more you learn about Textpattern's Tags, the more adept at using Textpattern you will become.

### Categories

[Categories](/administration/categories-panel) are a method of organizing content (articles, images, files, links) by particular topics to which the content relates. The category associations with content can then be used to create various content outputs in the website.

## Theoretical example for example.org

Let's walkthrough the creation and assembly of the building blocks for a hypothetical website called 'Example Organization' (`example.org`)…

All building block panels are accessed in your [administration-side](/administration/). For purposes of this example, we are only focusing on [Sections](/administration/sections-panel), [Pages](/administration/pages-panel), [Styles](/administration/styles-panel), [Forms](/administration/pages-panel), and [Categories](/administration/categories-panel). The Tags don't have their own panel; rather you simply type them up like you would HTML markup, or use one of the contextual Tag builders located at the top of the left column in the Forms and Pages panels.

### Sections need Pages and Styles

Unless you plan on using Textpattern's default Page template and default style sheet, you'll need to first create your new Page template and Style that you intend to associate with a new Section. That said, it is often advantageous to use default components (and edit them to your needs) as much as possible to keep things simple from a management standpoint.

To this end, let's say we intend to create a 'history' section in the Example Organization website where the legacy of Example Organization will be shared with the world. We also decide to create a new page, 'History', specifically for this section, but we figure it's fine using a single style for the entire site's presentation and thus we'll go with the 'default' style for simplicity and customize it as necessary. Thus we first create the 'History' page, then the history section, and finally associate the Page template and Style to the Section.

### Page template uses Form templates

The Pages panel will let you see the Page templates your site uses, which are essentially HTML documents. One template may be in use by one or more Sections.

Inside a Page template are various Tags which give Textpattern further instructions. The template dictates the overall structure of the rendered HTML page.

In addition to showing article(s) assigned to the Section, the structure may employ Form templates to show repetitive information. For example, a header; a footer; or the manner in which definition lists are displayed, may be defined in a Form template and reused across many Page templates.

### Section uses Stylesheet information

In the Style panel you will see one stylesheet by default. All pages will use this unless another stylesheet is specified. Perhaps you want a different style for the 'team' section. So you create a new stylesheet with new fonts, colours, etc. Then, in the Sections panel, select it to be used by the Team section. Other sections will still use the default stylesheet unless told otherwise.
