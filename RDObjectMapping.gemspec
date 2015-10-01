# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'RDObjectMapping/version'

Gem::Specification.new do |spec|
  spec.name          = "RDObjectMapping"
  spec.version       = RDObjectMapping::VERSION
  spec.authors       = ["simplydesigner"]
  spec.email         = ["simplydesigner@jd.ru"]

  spec.summary       = "Mapping object"
  spec.description   = "Mapping object from and to json "
  spec.homepage      = "https://github.com/justdevelopers/RDObjectMapping"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "json", "~> 1.8"
end
