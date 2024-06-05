require_relative "lib/rewindcss/version"

Gem::Specification.new do |spec|
  spec.name        = "rewindcss-rails"
  spec.version     = Rewindcss::VERSION
  spec.authors     = ["Haroon Ahmed"]
  spec.email       = ["haroon.ahmed25@gmail.com"]
  spec.homepage    = "https://github.com/hahmed/rewindcss-rails"
  spec.summary     = "CSS with Propshaft for Rails"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hahmed/rewindcss-rails"
  spec.metadata["changelog_uri"] = "https://github.com/hahmed/rewindcss-rails/changelog.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "railties", ">= 7.1.3.3"
  spec.add_dependency "deadfire", ">= 0.4.0"
end