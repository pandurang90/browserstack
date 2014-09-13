# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'browserstack/version'

Gem::Specification.new do |spec|
  spec.name          = "browserstack"
  spec.version       = Browserstack::VERSION
  spec.authors       = ["Pandurang"]
  spec.email         = ["pandurang.plw@gmail.com"]
  spec.summary       = %q{browserstack}
  spec.description   = %q{ruby wrapper for browserstack}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "net/http"
  spec.add_development_dependency "json"
  spec.add_development_dependency "uri"
end
