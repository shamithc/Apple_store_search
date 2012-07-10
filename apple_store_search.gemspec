# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "apple_store_search/version"

Gem::Specification.new do |s|
  s.name        = "apple_store_search"
  s.version     = AppleStoreSearch::VERSION
  s.authors     = "Shamith c"
  s.email       = "shamithc@gmail.com"
  s.homepage    = "http://shamith.com/"
  s.summary     = %q{This is for searching in app in apple store}
  s.description = %q{Exited to watch its progress}

  s.rubyforge_project = "apple_store_search"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  #s.add_development_dependency "rspec"
  s.add_dependency('curl')
  s.add_dependency('json')
  #s.add_runtime_dependency('curl', '0.0.9') 
  #s.add_runtime_dependency('json', '1.7.3')
end
