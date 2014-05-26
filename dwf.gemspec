# -*- coding: utf-8; mode: ruby -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dwf/version'

Gem::Specification.new do |spec|
  spec.name = 'dwf'
  spec.version = Dwf::VERSION
  spec.authors = ['Tom Vaughan']
  spec.email = ['tvaughan@tocino.cl']
  spec.homepage = 'https://github.com/tvaughan/dwf'
  spec.license = 'MIT'

  spec.summary = 'Daily work-flow, reborn.'
  spec.description = <<-EOF
    Daily work-flow, reborn.
    Longer description.
  EOF

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency('bundler', '~> 1.6')
  spec.add_development_dependency('rake', '= 10.3.2')
  spec.add_development_dependency('rspec', '= 2.14.1')
  spec.add_development_dependency('simplecov', '= 0.8.2')
  spec.add_development_dependency('rubocop', '= 0.22.0')
end
