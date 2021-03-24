# frozen_string_literal: true

module Customers
  class Factory
    attr_reader :email, :name

    def initialize(email:, name:)
      @email = email
      @name = name
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      customer = Customer.create(email: email, name: name)
    end
  end
end
