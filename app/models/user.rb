class User < ActiveRecord::Base
  has_secure_password
  has_one :table
  has_many :parties
  has_many :order_tickets, through: :parties
end
