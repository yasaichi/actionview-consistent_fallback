# frozen_string_literal: true

require "actionview/consistent_fallback/version"

if defined?(Rails)
  require "actionview/consistent_fallback/railtie"
else
  require "actionview/consistent_fallback/template_rendering"
end
