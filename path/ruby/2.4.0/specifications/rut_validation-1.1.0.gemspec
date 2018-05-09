# -*- encoding: utf-8 -*-
# stub: rut_validation 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rut_validation".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Christopher Fern\u00E1ndez".freeze]
  s.date = "2014-05-14"
  s.description = "RUT/RUN Chilean validator for Rails models".freeze
  s.email = ["fernandez.chl@gmail.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "RUT/RUN Chilean validator for Rails models".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 4.1"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14"])
      s.add_development_dependency(%q<activerecord>.freeze, ["~> 4.1"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.9"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 4.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.14"])
      s.add_dependency(%q<activerecord>.freeze, ["~> 4.1"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.9"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 4.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.14"])
    s.add_dependency(%q<activerecord>.freeze, ["~> 4.1"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.9"])
  end
end
