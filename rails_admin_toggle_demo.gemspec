$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_toggle_demo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_toggle_demo"
  s.version     = RailsAdminToggleDemo::VERSION
  s.authors     = ["Jim OLeary"]
  s.email       = ["jim.oleary@gmail.com"]
  s.homepage    = "https://github.com/jimoleary/rails_admin_toggle_demo"
  s.summary     = "Toggle the state demo of a demo."
  s.description = "Toggle a demo object."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.3"

end
