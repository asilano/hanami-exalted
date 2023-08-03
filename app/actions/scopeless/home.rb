# frozen_string_literal: true

module Exalted
  module Actions
    module Scopeless
      class Home < Exalted::Action
        def handle(*, response)
          response.render view
        end
      end
    end
  end
end
