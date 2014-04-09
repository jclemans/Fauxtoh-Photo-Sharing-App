class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    @tag.save
    redirect_to("/")
  end

private
  def tag_params
    params.require(:tag).permit(:photo_id, :user_id)
  end
end
