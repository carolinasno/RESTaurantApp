class MenuItemsController < ApplicationController

  before_action :authenticate!

  def index
    @menu_items = MenuItem.all
    @menu_item = MenuItem.new
  end

  def create
    MenuItem.create(menu_item_params)
    redirect_to menu_items_path
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    menu_item = MenuItem.find(params[:id])
    menu_item.update(menu_item_params)
    redirect_to menu_items_path
  end

  def destroy
    MenuItem.delete(params[:id])
    redirect_to menu_items_path
  end

  private

  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :price)
  end

end
