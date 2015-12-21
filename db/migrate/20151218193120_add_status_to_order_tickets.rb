class AddStatusToOrderTickets < ActiveRecord::Migration
  def change
    add_column :order_tickets, :status, :string
  end
end
