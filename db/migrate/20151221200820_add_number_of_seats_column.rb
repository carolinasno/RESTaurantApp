class AddNumberOfSeatsColumn < ActiveRecord::Migration
  def change
    add_column :tables, :number_of_seats, :integer
  end
end
