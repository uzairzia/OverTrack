class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(permitted_params)
    if @user.save
      redirect_to user_url(@user)
    else
      render 'new';
    end
  end

  def permitted_params
    params.require(:user).permit(:battletag, :email, :password, :password_confirmation)
  end
end
