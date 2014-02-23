module FoundationWysihtml5Rails
  module Rails
    class Engine < ::Rails::Engine
      initializer "FoundationWysihtml5Rails precompile hook", :group => :all do |app|
        app.config.assets.precompile += %w(foundation-wysihtml5.css foundation-wysihtml5.js foundation-wysihtml5/wysiwyg-color.css)
      end
    end
  end
end
