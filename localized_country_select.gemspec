# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "localized_country_select/version"

Gem::Specification.new do |spec|
  spec.name          = "brainsome_localized_country_select"
  spec.version       = LocalizedCountrySelect::VERSION
  spec.authors       = ["karmi", "mlitwiniuk", "LIM SAS", "Damien MATHIEU", "Julien SANCHEZ", "Herv\303\251 GAUCHER", "RainerBlessing", "Brainsome-Developers"]
  spec.email         = [nil, "maciej@litwiniuk.net", nil, nil, nil, nil, nil, nil]
  spec.description   = %q{Localized "country_select" helper with Rake task for downloading locales from Unicode.org's CLDR}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/brainsome-de/localized_country_select"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\x0") - %w[localized_country_select.gemspec Gemfile init.rb]
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", ">= 2.0.0" #, "< 3.0"

  spec.add_dependency "actionpack", ">= 3.0" #, "< 5.0"
end
