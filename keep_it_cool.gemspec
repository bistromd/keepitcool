# -*- encoding: utf-8 -*-

=begin
#Keep it Cool API
=end

$:.push File.expand_path("../lib", __FILE__)
require "keep_it_cool/version"

Gem::Specification.new do |s|
  s.name        = "keep_it_cool"
  s.version     = KeepItCool::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["BistroMD"]
  s.email       = ["eric.carestia@marleyspoon.com"]
  s.homepage    = ""
  s.summary     = "Keep it Cool API Ruby Gem"
  s.description = "Keep it Cool API Interface, written in Ruby."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 3.0"
  s.metadata = {}

  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files = Dir[
    "lib/**/*.rb",
    "README.md",
    "LICENSE*"
  ]

  s.test_files = Dir["spec/**/*_spec.rb"]
  s.executables   = []
  s.require_paths = ["lib"]
end
