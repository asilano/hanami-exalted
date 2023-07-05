# frozen_string_literal: true
require "pry"
module API
  module Actions
    module Characters
      class Index < API::Action
        def handle(*, response)
          character_type = Struct.new(:name)
          characters = [
            character_type.new("Silent Glade"),
            character_type.new("Yeremi Pashaman"),
          ]
          response.body = Serializers::Character.new(characters).serialize
        end
      end
    end
  end
end
