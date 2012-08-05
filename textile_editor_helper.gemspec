# -*- encoding: utf-8 -*-
require File.expand_path('../lib/textile_editor_helper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Katherine']
  gem.email         = ['info@bridgeutopiaweb.com']
  gem.description   = %q{Textile Editor Helper is a gem for Ruby on Rails 3.2 > to add a Textile toolbar above textareas.}
  gem.summary       = %q{Textile Editor Helper}
  gem.homepage      = 'https://github.com/bridgeutopia/textile_editor_helper'

  gem.executables   = Dir["bin/*"].map { |f| File.basename(f) }
  gem.files = `git ls-files`.strip.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'textile_editor_helper'
  gem.require_paths = ['lib']
  gem.version       = TextileEditorHelper::VERSION

  #dependencies
  gem.add_development_dependency 'rails', '>= 3.2.0'
  gem.add_development_dependency 'simple_form', '>= 2.0.2'
  gem.add_development_dependency 'thor'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'cucumber', '>=1.1.4'
  gem.add_development_dependency 'rspec', '>= 2.0.0'
end
