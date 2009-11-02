# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{reach}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Kezhaya"]
  s.date = %q{2009-11-01}
  s.description = %q{Get address book contacts with an email and password.}
  s.email = %q{nick@whitepaperclip.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/reach.rb"]
  s.files = ["README.rdoc", "Rakefile", "lib/reach.rb", "Manifest", "reach.gemspec"]
  s.homepage = %q{http://github.com/nkezhaya/reach}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Reach", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{reach}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Get address book contacts with an email and password.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
