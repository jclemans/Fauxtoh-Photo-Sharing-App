class HomeController < ApplicationController
  before_filter :authorize, only: [:edit, :update]

  def index
    @users = User.all
    @photos = Photo.all
    render('index.html.erb')
  end
end
