class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @users = User.all
    @user = User.new
  end

  def log_in
  end

  def profile
    authenticate!
  end

  def create
    User.create(user_params)
    redirect_to log_in_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
