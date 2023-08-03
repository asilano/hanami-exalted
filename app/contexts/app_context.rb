# frozen_string_literal: true

module Exalted
  module Contexts
    class AppContext < Hanami::View::Context
      def title
        "Exalted"
      end

      def initialize(...)
        super
        @content_for = {}
      end

      def content_for(key, content = nil)
        if content || block_given?
          @content_for[key] =  block_given? ? yield : content
        else
          @content_for[key]
        end
      end
    end
  end
end
