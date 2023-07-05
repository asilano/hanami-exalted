# frozen_string_literal: true

Hanami.app.register_provider :serializers do
  start do
    require "alba"

    Alba.backend = :oj
  end
end
