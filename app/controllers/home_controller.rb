class HomeController < ApplicationController
  def index
    # @photos = Photo.all
    render('index.html.erb')
  end
end
