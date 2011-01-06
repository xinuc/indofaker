# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{indofaker}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nugroho Herucahyono"]
  s.date = %q{2011-01-06}
  s.description = %q{Indonesian Faker, cause "good" fakes are important here :).
see
http://faker.rubyforge.org/
http://www.rubyinside.com/faker-quick-fake-data-generation-in-ruby-665.html
http://railscasts.com/episodes/126-populating-a-databasehttp://faker.rubyforge.org/}
  s.email = ["xinuc@xinuc.org"]
  s.extra_rdoc_files = ["README.txt"]
  s.files = ["README.txt", "lib/indofaker.rb", "lib/indofaker/address.rb", "lib/indofaker/internet.rb", "lib/indofaker/name.rb", "lib/indofaker/phone_number.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/xinuc/indofaker}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{indofaker}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Indonesian Faker, cause "good" fakes are important here :)}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faker>, ["= 0.3.1"])
    else
      s.add_dependency(%q<faker>, ["= 0.3.1"])
    end
  else
    s.add_dependency(%q<faker>, ["= 0.3.1"])
  end
end
