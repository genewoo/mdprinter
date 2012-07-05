require "bundler/gem_tasks"
require "rake/testtask"
require './lib/mdprinter'

task :default do
    puts "abc"
end

task :selfdoc do
  puts MDprinter.h1 "mdprinter"
  puts 'An output formatter for MarkDown.'
  puts MDprinter.h1 "Why I write this?"
  puts 'I found markdown is pretty good at write API doc with format. I used it a lot from day to day. Instead of a fix format, I would like to write MD with a context.'

  puts MDprinter.italic "Italic" # em is the alias of italic
  puts MDprinter.bold "Bold" # strong is the alias of bold
  puts MDprinter.hr
  puts MDprinter.link "github", "http://www.github.com", "github"
  puts MDprinter.img "octocat", "https://a248.e.akamai.net/assets.github.com/images/modules/about_page/octocat.png?1338945074", "octocat"
  puts MDprinter.h1 "Header 1"
  puts MDprinter.b1 "BlockQuote 1"
  puts MDprinter.l1 "List 1"
  puts MDprinter.n1 "Number List 1"
  puts MDprinter.code("&nbsp;") + MDprinter.br
  puts MDprinter.code_block <<CODE
(1..10).each |i|
  puts i
end
CODE
end

Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/*_test.rb']
    t.verbose = true
end
