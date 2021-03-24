# frozen_string_literal: true

module Products
  class Report
    def self.call(*args)
      new(*args).call
    end

    def call
      products = Product.all
    end
  end
end
