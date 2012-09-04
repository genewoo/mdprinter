mdprinter
=========

An output formatter for MarkDown.

# Why I write this?

I found markdown is pretty good at write API doc with format. I used it a lot from day to day. Instead of a fix format, I would like to write MD with a context.

# Usage

    require 'mdprinter'
    puts MDprinter.italic "Italic" # em is the alias of italic
    puts MDprinter.bold "Bold" # strong is the alias of bold
    puts MDprinter.hr
    puts MDprinter.br
    puts MDprinter.link "github", "http://www.github.com", "github"
    puts MDprinter.img "octocat", "https://a248.e.akamai.net/assets.github.com/images/modules/about_page/octocat.png?1338945074", "octocat"
    puts MDprinter.h1 "Header 1"
    puts MDprinter.b1 "BlockQuote 1"
    puts MDprinter.l1 "List 1"
    puts MDprinter.n1 "Number List 1"
    puts MDprinter.code "&nbsp;"
    puts MDprinter.code_block <<CODE
    (1..10).each |i|
       puts i
    end
    CODE

# Advance Usage

## Global Indent on Header

If you had already written a program which use mdprinter to print out a document, and try to combine mutliple output together as single document, than you might meet problem with initial indent. The old program is using __H1__ for each section head, which is not a good idea for a bigger document. So you need another global indent to make all the out put of your code increase indent by a number. Here came a choice, you can use __MDprinter.global_indent__.

    MDprinter.global_indent = 1
    MDprinter.h1 "abc" # it will return "## abc ##" instead of "# abc #"



TBD
