# frozen_string_literal: true

module Exalted
  class Routes < Hanami::Routes
    root to: "scopeless.home"
    get "/characters", to: "characters.index", as: :characters

    slice :api, at: "/api" do
      get "/characters", to: "characters.index"
    end
  end
end
