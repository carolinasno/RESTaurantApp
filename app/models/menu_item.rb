class MenuItem < ActiveRecord::Base
  has_many :order_tickets
end
