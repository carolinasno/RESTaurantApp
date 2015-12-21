class ChangeNamesToName < ActiveRecord::Migration
  def change
    change_column :parties, :names, :name
  end
end
