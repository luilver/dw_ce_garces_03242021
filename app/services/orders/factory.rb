# frozen_string_literal: true

module Orders
  class Factory
    attr_reader :customer_id, :sku

    def initialize(customer_id:, sku:)
      @customer_id = customer_id
      @sku = sku
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      customer = Customer.find(customer_id)

      total = Orders::Total.call(sku: sku)

      order = Order.create!(sku: sku, total: total, customer: customer)
    end
  end
end
