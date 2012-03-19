# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "capybara_rails"
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mat Schaffer"]
  s.date = "2012-02-24"
  s.description = "A binding for the built-in Rails integration testing that allows for calling the Capybara DSL, setting drivers, etc."
  s.email = ["mat@schaffer.me"]
  s.homepage = "http://mashion.new"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "Capybara integration testing for Rails & Test::Unit"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.2.1"])
      s.add_runtime_dependency(%q<capybara>, ["~> 1.1.2"])
      s.add_runtime_dependency(%q<capybara-firebug>, ["~> 1.1.0"])
      s.add_runtime_dependency(%q<database_cleaner>, ["~> 0.7.1"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.2.1"])
      s.add_dependency(%q<capybara>, ["~> 1.1.2"])
      s.add_dependency(%q<capybara-firebug>, ["~> 1.1.0"])
      s.add_dependency(%q<database_cleaner>, ["~> 0.7.1"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.2.1"])
    s.add_dependency(%q<capybara>, ["~> 1.1.2"])
    s.add_dependency(%q<capybara-firebug>, ["~> 1.1.0"])
    s.add_dependency(%q<database_cleaner>, ["~> 0.7.1"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
