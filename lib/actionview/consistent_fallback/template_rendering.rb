# frozen_string_literal: true

require "action_view"

module ActionView
  module ConsistentFallback
    module TemplateRendering
      def render_template(template, layout_name = nil, locals = nil)
        if template.variants == [nil] && !@lookup_context.variants.empty?
          @lookup_context.variants = []
        end

        super
      end
    end
  end
end

ActionView::TemplateRenderer.prepend(ActionView::ConsistentFallback::TemplateRendering)
