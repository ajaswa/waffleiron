# -*- encoding: utf-8 -*-
require File.expand_path('../lib/waffleiron/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Jaswa"]
  gem.email         = ["ajaswa@gmail.com"]
  gem.description   = %q{}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = ['app/assets/stylesheets/_waffleiron.scss', 'lib/waffleiron/version.rb', 'lib/waffleiron/engine.rb', 'lib/waffleiron.rb']
  gem.name          = "waffleiron"
  gem.require_paths = ["lib"]
  gem.version       = Waffleiron::VERSION
  gem.rubyforge_project = "nowarning"

  gem.add_dependency 'rails', '> 3.1.0'
  gem.add_dependency 'sass', '~> 3.2.0'

  gem.add_development_dependency 'rake'
end

