$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hashable_lecter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hashable_lecter"
  s.version     = HashableLecter::VERSION
  s.authors     = ["William Porter"]
  s.email       = ["wp@papercloud.com.au"]
  s.homepage    = "http://papercloud.com"
  s.summary     = "Maintains a hashed list of contacts and friends"
  s.description = "Essentially maintains a list of hashed contacts which can include emails and mobiles and stores them on the user"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency 'rails', '~> 4.0'
  s.add_dependency 'sidekiq'

  s.add_development_dependency 'fakeredis'
  s.add_development_dependency "pg"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'awesome_print'

end
