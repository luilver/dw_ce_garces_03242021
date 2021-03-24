# frozen_string_literal: true

module Products
  class Inventory
    attr_reader :sku

    def initialize(sku:)
      @sku = sku
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      product = Product.find_by(sku: sku)

      raise Error if product.nil?

      raise Error if product.quantity <= 0

      order = Order.create!(sku: sku, total: total, customer: customer)
    end
  end
end
