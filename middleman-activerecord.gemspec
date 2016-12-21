# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-activerecord"
  s.version     = "0.0.2"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Daniel Pehrson"]
  s.email       = ["dpehrson@qurve.com"]
  s.homepage    = "http://www.danielpehrson.com/"
  s.summary     = %q{Provides ActiveRecord support to middleman applications}
  # s.description = %q{A longer description of your extension}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency('middleman-core', ['>= 4.1.0'])
  s.add_runtime_dependency('activerecord', ['~> 5.0.0'])
  s.add_development_dependency 'appraisal'

  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
