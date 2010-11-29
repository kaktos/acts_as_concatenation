# encoding: utf-8
require File.join(File.dirname(__FILE__), *%w[acts_as_concatenation base])
require File.join(File.dirname(__FILE__), *%w[acts_as_concatenation util])
require File.join(File.dirname(__FILE__), *%w[acts_as_concatenation helper])

require File.join(File.dirname(__FILE__), *%w[acts_as_concatenation railtie]) if defined?(::Rails::Railtie)



