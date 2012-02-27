# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mock_mailer/version"

Gem::Specification.new do |s|
  s.name        = "mock_mailer"
  s.version     = MockMailer::VERSION
  s.authors     = ["mikegee"]
  s.email       = ["michaelpgee@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A mock of ActionMailer::Base}
  s.description = %q{This gem allows you to mock out your mailers, and set expectations on the messages that should be created and delivered.}

  s.rubyforge_project = "mock_mailer"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_runtime_dependency "rspec-mocks"
end
