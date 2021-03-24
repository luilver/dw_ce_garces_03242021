# frozen_string_literal: true

module Orders
  class Total
    attr_reader :sku

    def initialize(sku:)
      @sku = sku
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      Random.rand 1000
    end
  end
end
