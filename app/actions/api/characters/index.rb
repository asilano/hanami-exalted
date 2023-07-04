# frozen_string_literal: true
module Exalted
  module Actions
    module API
      module Characters
        class Index < APIAction
          def handle(*, response)
            response.render(view, format: :json)
          end
        end
      end
    end
  end
end
