class Customer < ApplicationRecord
  has_many :notifications
  has_many :orders
end
