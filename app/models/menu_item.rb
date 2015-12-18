class MenuItem < ActiveRecord::Base
  belongs_to :order_tickets
  belongs_to :parties, through: :order_tickets
end
