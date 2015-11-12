# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rome/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "rome-rails"
  spec.version       = Rome::Rails::VERSION
  spec.authors       = ["Sean Collins"]
  spec.email         = ["sean@cllns.com"]

  spec.summary       = %q{The rome customizable date and time picker, for Rails}
  spec.description   =
    "Rome is a customizeable javascript date and time picker. "\
    "This gem allows for its easy inclusion into the rails asset pipeline."
  spec.homepage      = "http://github.com/cllns"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
