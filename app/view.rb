# auto_register: false
# frozen_string_literal: true

require "hanami/view"

module Exalted
  class View < Hanami::View
    config.default_context = Contexts::AppContext.new
  end
end
