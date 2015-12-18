class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def log_in
  end

  def profile
    authenticate!
  end

  def create
    User.create(user_params)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
