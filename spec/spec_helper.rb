$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

# This module is only used to check the environment is currently a testing env
module SpecHelper
end

# load variables from .env file
open('.env', 'r').readlines.each do |l|
  kv = l.split('=')
  ENV[kv[0]] = kv[1]
end

require 'fastlane' # to import the Action super class
require 'fastlane/plugin/mobile_center' # import the actual plugin

Fastlane.load_actions # load other actions (in case your plugin calls other actions or shared values)
