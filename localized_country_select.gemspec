# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "localized_country_select/version"

Gem::Specification.new do |gem|
  gem.authors       = ["karmi", "mlitwiniuk", "LIM SAS", "Damien MATHIEU", "Julien SANCHEZ", "Herv\303\251 GAUCHER", "RainerBlessing", "Brainsome-Developers"]
  gem.email         = [nil, "maciej@litwiniuk.net", nil, nil, nil, nil, nil, nil]
  gem.description   = %q{Localized "country_select" helper with Rake task for downloading locales from Unicode.org's CLDR}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/brainsome-de/localized_country_select"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split("\n") - %w[localized_country_select.gemspec Gemfile init.rb]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "brainsome_localized_country_select"
  gem.require_paths = ["lib"]
  gem.version       = LocalizedCountrySelect::VERSION
  gem.add_dependency "actionpack", ">= 3.0"
  gem.add_development_dependency "rspec", ">= 2.0.0"
end
