class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.new(params[:user])
  if @user.save
    flash[:notice] = "Thanks for signing up!"
    redirect_to root
  else
    render new_user_path
  end
end

private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
