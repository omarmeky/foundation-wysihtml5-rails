# -*- encoding: utf-8 -*-
require File.expand_path('../lib/foundation-wysihtml5-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Josemar Luedke', 'Gonzalo Rodríguez-Baltanás Díaz']
  gem.email         = ['josemarluedke@gmail.com', 'siotopo@gmail.com']
  gem.description   = %q{A wysiwyg text editor for Zurb Foundation}
  gem.homepage      = 'https://github.com/josemarluedke/foundation-wysihtml5-rails'
  gem.summary       = gem.description
  gem.license       = 'MIT'

  gem.name          = 'foundation-wysihtml5-rails'
  gem.require_paths = ['lib']
  gem.files         = `git ls-files`.split($/)
  gem.version       = FoundationWysihtml5Rails::Rails::VERSION

  gem.add_dependency 'railties', '>= 3.0'
  gem.add_development_dependency 'bundler', '>= 1.0'
  gem.add_development_dependency 'rake'
end
