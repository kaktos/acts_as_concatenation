# -*- encoding: utf-8 -*-
require 'date'
Gem::Specification.new do |gem|
  gem.name    = 'acts_as_concatenation'
  gem.version = '0.2.0'
  gem.date    = Date.today.to_s

  gem.summary = "an acts_as gem"
  gem.description = %q{Making multiple values save in a single column as a concatenation of string,including a ActiveRecord method and view helper}

  gem.authors  = ["Hao Chen"]
  gem.email    = 'haoinit@gmail.com'
  gem.homepage = 'http://github.com/shuhao/acts_as_concatenation'

  gem.add_dependency "rake"
  gem.add_dependency "activemodel", ">3.0.0"
  gem.add_dependency "actionpack", ">3.0.0"
  gem.add_development_dependency('rspec', [">= 2.0.0"])
  
  
  # ensure the gem is built out of versioned files
  gem.files = Dir['init.rb', 'rails/init.rb', 'lib/**/*', 'Rakefile', 'test/**/*', 'README*', '*LICENSE*']
end



