# frozen_string_literal: true

module Exalted
  module Views
    module Characters
      class Index < Exalted::View
        include Deps["repositories.characters"]

        expose :characters do
          characters.all
        end
      end
    end
  end
end
