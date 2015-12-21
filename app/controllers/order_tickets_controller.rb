class OrderTicketsController < ApplicationController

  def index
    @order_ticket = OrderTicket.new
    @order_tickets = OrderTicket.all
  end

  def create
    OrderTicket.create(order_ticket_params)
    redirect_to order_tickets_path
  end

  private

  def order_ticket_params
    params.require(:order_ticket).permit(:party_id, :menu_item_id, :status)
  end

end
