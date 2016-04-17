#!/usr/bin/env ruby

lib_path = File.expand_path('../../lib', __FILE__)

#require "bundler/setup"
require lib_path + '/slack/otonokizaka'

LoveLive::Muse.start