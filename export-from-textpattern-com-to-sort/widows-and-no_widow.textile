h1. Widows and no_widow [todo]

h2. Background

bq.. For those who don't know, in typesetting, a widow is a single word on a line by itself at the end of a paragraph and is considered bad style.

...

The solution is to insert a non-breaking space between the last two words of your headline.

ShaunInman.com: "Widon't":http://www.shauninman.com/archive/2006/08/22/widont_wordpress_plugin

h2. Widow handling in Textpattern

Textpattern includes such a feature in the core to deal with widows. There is a preference, "Prevent widowed words in article titles?" and several tags, such as @recent_articles@, make use of this preference as the default value for the attribute, @no_widow@.