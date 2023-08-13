# auto_register: false
# frozen_string_literal: true

module UserManagement
  class View < Exalted::View
    config.paths << Path[File.join(__dir__, "../../app/templates")]
  end
end
