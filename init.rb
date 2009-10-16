# Require the plugin code
require 'acts_as_concatenation'

ActiveRecord::Base.send :include, ActsAsConcatenation

if defined?(ActionView)
  require 'acts_as_concatenation/view_helper'
  ActionView::Base.send :include, ActsAsConcatenation::ViewHelper
end
