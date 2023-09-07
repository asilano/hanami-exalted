# frozen_string_literal: true

module UserManagement
  module Actions
    module Users
      class Create < UserManagement::Action
        include Deps[failure_view: "views.users.new"]
        include Deps["commands.users.create"]

        class ParamsContract < Dry::Validation::Contract
          params do
            required(:user).hash do
              required(:email).filled(:string)
              required(:password).filled(:string).value(min_size?: 6)
              required(:password_confirmation).filled(:string)
              optional(:name).filled(:string)
            end
          end
          rule(user: %i[password_confirmation password]) do
            key(user: :password_confirmation).failure("must match password") unless values[:user][:password_confirmation] == values[:user][:password]
          end
        end

        before :validate

        def handle(request, response)
          response.body = request.params.to_h # self.class.name
        end

        private

        def validate(request, response)
          validity = ParamsContract.new.call(request.params.to_h)
          return if validity.success?

          body = response.render(
            failure_view,
            errors: validity.errors[:user],
            user: request.params[:user]
          )
          halt 422, body
        end
      end
    end
  end
end
