# frozen_string_literal: true

require "active_support/lazy_load_hooks"
require "rails/railtie"

module ActionView
  module ConsistentFallback
    class Railtie < ::Rails::Railtie
      initializer "action_view.consistent_fallback" do
        ::ActiveSupport.on_load(:action_view) do
          require "actionview/consistent_fallback/template_rendering"
        end
      end
    end
  end
end
