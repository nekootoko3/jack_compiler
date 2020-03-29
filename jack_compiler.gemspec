require_relative 'lib/jack_compiler/version'

Gem::Specification.new do |spec|
  spec.name          = "jack_compiler"
  spec.version       = JackCompiler::VERSION
  spec.authors       = ["nekootoko3"]
  spec.email         = ["miyako.kerria@gmail.com"]

  spec.summary       = "programming language Jack compiler"
  spec.description   = "Ruby implementation of programming language Jack compiler. https://www.nand2tetris.org/"
  spec.homepage      = "https://github.com/nekootoko3/jack_compiler"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nekootoko3/jack_compiler"
  spec.metadata["changelog_uri"] = "https://github.com/nekootoko3/vm_hack_translator/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
