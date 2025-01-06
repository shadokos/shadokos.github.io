# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "simple-wiki"
  spec.version       = "0.1.0"
  spec.authors       = ["riblanc"]
  spec.email         = ["riblanc@proton.me"]

  spec.summary       = "A simple wiki theme for Jekyll."
  spec.homepage      = "https://github.com/riblanc/simple-wiki"
  spec.license       = "MIT"

  spec.files = Dir["assets/**/*", 
                   "_layouts/**/*", 
                   "_includes/**/*", 
                   "_sass/**/*", 
                   "LICENSE", 
                   "README.md", 
                   "_config.yml",
                   "wiki/**/*",
                   "*.gemspec"]

  spec.add_runtime_dependency "jekyll", "~> 4.3"
end
