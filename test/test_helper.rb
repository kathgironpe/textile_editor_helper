ENV['RACK_ENV'] = 'test'
ENV['RAILS_ENV'] = ENV['RACK_ENV']

require 'rails'
require 'minitest/pride'
require 'minitest/autorun'
require 'coveralls'
require File.dirname(__FILE__) + '/../lib/textile_editor_helper'

Coveralls.wear!
