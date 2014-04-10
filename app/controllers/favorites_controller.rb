class FavoritesController < ApplicationController

  def index
      redirect_to("/photos/params[:photo_id]")
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.save
    session[:user_id] = current_user.id
    flash[:notice] = "Favorite Added!"
    current_user.favorites << @favorite
    redirect_to :back
  end

private
  def favorite_params
    params.require(:favorite).permit(:photo_id, :user_id)
  end
end
