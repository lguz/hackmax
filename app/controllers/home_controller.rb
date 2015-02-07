class HomeController < ApplicationController
  def index
  	@shows = Show.all
  	@movie = Movie
  end
end
