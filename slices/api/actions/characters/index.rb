# frozen_string_literal: true
require "pry"
module API
  module Actions
    module Characters
      class Index < API::Action
        include Deps["persistence.rom"]

        def handle(*, response)
          characters = rom.relations[:characters]
            .select(:name, :exaltation)
            .order(:name)
            .to_a
          response.body = {characters: }.to_json #Serializers::Character.new(characters).serialize
        end
      end
    end
  end
end
