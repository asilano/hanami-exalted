# frozen_string_literal: true

require "hanami"

module Exalted
  class App < Hanami::App
    config.actions.format :all

    config.shared_app_component_keys << "repositories.characters"

    config.actions.sessions = :cookie, {
      key: "exalted.session",
      secret: settings.session_secret,
      expire_after: 60*60*24*365
    }
  end
end
