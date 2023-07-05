# frozen_string_literal: true

require "hanami"

module Exalted
  class App < Hanami::App
    config.actions.format :html
  end
end
