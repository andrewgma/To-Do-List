# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "capybara-firebug"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Firebaugh"]
  s.date = "2012-02-10"
  s.description = "Provides a dead-simple way to run scenarios with Firebug\nenabled under the selenium driver."
  s.email = ["john.firebaugh@gmail.com"]
  s.homepage = "https://github.com/jfirebaugh/capybara-firebug"
  s.require_paths = ["lib"]
  s.rubyforge_project = "capybara-firebug"
  s.rubygems_version = "1.8.15"
  s.summary = "Run selenium with Firebug enabled"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capybara>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 0.10.0"])
    else
      s.add_dependency(%q<capybara>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 2.0"])
      s.add_dependency(%q<cucumber>, ["~> 0.10.0"])
    end
  else
    s.add_dependency(%q<capybara>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 2.0"])
    s.add_dependency(%q<cucumber>, ["~> 0.10.0"])
  end
end
