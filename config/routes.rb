# frozen_string_literal: true

module Exalted
  class Routes < Hanami::Routes
    root { "Hello from Hanami" }
    get "/characters", to: "characters.index"
    get "/api/characters", to: "api.characters.index"
  end
end
