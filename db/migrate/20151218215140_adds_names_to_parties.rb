class AddsNamesToParties < ActiveRecord::Migration
  def change
    add_column :parties, :names, :string
  end
end
