class AddSeatNumberToParties < ActiveRecord::Migration
  def change
    add_column :parties, :seat_number, :string
  end
end
