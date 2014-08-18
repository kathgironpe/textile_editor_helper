# -*- encoding: utf-8 -*-
require File.expand_path('../lib/textile_editor_helper/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Katherine Pe']
  gem.email         = ['bridgeutopia@gmail.com']
  gem.description   = %q{Textile Editor Helper is a gem for Ruby on Rails 4.1.4 > to add a Textile toolbar above textareas.}
  gem.summary       = %q{Textile Editor Helper}
  gem.homepage      = 'https://github.com/katgironpe/textile_editor_helper'

  gem.executables   = Dir["bin/*"].map { |f| File.basename(f) }
  gem.files = `git ls-files`.strip.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'textile_editor_helper'
  gem.require_paths = ['lib']
  gem.version       = TextileEditorHelper::VERSION

  gem.add_runtime_dependency 'thor'
end
