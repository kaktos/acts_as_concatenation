# encoding: utf-8

require 'acts_as_concatenation'
require 'acts_as_concatenation/helper'
require 'rails'

module ActsAsConcatenation
  class Railtie < Rails::Railtie
        config.before_initialize do
          ActiveSupport.on_load :active_record do
            ActiveRecord::Base.send :include, ActsAsConcatenation::Base
          end

          ActiveSupport.on_load :action_view do
            ActionView::Base.send :include, ActsAsConcatenation::ViewHelper
          end
        end	
	
  end
end
