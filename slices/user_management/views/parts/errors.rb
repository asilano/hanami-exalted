# frozen_string_literal: true

module UserManagement
  module Views
    module Parts
      class Errors < Part
        def message(key)
          return unless value[key]

          render "shared/form_error", message: value[key].join(", ")
        end
      end
    end
  end
end
