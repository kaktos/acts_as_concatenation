# 
# 
# View helper for displaying checkbox group for instead a traditional
# multiple-selected selectbox
# 
#     checkbox_group(:company, :company_types)
# 
# the format of the multiple checked values in database is just like "a|b|c"
#
module ActsAsConcatenation
  module ViewHelper
    
    def translate_concatenation_value(keys, choices)
      result = []
      if keys && !keys.empty? && keys.is_a?(String)
        keys.split('|').each do |k|
          result << choices.rassoc(k.to_i).at(0) unless choices.rassoc(k.to_i).nil?
        end
      elsif keys && !keys.empty? && keys.is_a?(Array)
        keys.each do |k|
          result << choices.rassoc(k.to_i).at(0) unless choices.rassoc(k.to_i).nil?
        end
      end
      return result.join(', ')
    end
    
  end
end




module ActionView
  module Helpers

    module FormHelper

      def checkbox_group(object, method, choices, options = {})
        InstanceTag.new(object, method, self, options.delete(:object)).to_checkbox_group_tag(choices, options)
      end

    end

    class InstanceTag
      def to_checkbox_group_tag(choices, options)
        ulid = "#{tag_id}_ul"
        real_values = value(object)||[]
        
        tagname = tag_name + '[]'

        s = "<input type='hidden' name='#{tagname}' value=''style='display:none;'/>"
        s << "<ul id=#{ulid} class=selectbox-group>"
        choices.each do |o|
          if_checked = real_values.include?(o[1].to_s) ? "checked='checked'" : ""
          s << "<li>"
          s <<  "<input type='checkbox' name='#{tagname}' value='#{o[1]}' #{if_checked}/><label>#{o[0]}</label>"
          s << "</li>"
        end
        s << "</ul>"
      end
    end
    
    class FormBuilder
      def checkbox_group(method, choices, options = {})
        @template.checkbox_group(@object_name, method, choices, options.merge(:object => @object))
      end
    end

  end
end