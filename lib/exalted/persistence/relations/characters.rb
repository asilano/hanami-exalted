# frozen_string_literal: true

module Exalted
  module Persistence
    module Relations
      class Characters < ROM::Relation[:sql]
        schema(:characters, infer: true)
      end
    end
  end
end
