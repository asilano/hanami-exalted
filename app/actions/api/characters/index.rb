# frozen_string_literal: true

module Exalted
  module Actions
    module API
      module Characters
        class Index < APIAction
          def handle(*, response)
            characters = [
              { "name" => "Silent Glade" },
              { "name" => "Yeremi Pashaman" }
            ]

            response.body = characters.to_json
          end
        end
      end
    end
  end
end
