h1. What languages does Textpattern support? [todo]

Textpattern's administrative interface has been translated to more than 40 languages - see below for a list.

You're not limited to *writing* articles in those particular languages.  Textpattern uses UTF-8, so you can write articles and create page templates in any language represented by "Unicode":http://www.unicode.org/.  There's no magic trick to this: just make sure your browser supports UTF-8, and write away.  You can mix languages within an article - for example, quoting some French text in a German article, or using characters from other languages in an English article, as demonstrated in the list of languages below.

Textpattern doesn't directly support articles with multiple translations.  You can use *sections* or *categories* to organize a multilingual site.  If you use one section to represent each language, you'll be able to assign a specific template and/or CSS stylesheet to each, which might be helpful if some languages have specific layout requirements.  If you're already using sections for your site structure, create categories to represent languages.

To use a language with right-to-left text direction, such as Arabic, you'll need something like this in your CSS stylesheet:

bq. @body {@
@direction : rtl;@
@text-align: right;@
@}@

Textpattern translations as of 4.0.7:

* جزائري عربي
* Български
* Bosanski (Bosna i Hercegovina)
* Català
* &#268;e&#353;tina
* Dansk
* Deutsch
* &#917;&#955;&#955;&#951;&#957;&#953;&#954;ά
* English (Great Britain)
* English (United States)
* Espa&#241;ol
* Eesti
* Suomi
* Fran&#231;ais
* Galego
* עברית
* Hrvatski
* Magyar
* Bahasa Indonesia
* Íslenska
* Italiano
* 日本語
* 한국말 (대한민국)
* Latviešu
* Nederlands
* Norsk
* Polski
* Português (Brasil)
* Português (Portugal)
* Română
* Русский
* Sloven&#269;ina
* Srpski
* Српски
* Svenska
* ไทย
* Türkçe
* Українська
* Tiếng Việt (Việt Nam)
* 中文(简体)
* 中文(繁體)
