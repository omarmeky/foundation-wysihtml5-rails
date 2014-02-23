require "rails"
require "foundation-wysihtml5-rails/version"

module FoundationWysihtml5Rails
  module Rails
    if ::Rails.version.to_s < "3.1"
      require "foundation-wysihtml5-rails/railtie"
    else
      require "foundation-wysihtml5-rails/engine"
    end
  end
end
