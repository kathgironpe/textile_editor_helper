ENV['RACK_ENV'] = 'test'

require 'rails'
require 'minitest/pride'
require 'minitest/autorun'
require 'coveralls'
require File.expand_path('./tmp/rails_app/config/environment')
require File.dirname(__FILE__) + '/../lib/textile_editor_helper'
Coveralls.wear!
