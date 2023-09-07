# frozen_string_literals: true
require "dry/monads"
require "dry/matcher"

module UserManagement
  module Commands
    module Create
      class User
        include Dry::Monads[:do, :result]
        include Dry::Matcher.for(:call, with: Dry::Matcher::ResultMatcher)
      end
    end
  end
end
