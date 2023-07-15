# frozen_string_literal: true

module Exalted
  module Views
    module Characters
      class Index < Exalted::View
        include Deps["persistence.rom"]

        def characters
          rom.relations[:characters]
            .select(:name, :exaltation)
            .order(:name)
            .to_a
        end

        expose :characters do
          characters
        end
      end
    end
  end
end
