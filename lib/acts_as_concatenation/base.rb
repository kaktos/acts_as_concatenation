module ActsAsConcatenation
  module Base
    def self.included(base)
      base.send :extend, ClassMethods
    end
    
    module ClassMethods
      def acts_as_concatenation(*args)
        options = args.extract_options!
        separator = options.delete(:separator) || '|'
        args.each do |attr|
          class_eval do
            define_method "#{attr}=".to_sym do |a|
              if (!a.nil?) && (!a.empty?) && (a.respond_to? :join)
                a.delete_if {|x| x.nil? || x.strip.empty? } #for a fake checkbox in html page to crack empty selection
                self[attr] = a.join(separator)
              else
                self[attr] = a
              end
            end
    
            define_method attr do
              value = self[attr]
              value.nil? ? [] : value.split(separator)
            end
          end
        end
      end
    end
  end

end