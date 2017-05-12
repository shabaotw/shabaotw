# -*- encoding: utf-8 -*-
# stub: codemirror-rails 5.16.0 ruby lib

Gem::Specification.new do |s|
  s.name = "codemirror-rails"
  s.version = "5.16.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nathan Fixler"]
  s.date = "2016-07-04"
  s.description = "This gem provides CodeMirror assets for your Rails application."
  s.email = "nathan@fixler.org"
  s.homepage = "https://rubygems.org/gems/codemirror-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Use CodeMirror with Rails"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["< 6.0", ">= 3.0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
    else
      s.add_dependency(%q<railties>, ["< 6.0", ">= 3.0"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, ["< 6.0", ">= 3.0"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
  end
end
