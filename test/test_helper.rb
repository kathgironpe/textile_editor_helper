ENV['RACK_ENV'] = 'test'

require 'minitest/pride'
require 'minitest/autorun'
require 'coveralls'
require File.dirname(__FILE__) + '/../lib/textile_editor_helper'

Coveralls.wear!
