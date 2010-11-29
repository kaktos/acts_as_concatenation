# encoding: utf-8
require 'acts_as_concatenation'
require 'acts_as_concatenation/helper'


ActiveRecord::Base.send :include, ActsAsConcatenation::Base
ActionView::Base.send :include, ActsAsConcatenation::ViewHelper

