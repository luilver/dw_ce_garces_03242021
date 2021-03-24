# frozen_string_literal: true

module Orders
  class Report
    attr_reader :customer_id

    def initialize(customer_id:)
      @customer_id = customer_id
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      orders = Customer.find(customer_id).orders
    end
  end
end
