# frozen_string_literal: true

module UserManagement
  module Actions
    module Users
      class New < UserManagement::Action
        def handle(*, response)
          response.render view
        end
      end
    end
  end
end
