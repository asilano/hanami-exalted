# frozen_string_literal: true

module Exalted
  module Repositories
    class Characters < Repository[:characters]
      commands :create, update: :by_pk, delete: :by_pk

      def [](id)
        characters.by_pk(id).one!
      end

      def all
        characters.to_a
      end
    end
  end
end
