class TablesController < ApplicationController

  def index
    @tables = Table.all
    @table = Table.new
  end

  def create
    Table.create(table_params)
    redirect_to tables_path
  end

  def edit
    @table = Table.find(params[:id])
  end

  def update
    table = Table.find(params[:id])
    table.update(table_params)
    redirect_to tables_path
  end

  def destroy
    Table.delete(params[:id])
    redirect_to tables_path
  end

  private

  def table_params
    params.require(:table).permit(:id, :user_id, :party_id, :table_number, :seat_number)
  end

end
