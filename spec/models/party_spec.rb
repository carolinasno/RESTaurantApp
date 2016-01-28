# The party should be able to get the total balance based on all the food items ordered.

require 'rails_helper'

RSpec.describe Party, type: :model do

  it "should be able to get the total balance based on all the food items ordered" do

    user = User.create({ username: 'carolina' , password: 'carolina' , permission: 3 })
    menu_items = MenuItem.create([{ name: 'tomato soup', description: 'roasted tomatoes, cream based', price: 5}, {name: 'grilled cheese', description: 'three cheeses on texas toast', price: 8 }])
    party = Party.create({ user: user, guests: 2, name: 'oliver' })
    party.order_tickets.create([{menu_item: menu_items[0]}, {menu_item: menu_items[1]}])
    # order_ticket = OrderTicket.create({ menu_item: menu_items[0], party: party })


    actual = party.menu_items.sum(:price)
    expected = 13
    expect(actual).to eq(expected)
  end

end
