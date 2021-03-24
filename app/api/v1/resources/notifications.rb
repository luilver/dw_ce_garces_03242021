# frozen_string_literal: true

module V1
  module Resources
    class Notifications < Base
      resource :customers do
        route_param :customer_id, type: Integer do
          params do
            requires :sku
          end
          post :notifications do
            order = ::Notifications::Factory.call(customer_id: params[:customer_id],
              sku: params[:sku])

            present order
          end
        end
      end
    end
  end
end
