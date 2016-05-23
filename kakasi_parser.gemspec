# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kakasi_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "kakasi_parser"
  spec.version       = KakasiParser::VERSION
  spec.authors       = ["yama@muteki"]
  spec.email         = ["yama@muteki.com"]

  spec.summary       = %q{Return all readings as array from result string of Kakasi with -p option.}
  spec.description   = %q{Return all readings as array from result string of Kakasi with -p option.}
  spec.homepage      = "https://github.com/yamamuteki/kakasi_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "coveralls"

  spec.add_dependency "kakasi", ">= 1.0"
end
