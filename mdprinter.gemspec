# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mdprinter/version"

Gem::Specification.new do |s|
  s.name        = "mdprinter"
  s.version     = Mdprinter::VERSION
  s.authors     = ["Gene Wu"]
  s.email       = ["gene_wu@hotmail.com"]
  s.homepage    = "http://genewoo.github.com/mdprinter"
  s.summary     = %q{Programtic output in markdown syntax}
  s.description = %q{Programtic output in markdown syntax}

  s.rubyforge_project = "mdprinter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
