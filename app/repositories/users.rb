# frozen_string_literal: true

module Exalted
  module Repositories
    class Users < Repository[:users]
      commands :create, update: :by_pk, delete: :by_pk

      def [](id)
        users.by_pk(id).one!
      end

      def by_email(email)
        users.where(email: email).one
      end

      def all
        users.to_a
      end
    end
  end
end
