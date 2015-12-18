class AddSeatNumberToOrderTickets < ActiveRecord::Migration
  def change
    add_column :order_tickets, :seat_number, :string
  end
end
