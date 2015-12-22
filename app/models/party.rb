class Party < ActiveRecord::Base
  has_many :order_tickets
  has_many :menu_items, through: :order_tickets
  belongs_to :user
end
