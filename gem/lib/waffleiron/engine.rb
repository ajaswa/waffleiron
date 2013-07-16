require 'sass'

module Waffleiron
  Sass.load_paths << File.expand_path('../../app/assets/stylesheets/', __FILE__)
end
