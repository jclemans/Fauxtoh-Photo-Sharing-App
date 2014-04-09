class HomeController < ApplicationController
  before_filter :authorize, only: [:edit, :update]

  def index
    # @photos = Photo.all
    render('index.html.erb')
  end
end
