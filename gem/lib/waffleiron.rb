require 'sass'

module Waffleiron
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      require 'waffleiron/engine'
    end

    module Rails
      class Railtie < ::Rails::Railtie
      end
    end
  else
    Sass.load_paths << File.expand_path("../../app/assets/stylesheets", __FILE__)
  end
end
