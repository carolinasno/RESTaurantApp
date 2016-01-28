class OrderTicketsController < ApplicationController

  def index
    @order_ticket = OrderTicket.new
    @order_tickets = OrderTicket.all.select{|ticket| ticket.complete == 0 }
  end

  def create
    OrderTicket.create(order_ticket_params)
    redirect_to order_tickets_path
  end

  def edit
    @order_ticket = OrderTicket.find(params[:id])
  end

  def update
    order_ticket = OrderTicket.find(params[:id])
    order_ticket.update(order_ticket_params)
    redirect_to order_tickets_path
  end

  def destroy
    OrderTicket.delete(params[:id])
    redirect_to order_tickets_path
  end

  def show
    @parties = OrderTicket.all
    @order_ticket = OrderTicket.find(params[:id])
  end

  def complete
    order_ticket = OrderTicket.find(params[:id])
    order_ticket.complete = 1
    order_ticket.save
    redirect_to order_tickets_path
  end

  private

  def order_ticket_params
    params.require(:order_ticket).permit(:party_id, :menu_item_id, :created_at, :status, :notes)
  end

end
