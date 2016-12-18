# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'star_party/version'

Gem::Specification.new do |spec|
  spec.name          = "star_party"
  spec.version       = StarParty::VERSION
  spec.authors       = ["Andrew Vida"]
  spec.email         = ["andrewjvida@gmail.com"]

  spec.summary       = %q{Find prices for your favorite products from leading retailers.}
  spec.description   = %q{Find prices for your favorite products from leading retailers.}
  spec.homepage      = "http://github.com/andrewvida/star-party"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "capybara", "~> 2.7"
  spec.add_dependency "selenium-webdriver", "~> 2.53"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
