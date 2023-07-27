# frozen_string_literal: true
require "pry"
module API
  module Actions
    module Characters
      class Index < API::Action
        include Deps["repositories.characters"]

        def handle(*, response)
          response.body = Serializers::Character.new(characters.all).serialize
        end
      end
    end
  end
end
