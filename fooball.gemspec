lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "lib/fooball/version"

Gem::Specification.new do |spec|
  spec.name          = "fooball"
  spec.version       = Fooball::VERSION
  spec.authors       = ["Diep So Hung"]
  spec.email         = ["diepsohung@gmail.com"]

  spec.summary       = "FooBall provides a CLI to play with football results"
  spec.description   = "FooBall provides a CLI to play with football results"
  spec.homepage      = "https://github.com/diepsohung/fooball"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/diepsohung/fooball"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |filename| File.basename(filename) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor", "~> 1.0.1"
  spec.add_runtime_dependency "tty-prompt", "~> 0.22"
  spec.add_dependency "httparty", "~> 0.17.3"
  spec.add_dependency "terminal-table", "~> 1.8"
  spec.add_development_dependency "rubocop", "~> 0.81"
end
