class ChangeMenuItemIdToInteger < ActiveRecord::Migration
  def change
    change_column :order_tickets, :menu_item_id, :integer
  end
end
