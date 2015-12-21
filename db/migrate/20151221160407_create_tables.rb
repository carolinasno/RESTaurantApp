class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :table_number
      t.integer :party_id
      t.string :seat_number
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
