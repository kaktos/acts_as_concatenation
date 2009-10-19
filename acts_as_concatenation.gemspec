# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_concatenation}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hao Chen"]
  s.date = %q{2009-10-19}
  s.description = %q{Making multiple values save in a single column as a concatenation of string,including a ActiveRecord method and view helper}
  s.email = %q{haoinit@gmail.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "MIT-LICENSE",
     "README",
     "Rakefile",
     "VERSION",
     "acts_as_concatenation.gemspec",
     "init.rb",
     "install.rb",
     "lib/acts_as_concatenation.rb",
     "lib/acts_as_concatenation/view_helper.rb",
     "rails/init.rb",
     "tasks/acts_as_concatenation_tasks.rake",
     "test/acts_as_concatenation_test.rb",
     "test/test_helper.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/hchen/acts_as_concatenation}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Making multiple values save in a single column as a concatenation of string}
  s.test_files = [
    "test/acts_as_concatenation_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

