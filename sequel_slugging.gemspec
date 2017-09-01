# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sequel/plugins/slugging/version'

Gem::Specification.new do |spec|
  spec.name          = 'sequel_slugging'
  spec.version       = Sequel::Plugins::Slugging::VERSION
  spec.authors       = ["Chris Hanks", "Joakim Nylén"]
  spec.email         = ['christopher.m.hanks@gmail.com', 'me@jnylen.nu']

  spec.summary       = %q{This gem creates human-friendly string.}
  spec.homepage      = 'https://github.com/jnylen/sequel-slugging'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',        '~> 1.10'
  spec.add_development_dependency 'rake',           '~> 10.0'
  spec.add_development_dependency 'minitest',       '~> 5.8.1'
  spec.add_development_dependency 'minitest-hooks', '~> 1.2.0'

  spec.add_dependency 'sequel', '~> 4.0'
  spec.add_dependency 'babosa', '~> 1.0.2'
end