$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "actionview/consistent_fallback/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "actionview-consistent_fallback"
  s.version     = Actionview::ConsistentFallback::VERSION
  s.authors     = ["yasaichi"]
  s.email       = ["yasaichi@users.noreply.github.com"]
  s.homepage    = "https://github.com/yasaichi/actionview-consistent_fallback"
  s.summary     = "Consistent fallback to the default layout and partials for non-specialized templates"
  s.description = "This ActionView plugin allows you to fallback to the default layout and partials when a variant doesn't have a specialized template."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.3"

  s.add_development_dependency "rubocop"
  s.add_development_dependency "sqlite3"
end
