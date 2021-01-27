---
layout: document
category: Tag basics
published: true
title: Integrated tag notation
description: Integrating HTML markup into Textpattern tags has the benefit of being less verbose in your templates.
---

# Integrated tag notation

Textpattern and HTML tags can be mixed together to achieve various objectives. While the distinction makes it easier to see the two tag types, it can make for more verbose markup. As you get more famililar with Textpattern tags, you can choose to write markup in a more _integrated_ way, where HTML is defined in Textpattern tag attributes instead of used as separate tags. This page describes the general idea.

**Contents**

* Table of contents
{:toc}

## Mixed markup notation

Mixed markup notation means using HTML tags and Texpattern tags together but distinctly. You can readily see each tag type, thus the role it’s playing in the markup. Add plugin tags to the mix and markup can get lengthy and complex, even if you can see the different tag types.

Despite the lengthier result, character-wise, writing markup this way can be easier for new users of Textpattern, and especially those already familiar with HTML. In fact, this is often how people write their markup without giving it much thought.

Consider the following block of standard HTML markup, which defines displaying an image as a figure and caption:

~~~ html
<figure>
    <img src="/path/9.jpg">
    <figcaption>content</figcaption>
</figure>
~~~  

That’s great, but the reason you're using Textpattern is to automate content output and make things more dynamic. So let’s add in some relevant Textpattern tags in a mixed way:

~~~ html
<figure>
    <txp:images id="9">
        <img src="/path/<txp:image_info type="id" /><txp:image_info type="ext" />">
        <figcaption>
            <txp:image_info type="caption" />
        </figcaption>
    </txp:images>
</figure>
~~~

Let’s walk through the markup for clarity. Immediately within the HTML `<figure>` tags are containing Textpattern [images](/tags/images) tags:

~~~ html
…
    <txp:images id="9">
        …
    </txp:images>
…
~~~

We need to add this extra tag container to make use of the corresponding [image_info](/tags/image_info) tag functionality. That’s the only reason. A lot of Textpattern tags work in relation to one another like that, where a containing parent tag allows child tags to do their thing.

We first see the `<txp:image_info />` tag used in this line multiple times:

~~~ html
…
    …
        <img src="/path/<txp:image_info type="id" /><txp:image_info type="ext" />">
        …
    …
…
~~~

And again in the line after:

~~~ html
…
    …
        …
        <figcaption>
            <txp:image_info type="caption" />
        </figcaption>
    …
…
~~~

In each instance of `<txp:image_info />`, the tag is pulling a specific data value for the image in context. The first line pulls the image’s ID number and file extension. Note there’s no `.` added between the ID and extension values because the `ext` value for the `type=""` attribute already includes the required period.

In the second line, `<txp:image_info />` is pulling the image’s caption value, which you should _always_ include in the Image edit panel area for the image.

While the mixed markup is more functionally dynamic, it’s also a bigger block of markup overall because there’s no integration of HTML with Textpattern tags. As a frame of reference, the entire block of mixed markup is 182 characters long, not including line-breaks and indentations.

## Integrated markup notation

Now consider the same functional block of markup above, but this time we _integrate_ HTML into the Textpattern tags where we can. There is no functional difference; it does exactly the same thing as the mixed markup above. It's just written more tightly on the side of Textpattern tags:

~~~ html
<figure>
    <txp:images>
        <img src="/images/<txp:image_info type="id, ext" />">
        <txp:image_info type="caption" wraptag="figcaption" />
    </txp:images>
</figure>
~~~

Highlighting the key differences.

First, we've removed the image ID attribute from the `<txp:images>` tag:

~~~ html
…
    <txp:images>
        …
        …
    …
…
~~~

This is not a reflection of integrated notation so much as it's taking advantage of what we call 'article context'. In this case, we can assume the markup block is used in context of an article, and the image ID number has been added to the [Article image](/administration/write-panel#article-image) field for the article in which it's applied. By doing that much, we eliminate having to declare the ID value as an attribute in the `<txp:images>` tag.

Next, which *is* an example of integrated notation, we've reduced the image file path to a single instance of `<txp:image_info />` by declaring the image ID and file extension attribute values to the sole instance of the tag. You can't do this arbitrarily with all tag attribute parameters, but in this case it is possible, and the shortening result is obvious:

~~~ html
…
    …
        <img src="/images/<txp:image_info type="id, ext" />">
        …
    …
…
~~~

Finally, we eliminate the explicit use of the HTML `<figcaption>` tags by using Textpattern’s presentational `wraptag` attribute in `image_info`. The attribute is one of several common presentational attributes of many Textpattern tags. It allows you to declare any HTML element you want, Textpattern style:

~~~ html
…
    …
        …
        <txp:image_info type="caption" wraptag="figcaption" />
    …
…
~~~

The resulting character count of this block of markup, which is functionally identical to the long-form version previously, is 149 characters, and that's even with the additional use of the wrapping `<txp:images>` tag. All-in-all shorter than the mixed markup notation, but not by a lot. It’s definitely longer than the full HTML version, but that's the price for having dynamic functionality.

## Further shortening with short-tags

Beginning with Textpattern 4.7.0, you can use [core short-tag structure](/tags/tag-basics/core-short-tags) too, which can further reduce volume, though maybe increase learning.

## Option, options… What do I do?

This doc might make it seem you must learn more advanced ways of working with Textpattern tags. That’s not true. There is no right or wrong way, only the way that makes it easier for you to understand. There’s nothing wrong with writing mixed markup if that’s what makes sense.

The natural tendency for people is to start with a mixed markup approach, then tighten up the their markup over time by leaning more on Textpattern tags. The result is often less markup overall. This can help offset the additional markup from plugin tags, when such functionality is used.

But that’s not a hard-fast given. Sometimes more characters are needed to get really sophisticated things done — real Textpattern wizardry. So take the integrated advantages with a grain of salt. Two grains if you use [short-tags](/tags/tag-basics/core-short-tags) too.

More important than character count is your understanding of the resulting markup — or that of your client's, if you're building a website and handing it over to a different administrator — regardless of how markup is written. As long as the markup separates content from static constructs and you (or the client) understands it, you're doing well.

In summary, mixed markup is generally easier for new Textpattern users to get up to speed with, until they've become more familiar with the scope of Textpattern tag functionality. Advanced users of Textpattern generally prefer the integrated notation because it saves character space. But it doesn't matter either way, as long as the markup is constructed correctly in relation to how Textpattern functions.

[Next: Tag escaping](/tags/learning/#tag-escaping)
