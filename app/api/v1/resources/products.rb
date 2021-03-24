# frozen_string_literal: true

module V1
  module Resources
    class Products < Base
      resource :products do
        get do
          products = ::Products::Report.call

          present products
        end
      end
    end
  end
end
