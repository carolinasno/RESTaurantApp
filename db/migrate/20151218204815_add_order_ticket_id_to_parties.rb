class AddOrderTicketIdToParties < ActiveRecord::Migration
  def change
    add_column :parties, :order_ticket_id, :integer
  end
end
