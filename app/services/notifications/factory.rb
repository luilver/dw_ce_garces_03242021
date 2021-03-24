# frozen_string_literal: true

module Notifications
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

      notification = Notification.create!(sku: sku, customer: customer)
    end
  end
end
