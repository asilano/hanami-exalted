# frozen_string_literal: true

module UserManagement
  module Views
    module Users
      class New < UserManagement::View
        expose :errors, default: {}
        expose :user, default: {}
      end
    end
  end
end
