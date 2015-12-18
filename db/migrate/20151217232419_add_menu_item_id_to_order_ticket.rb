class AddMenuItemIdToOrderTicket < ActiveRecord::Migration
  def change
    add_column :order_tickets, :menu_item_id, :string
  end
end
