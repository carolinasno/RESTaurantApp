class AddCompleteToOrderTickets < ActiveRecord::Migration
  def change
    add_column :order_tickets, :complete, :integer, default: 0
  end
end
