class AddPermissionAndCurrencyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :permission, :integer
    add_column :users, :currency, :integer
  end
end
