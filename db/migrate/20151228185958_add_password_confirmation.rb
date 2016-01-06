class AddPasswordConfirmation < ActiveRecord::Migration
  def change
    add_column :users, :password_confirmation, :stringr
  end
end
