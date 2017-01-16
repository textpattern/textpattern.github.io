\\n[mininav_tutorials](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?id=&media=mininav_tutorials)

[warning](/home/www/zendstudio/dokuwiki/bin/lib/exe/fetch.php?id=&media=warning)

These instructions are specifically for version 1.0. If you're working
on any earlier version of Textpattern (e.g. rc1) and you want clean URLs
but are having trouble, then use the information available in the
[Textpattern Forum](http://forum.textpattern.com/) (it's spread all over,
but it's there); we are only concerned with v 1.0 here.

You do not have to use clean URLs, they are just better for your site
visitors if you do because they provide them with more orientation cues
while browsing (navigating) your site. If you do not care about site
usability then you can go with [Messy
URLs](/home/www/zendstudio/dokuwiki/bin/doku.php?id=glossary#messy_urls),
simply select the 'Messy' option in the [Article URL pattern](http://docs.textpattern.io/administration/preferences-panel#article-url-pattern) preference and forget about the rest of these instructions.

### The Process {#the-process .sectionedit1#the_process}

#### Step 1: Ensure You Have mod_rewrite Capabilities {#step_1ensure_you_have_mod_rewrite_capabilities}

Before you go any further, you should make sure you have
[Mod_Rewrite](/home/www/zendstudio/dokuwiki/bin/doku.php?id=glossary#mod_rewrite)
capabilities; if you don't, you will not be able to use clean URLs and
will have to settle for messy URLs. To check to see if you have
Mod_Rewrite abilities, do the following:

<ol>
<li>
Create a new file with a .php extension, name it anything you like (but
something easy to remember, because it's just temporary).

</li>
<li>
<p>
Add the following to the file (and nothing else)...

</p>
    <?php phpinfo(); ?>

</li>
<li>
Upload the file to your Web root, and run it in your browser (type the
URL to the file in the browser address bar and hit *Enter*).

</li>
</ol>
In the resulting file, you want to look in the “Apache” section, then
“Loaded Modules”, and then for something indicating *Mod_Rewrite*. If
you have Mod_Rewrite, then you can proceed beyond step 2. If not, then
finish step 2 as follows and call it good with your URLs.

**Note:** You will need to have Mod_Rewrite abilities even if you try
to have clean URLs using plugins like
[gbp_permanent_links](http://forum.textpattern.com/viewtopic.php?id=18918).

#### Step 2: Getting Ready in "Messy&quot; Mode {#step_2getting_ready_in_messy_mode}

It is assumed at this point that you have already set your site
preferences as you want them to be in the [Basic Preferences\] panel,
and you have probably even tried fixing any diagnostics issues in the
\[\[diagnostics](/home/www/zendstudio/dokuwiki/bin/doku.php?id=basic_preferences_panel_and_you_have_probably_even_tried_fixing_any_diagnostics_issues_in_the_diagnostics)
panel.

However, what you should do now is go back and make sure you have selected the 'Messy' option in the [Article URL pattern](http://docs.textpattern.io/administration/preferences-panel#article-url-pattern) section of the Preferences panel (this enables you to establish some site structure and troubleshoot diagnostics easier, which are the next things to take care of).

If you have not set your preferences and handled your diagnostics, make
sure you do so before continuing.

#### Step 3: Creating Some Content Structure to Work With {#step_3creating_some_content_structure_to_work_with}

If you do not already have some structure to your site
([Sections](/home/www/zendstudio/dokuwiki/bin/doku.php?id=glossary#sections),
[Pages](/home/www/zendstudio/dokuwiki/bin/doku.php?id=glossary#pages),
[Articles](/home/www/zendstudio/dokuwiki/bin/doku.php?id=glossary#articles),
etc.) with which to focus on clean URLs, then you will need to detour
from these instructions for a while to get your site structure/content
in place; without it, you will not have context to which you can see if
your clean URLs are working or not. You do not need to have your entire
site finished (though if you do, that's fine), but you should have at
least a couple of Sections setup with one or more Articles associated
with each section.

If you do have some structure and content to your site, then what you need to think about now is how you want your clean URLs to look, and again we refer you to the [Article URL pattern](http://docs.textpattern.io/administration/preferences-panel#article-url-pattern) options in the Preferences panel where you set this.

#### Step 4: Addressing Your .htaccess File mod_rewrite Rules {#step_4addressing_your_htaccess_file_mod_rewrite_rules}

With luck, clean URLs will just work with the .htaccess file distributed
with Textpattern.

One situation in which it may need to be tweaked is if you have not yet
transferred your DNS entry to point to the new server, so you are
accessing your site with a URL such as
&lt;_yamdwe_nowiki&gt;0&lt;/_yamdwe_nowiki&gt;.

In this case you would add the following RewriteBase rule to the
.htaccess file:

    RewriteBase /~mysite

Note that there should be no trailing slash on the directory name. This
line goes immediately after

    RewriteEngine On

.

Don't forget to remove it before you get the DNS entry updated.

#### If Nothing Works {#if_nothing_works}

If you don't get Clean URLs to work the first time around, double-check
everything you can think of. If that still does not work, then remember
this...

“*Most likely your hosting company has done something to disable or
limit &lt;code&gt;.htaccess&lt;/code&gt;. We...\[Textpattern Developers\]...have
done our best to make clean URLs work on as many hosts as possible;
unfortunately, there are many ways to configure Apache such that
&lt;code&gt;.htaccess&lt;/code&gt; needs to be specially customized for
that particular server, or perhaps won't work at all.*” (from zem,
[right
here](http://forum.textpattern.com/viewtopic.php?pid=68642#p68642.))

In short, there is no guarantee that clean URLs are going to work.
