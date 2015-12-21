class UpdatePartiesTable < ActiveRecord::Migration
  def self.up
    remove_column :parties, :table_number
    remove_column :parties, :seat_number
  end

  def self.down
    add_column :parties, :table_number
    add_column :parties, :seat_number
  end

  def change
    add_column :parties, :table_id, :integer
  end
end
