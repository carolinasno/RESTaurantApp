class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :guests
      t.string :status
      t.string :table_number
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
