ENV['RACK_ENV'] = 'test'

require 'minitest/pride'
require 'minitest/autorun'
require 'minitest/spec'

require File.dirname(__FILE__) + '/../lib/textile_editor_helper'
