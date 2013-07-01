# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano_shell_history/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano_shell_history"
  spec.version       = CapistranoShellHistory::VERSION
  spec.authors       = ["hitode909"]
  spec.email         = ["hitode909@gmail.com"]
  spec.description   = %q{capistrano_shell_history saves the history of Capistrano Shell.}
  spec.summary       = %q{history feature for cap shell}
  spec.homepage      = "https://github.com/hitode909/capistrano_shell_history"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'capistrano'
end
