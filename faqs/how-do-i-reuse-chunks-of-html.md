h1. How do I reuse chunks of HTML? [todo]

Create a new form containing the chunk of HTML. Give it a name (say, "myform"). Set the type to *Misc*.

Now, anytime you want to reuse that form, use @<txp:output_form form="myform" />@ to display it.

