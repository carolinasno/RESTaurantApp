class RemoveMoreColumnsFromParties < ActiveRecord::Migration
  def self.up
    remove_column :parties, :seat_number
    remove_column :parties, :table_number
  end

  def self.down
    add_column :parties, :seat_number
    add_column :parties, :table_number
  end

end
