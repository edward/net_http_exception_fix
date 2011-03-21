# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "net_http_exception_fix/version"

Gem::Specification.new do |s|
  s.name        = "net_http_exception_fix"
  s.version     = NetHttpExceptionFix::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Edward Ocampo-Gooding", "Tammer Saleh"]
  s.email       = ["edward@edwardog.net"]
  s.homepage    = ""
  s.summary     = %q{Adds Net::HTTPBroken as a blanket exception you can rescue from when making Net::HTTP calls}
  s.description = %q{Slips Net::HTTPBroken into the inheritance ancestry of common exceptions Net::HTTP tends to raise.}
  s.rubyforge_project = "net_http_exception_fix"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
