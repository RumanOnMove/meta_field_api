require_relative "lib/meta_field_api/version"

Gem::Specification.new do |spec|
  spec.name        = "meta_field_api"
  spec.version     = MetaFieldApi::VERSION
  spec.authors     = ["RumanOnMove"]
  spec.email       = ["oruman@moveon.com.bd"]
  spec.summary     = "A Rails engine for managing meta fields"
  spec.description = "This Rails engine provides APIs for managing meta fields through a RESTful interface. It includes a migration for creating the necessary database table and a controller with methods for index, show, create, update, and delete."
  spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://github.com/RumanOnMove/meta_field_api"

  spec.metadata["source_code_uri"] = "https://github.com/RumanOnMove/meta_field_api"
  spec.metadata["changelog_uri"] = "https://github.com/RumanOnMove/meta_field_api/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4.3"
end
