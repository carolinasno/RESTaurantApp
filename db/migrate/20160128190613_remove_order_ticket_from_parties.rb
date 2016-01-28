class RemoveOrderTicketFromParties < ActiveRecord::Migration
    def self.up
      remove_column :parties, :order_ticket_id
    end

    def self.down
      add_column :parties, :order_ticket_id, :integer
    end
end
