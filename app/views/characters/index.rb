# frozen_string_literal: true

module Exalted
  module Views
    module Characters
      class Index < Exalted::View
        character_type = Struct.new(:name)
        characters = [
          character_type.new("Silent Glade"),
          character_type.new("Yeremi Pashaman"),
        ]

        expose :characters do
          characters
        end
      end
    end
  end
end
