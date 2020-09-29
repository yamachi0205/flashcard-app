class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :eamil, :password)
  end
end
