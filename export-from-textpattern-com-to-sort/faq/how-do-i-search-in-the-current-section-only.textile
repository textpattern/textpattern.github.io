h1. How do I search in the current section only [todo]

You can easily display search results for a given section only. All you need to do is to add a couple of custom attributes to the @<txp:search_input />@ and @<txp:article />@ tags on the template page for that section.

# First, you need to point the search input to the current section page, by adding to the @<txp:search_input />@ the attribute *section* with the current section name as the value.
# Then, in order to display the search results only for that section, you have to add *searchall="0"* as attribute for the @<txp:article />@ tag on that page.