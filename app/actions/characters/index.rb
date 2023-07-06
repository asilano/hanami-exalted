# frozen_string_literal: true

module Exalted
  module Actions
    module Characters
      class Index < Exalted::Action
        def handle(*, response)
          response.render view
        end
      end
    end
  end
end
