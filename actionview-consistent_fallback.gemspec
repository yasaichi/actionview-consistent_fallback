$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "actionview/consistent_fallback/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "actionview-consistent_fallback"
  s.version     = ActionView::ConsistentFallback::VERSION
  s.authors     = ["yasaichi"]
  s.email       = ["yasaichi@users.noreply.github.com"]
  s.homepage    = "https://github.com/yasaichi/actionview-consistent_fallback"
  s.summary     = "Consistent fallback to the default layout and partials for Action View"
  s.description = "This Action View plugin allows you to fallback to the default layout and partials when there is no variant template corresponding to each request variant."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "actionview", ">= 4.1.0", "< 6"

  s.add_development_dependency "actionpack"
  s.add_development_dependency "appraisal"
  s.add_development_dependency "reek"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rubocop"
  s.add_development_dependency "simplecov"
end
