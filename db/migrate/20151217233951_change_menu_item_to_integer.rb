class ChangeMenuItemToInteger < ActiveRecord::Migration
  def change
    change_column :order_tickets, :menu_item_id, 'integer USING CAST(menu_item_id AS integer)'
  end
end
