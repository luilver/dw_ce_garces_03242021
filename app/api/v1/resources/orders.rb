# frozen_string_literal: true

module V1
  module Resources
    class Orders < Base
      resource :customers do
        route_param :customer_id, type: Integer do
          get :orders do
            orders = ::Orders::Report.call(customer_id: params[:customer_id])

            present orders
          end
        end
      end
    end
  end
end
