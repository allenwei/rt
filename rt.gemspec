# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rt/version"

Gem::Specification.new do |s|
  s.name        = "rt"
  s.version     = Rt::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Allen Wei"]
  s.email       = ["digruby@gmail.com"]
  s.homepage    = "https://github.com/allenwei/rt"
  s.summary     = %q{unit test runner}
  s.description = %q{unit test runner, support run tests by regular expression, line num and printing test result in different fomatter }

  s.rubyforge_project = "rt"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  
  s.add_development_dependency 'cucumber', "~> 0.10.0"
  s.add_development_dependency 'aruba', "~> 0.3.2"
  s.add_development_dependency 'activesupport', "~> 2.3.8"
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'ruby-debug'
  s.add_development_dependency 'rr'

end
