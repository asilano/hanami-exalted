# frozen_string_literal: true

module API
  module Serializers
    class Character
      include Alba::Resource

      root_key :character, :characters

      attributes :name, :exaltation
    end
  end
end
