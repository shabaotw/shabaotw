# -*- encoding: utf-8 -*-
# stub: capistrano-rails-console 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-rails-console"
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Florian Schwab"]
  s.date = "2016-10-25"
  s.description = "Remote rails console for capistrano"
  s.email = ["me@ydkn.de"]
  s.homepage = "https://github.com/ydkn/capistrano-rails-console"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Remote rails console for capistrano"

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, ["< 4.0.0", ">= 3.5.0"])
      s.add_runtime_dependency(%q<sshkit-interactive>, ["~> 0.2.0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, ["< 4.0.0", ">= 3.5.0"])
      s.add_dependency(%q<sshkit-interactive>, ["~> 0.2.0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, ["< 4.0.0", ">= 3.5.0"])
    s.add_dependency(%q<sshkit-interactive>, ["~> 0.2.0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
