$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "actionview/consistent_fallback/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "actionview-consistent_fallback"
  s.version     = Actionview::ConsistentFallback::VERSION
  s.authors     = ["yasaichi"]
  s.email       = ["yasaichi@users.noreply.github.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Actionview::ConsistentFallback."
  s.description = "TODO: Description of Actionview::ConsistentFallback."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.3"

  s.add_development_dependency "sqlite3"
end
