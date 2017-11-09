---
layout: document
category: Tag basics
published: true
title: Short-form versus long-form usage
description: There are often many ways to write markup as a mix of Textpattern and HTML tags to achieve the same objectives. The  approach taken often changes as one becomes more familiar with building Textpattern templates.  
---

# Short-form versus long-form usage

There are often many ways to write markup as a mix of Textpattern and HTML tags to achieve the same functional objectives. Add in the possibility of plugin tags too, and markup can get lengthy and complex. 

When first learning Textpattern, it’s often easier to use a long-form notation, and especially if already familiar with HTML, but even moreso if not. This allows seeing standard HTML tags and attributes distinctly from those of Textpattern (and potential plugins). The result is often larger blocks of markup, but for the Textpattern beiginner it can be easier to understand. 

As one becomes more knowledgable of Textpattern tags and the scope of their functional and presentational attributes, it’s possible to write smaller volumes of markup to achieve the same things. In this case we’re really talking about structure and presentational control, less about functionality.

Their is no right or wrong way. There is only the way that makes it easier for you to understand. But the natural tendency over time is for people to start with long-form notation, then tighten up the markup (i.e. use fewer characters overall) as they get more familiar with Textpattern tags. 

We should only need one example to demonstrate the idea and difference. Your hands-on with learning Textpattern tags will lead you to discover more.

## Standard HTML

Consider the following block of standard HTML markup, which defines displaying an image as a figure and caption; a commonly desired way to display images these days:

~~~ html
<figure>
 <img src="/path/9.jpg">
 <figcaption>content</figcaption>
</figure>
~~~  

That’s straightforward and understandable. The 3 essential HTML elements are there, the image path is defined (the name is the image’s ID value in this case), and the caption is readable. But it’s all static. You have to manually write in the image path and caption content. We have not effectively separated content from structure and presentation. Whether an `alt=“”` attribute for the image is needed alongside a caption is arguable (and might be in some situations) but that could be another manual entry too.

But you want the power of server-side functionality, and you _should_ want to separate content from it’s structural and presentational constructs as much as possible, so enter Textpattern.

## HTML and Textpattern tags (long-form) 

Textpattern helps you construct dynamic publishing architectures by using [Textpattern tags](https://docs.textpattern.io/tags/) _interchangably_ with HTML, which is easier to grasp than having to know PHP scripting.

Here’s the same markup above but with two different Textpattern tags worked in, and with attributes and attribute values adjusted accordingly. This markup is structured in what can be called long-form notation:

~~~ html
<figure>
 <txp:images id="9">
  <img src="/path/<txp:image_info type="id" /><txp:image_info type="ext" />" />
  <figcaption><txp:image_info type="caption" /></figcaption>
 </txp:images>
</figure>
~~~

We call this _long-form_ notation because it’s explicit use of HTML tags for layout, and because we’re not doubling up (or more) on values in Textpattern tag attributes. If that leaves you scratching your head, it’s exactly why we’re describing the difference now.

Let’s walk through the markup for clarity.

Immediately within the HTML `figure` tags are containing Textpattern [`images`](https://docs.textpattern.io/tags/images) tags:

~~~ html
…
 <txp:images id="9">
  …
 </txp:images>
…
~~~

We need to add this tag container, in this case, to make use of the corresponding [`image_info`](https://docs.textpattern.io/tags/image_info) tag functionality. That’s the only reason. 

We see the `image_info` tag first used in this line, multiple times:

~~~ html
…
 …
  <img src="/path/<txp:image_info type="id" /><txp:image_info type="ext" />" />
  …
 …
…
~~~ 

And again in the line after:

~~~ html
…
 …
  …
  <figcaption><txp:image_info type="caption" /></figcaption>
 …
…
~~~

In each line, the `image_info` tag is explicitly calling a data value for the image in context, in this case the image having ID number 9. 

In the first line, the `image_info` tag is used twice to pull out the image’s ID number and file extension. Note there’s no “.” added between the ID and extension values, which is because the `ext` value for the `type=""` attribute already includes the required period.

In the second line, the `image_info` tag pulls the image’s caption value that you should always include in the [Image details](https://docs.textpattern.io/administration/images-panel) area for the image.

As a frame of reference, the entire block of this long-form markup is 184 characters long, not including line-breaks and indentations. 

But character length alone is not the most important consideration. We’ll come back to this point. 

## Textpattern tags and HTML (short-form)

Now let’s consider the same block of markup in _short-form_ notation. There is no functional difference; it does exactly the same thing as the long-form version of markup above. It’s just written more tightly on the side of Textpattern tags:   

~~~ html
<figure>
 <txp:images>
  <img src="/images/<txp:image_info type="id, ext" />" />
  <txp:image_info type="caption" wraptag="figcaption" />
 </txp:images>
</figure>
~~~

We’ll just highlight the key differences here.

First, we’ve removed the image ID attribute from the `images` tag: 

~~~ html
…
 <txp:images>
  …
  …
 …
…
~~~

This is not a reflection of short-form notation so much as it’s taking advantage of what we call “article context”. In this case, we can assume the markup block is used in context of an article, and the image ID number has been added to the **Article image** field for the article in which it’s applied. By doing that much, we eliminate having to declare the ID value as an attribute in the `images` tag. (See the [Article image](https://docs.textpattern.io/administration/write-panel#article-image) documentation for more about that field.)

Next, which _is_ an example of short-form notation, we’ve reduced the image file path to a single instance of `image_info` by declaring the image ID and file extension attribute values to the sole instance of the tag. You can’t do this arbitrarily with all tag attribute parameters, but in this case it is possible, and the shortening result is obvious:

~~~ html
…
 …
  <img src="/images/<txp:image_info type="id, ext" />" />
  …
 …
…
~~~

Finally, we eliminate the explicite use of the HTML `figcaption` tag by using the presentational `wraptag` attribute for `image_info`, which happens to be one of several common presentational attributes of many Textpattern tags:

~~~ html
…
 …
  …
  <txp:image_info type="caption" wraptag="figcaption" />
 …
…
~~~

The resulting character count of this block of markup, which is functionally identical to the long-form version previously, is    151 characters, and that’s even with the additional use of the wrapping `images` tag. All-in-all shorter than the long-form notation, but not by a lot. (It’s definitely longer than the static HTML version, but that’s the price for having dynamic functionality.)

But character count is not the most important consideration with respect to whether one uses short-form or long-form notation. Indeed, even some short-form constructions of tag architecture are not much shorter than long-form equivalents. As the markup in the long-form block above shows, we had to include the `images` container tag in order to use the `image_info` tag too. 

And the character count can change considerably from one given block of markup to another depending on what you’re trying to do. We’ve only demonstrated one simple example here. There are many other possible situations where your markup blocks in templates or forms could be considerably longer and more complex, and even include the tags from plugins you may have installed.

Instead, what’s most important is your understanding — or that of your client’s, if you’re building a website for them — of the resulting markup, regardless of how it’s written or how long it is. As long as the markup separates content from structure/presentation and you (or the client) understands it, you’re doing well.

Long-form notation is generally easier for new Textpattern users to get up to speed with, until they’ve become more familiar with the scope of Textpattern tag functionality. Advanced users of Textpattern generally prefer the short-form notation because it saves character space. But it doesn’t matter either way, as long as the markup is constructed correctly in relation to how Textpattern functions. 