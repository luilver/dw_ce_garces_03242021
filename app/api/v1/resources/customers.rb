# frozen_string_literal: true

module V1
  module Resources
    class Customers < Base
      resource :customers do
        params do
          requires :email
          requires :name
        end
        post do
          customer = ::Customers::Factory.call(email: params[:email],
            name: params[:name])

          present customer
        end
      end
    end
  end
end
