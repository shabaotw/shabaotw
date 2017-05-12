# -*- encoding: utf-8 -*-
# stub: sshkit-interactive 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "sshkit-interactive"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Aidan Feldman"]
  s.date = "2016-09-15"
  s.email = ["aidan.feldman@gmail.com"]
  s.homepage = "https://github.com/afeld/sshkit-interactive"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "An SSHKit backend that allows you to execute interactive commands on your servers."

  s.installed_by_version = "2.4.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sshkit>, ["~> 1.9"])
      s.add_development_dependency(%q<bundler>, ["~> 1.13"])
      s.add_development_dependency(%q<rake>, ["~> 11.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.5"])
    else
      s.add_dependency(%q<sshkit>, ["~> 1.9"])
      s.add_dependency(%q<bundler>, ["~> 1.13"])
      s.add_dependency(%q<rake>, ["~> 11.0"])
      s.add_dependency(%q<rspec>, ["~> 3.5"])
    end
  else
    s.add_dependency(%q<sshkit>, ["~> 1.9"])
    s.add_dependency(%q<bundler>, ["~> 1.13"])
    s.add_dependency(%q<rake>, ["~> 11.0"])
    s.add_dependency(%q<rspec>, ["~> 3.5"])
  end
end
