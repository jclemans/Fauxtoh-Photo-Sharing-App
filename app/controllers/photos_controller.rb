class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      session[:user_id] = current_user.id
      flash[:notice] = "Fauxtoh Saved!"
      current_user.photos << @photo
      redirect_to user_path(current_user)
    else
      render new_photo_path
    end
  end

private
  def photo_params
    params.require(:photo).permit(:photo, :user_id)
  end
end
