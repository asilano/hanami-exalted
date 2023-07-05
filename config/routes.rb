# frozen_string_literal: true

module Exalted
  class Routes < Hanami::Routes
    root { "Hello from Hanami" }
    get "/characters", to: "characters.index"

    slice :api, at: "/api" do
      get "/characters", to: "characters.index"
    end
  end
end
