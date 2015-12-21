class RenameNamesToName < ActiveRecord::Migration
  def change
    rename_column :parties, :names, :name
  end
end
