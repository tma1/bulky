$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bulky/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bulky"
  s.version     = Bulky::VERSION
  s.authors     = ["Adam Hunter"]
  s.email       = ["adamhunter@me.com"]
  s.homepage    = "https://github.com/tma1/bulky"
  s.summary     = "Bulk update your ActiveRecord models."
  s.description = "Bulky allows you bulk update your ActiveRecord models.  It will enqueue the bulk update and run it through the model's lifecycle to ensure validation are performed. Bulky also provides logging of bulk update success or failure."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails",  "~> 4.1"
  s.add_dependency "resque", "~> 1.25"
  s.add_dependency "haml",   ">= 4.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "mysql2",           "~> 0.3.16"
  s.add_development_dependency "rspec-rails",      "~> 2.14.2"
  s.add_development_dependency "capybara",         "~> 2.2.1"
  s.add_development_dependency "database_cleaner", ">= 1.2.0"
end
