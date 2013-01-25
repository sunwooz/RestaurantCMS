class PagesController < ApplicationController

  def home
    @restaurants = Restaurant.all
  end

end
