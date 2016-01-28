module ApplicationHelper

  def current_user
    if session[:user_id]
      @current_user = @current_user || User.find(session[:user_id])
    end
  end

  def authenticate!
    redirect_to root_path unless current_user
  end

  def orderSum
    @party.menu_items.sum(:price)
  end

  def orderEurSum
    @party.menu_items.sum(:price) * 0.9207
  end

end
