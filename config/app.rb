# frozen_string_literal: true

require "hanami"

module Exalted
  class App < Hanami::App
    config.actions.format :html

    config.shared_app_component_keys << "persistence.rom"
  end
end
