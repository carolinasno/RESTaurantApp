class User < ActiveRecord::Base
  has_secure_password
  has_many :parties
  has_many :order_tickets, through: :parties
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

end
