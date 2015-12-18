class CreateOrderTickets < ActiveRecord::Migration
  def change
    create_table :order_tickets do |t|
      t.integer :party_id

      t.timestamps null: false
    end
  end
end
