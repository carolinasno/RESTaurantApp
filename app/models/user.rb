class User < ActiveRecord::Base
  has_secure_password
  has_many :parties
  has_many :order_tickets, through: :parties
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  def permission_type
      posible_types = ['Chef', 'Server', 'Admin']
      posible_types[self.permission-1]
  end

end
