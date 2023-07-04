# frozen_string_literal: true

module Exalted
  module Actions
    module Characters
      class Index < Exalted::Action
        def handle(*, response)
          response.body = self.class.name
        end
      end
    end
  end
end
