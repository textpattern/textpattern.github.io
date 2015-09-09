h1. Troubleshooting Feed Issues [todo]

h2. The Basics

* Use "the feed validator":http://feedvalidator.org/ if you suspect a feed problem.  If the feed validator indicates that your feed is invalid, then please post its messages *verbatim* in your support request.  Also, the URL you submit to the feed validator is your *feed URL*, not your *homepage URL*--the feed validator does not auto-detect feeds.
* Post your Diagnostics results.
* Post a feed URL. If there's a specific feed which is malfunctioning, post its URL if at all possible.  If you're having problems on an intranet server, can you replicate the problem on a public server? It will help those who are troubleshooting to be able to see what's really going on.

h2. The feed validator reports I have a missing @description@ element.

Make sure there's something entered in the "Site slogan" field in your Preferences.

h2. My feeds are empty or don't contain the right articles.

Check the "Syndicate?" option, found on the "Sections" tab.  Sections that have the "Syndicate?" option turned off *will not* show up in your feeds.

h2. Safari RSS

Safari RSS does not appear to output a single useful error message. If Safari RSS is having problems with your feed, try the feed in another feed reader first, then try "the feed validator":http://feedvalidator.org/. Most often, the feed is invalid, but Safari's error message doesn't leave any clue as to the nature of the problem with the feed. Also, Safari will automatically change the scheme from 'http' to 'feed'. That's fine, within Safari, but remember that everywhere else your feed URLs still need to begin with 'http'.

h2. My browser tries to download the feed when I click the feed's link.

Depending upon your browser, this is the correct behaviour. More likely than not, your browser is not capable of displaying XML. As the feeds are sent with the *correct* MIME type, your browser offers to download the file, rather than just displaying the raw content.This is the correct behaviour, and your feed should work in a proper feed aggregator.

h2. How can I setup feed autodetection?

If you want feed aggregators and other tools to be able to autodetect your feeds, you'll need to add tags like the following to the @<head>@ of your main page:

bc. <txp:feed_link format="link" flavor="rss" />

bc. <txp:feed_link format="link" flavor="atom" />
