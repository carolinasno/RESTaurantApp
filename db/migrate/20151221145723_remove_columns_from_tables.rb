class RemoveColumnsFromTables < ActiveRecord::Migration
  def self.up
    remove_column :order_tickets, :seat_number
    remove_column :parties, :status
  end

  def self.down
    add_column :order_tickets, :seat_number, :string
    add_column :parties, :status, :string
  end

end
