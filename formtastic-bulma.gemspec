require File.expand_path('../lib/formtastic-bulma/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "formtastic-bulma"
  s.version = FormtasticBulma::VERSION
  s.authors = ["David Christiansen"]
  s.email = ["dave@trooptrack.com"]
  s.homepage = "http://github.com/TroopTrack/formtastic-bulma"
  s.description = "Formtastic form builder to generate bulma.io-friendly markup."
  s.summary = "Formtastic form builder to generate bulma.io-friendly markup."
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = Dir[
    ".document",
    "LICENSE.txt",
    "README.md",
    "VERSION",
    "lib/**/*.rb",
    "vendor/assets/stylesheets/formtastic-bulma.css"
  ]
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"

  s.add_dependency('formtastic', [">= 3.0"])

  s.add_development_dependency('rake')
  s.add_development_dependency('tzinfo')
  s.add_development_dependency('bundler')
  s.add_development_dependency('nokogiri', ["< 1.6.0"])
  s.add_development_dependency('rspec_tag_matchers', ["~> 1.0"])
  s.add_development_dependency('ammeter', ["~> 0.2"])
  s.add_development_dependency('actionpack', ["~> 3.2"])
end
