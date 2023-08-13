# frozen_string_literal: true

module Exalted
  class Routes < Hanami::Routes
    root to: "scopeless.home"
    get "/characters", to: "characters.index", as: :characters

    slice :api, at: "/api" do
      get "/characters", to: "characters.index"
    end

    slice :user_management, at: "/user_management" do
      get "/register", to: "users.new", as: :new_user
      post "/users", to: "users.create", as: :create_user
    end
  end
end
