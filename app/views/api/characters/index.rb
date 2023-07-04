# frozen_string_literal: true

module Exalted
  module Views
    module API
      module Characters
        class Index < Exalted::View
          expose :characters do
            [
              { "name" => "Silent Glade" },
              { "name" => "Yeremi Pashaman" }
            ].to_json.html_safe
          end
        end
      end
    end
  end
end
