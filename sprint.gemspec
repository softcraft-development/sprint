# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sprint}
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Craig Walker"]
  s.date = %q{2009-11-11}
  s.description = %q{Make dealing with execution of external processes easier.}
  s.email = ["craig@softcraft.ca"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/sprint.rb", "script/console", "script/destroy", "script/generate", "test/test_helper.rb", "test/test_sprint.rb"]
  s.homepage = %q{http://github.com/softcraft-development/sprint}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{sprint}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Make dealing with execution of external processes easier.}
  s.test_files = ["test/test_helper.rb", "test/test_sprint.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
      s.add_development_dependency 'thoughtbot-shoulda', ">2.10.2"
    else
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
