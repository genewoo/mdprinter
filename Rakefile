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

end

Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/*_test.rb']
    t.verbose = true
end
