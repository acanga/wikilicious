require File.expand_path("../boot", __FILE__)

require "rails/all"

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Wikilicious
  class Application < Rails::Application
    config.encoding = "utf-8"

    config.filter_parameters += [:password, :password_confirmation]
    config.active_record.whitelist_attributes = true
    config.active_support.escape_html_entities_in_json = true

    config.assets.precompile += %w(ie.css)
    config.assets.enabled = true
    config.assets.version = "1.0"
  end
end