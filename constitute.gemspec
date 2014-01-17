# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'constitute/version'

Gem::Specification.new do |spec|
  spec.name          = "constitute"
  spec.version       = Constitute::VERSION
  spec.authors       = ["Dmitri Zagidulin"]
  spec.email         = ["dzagidulin@gmail.com"]
  spec.description   = %q{A Ruby ODM (Object Document Mapper) for key-value stores}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/dmitrizagidulin/constitute"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 4.2"
  spec.add_development_dependency "minitest-spec-context"
end
