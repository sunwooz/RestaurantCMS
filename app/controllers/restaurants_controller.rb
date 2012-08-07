class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to restaurants_path }
      end
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @hour = @restaurant.hour
    @menuitem = @restaurant.menuitems.build
  end

  def index
    @restaurants = Restaurant.all
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    respond_to do |format|
      if @restaurant.destroy
        format.html { redirect_to restaurants_path }
      end
    end
  end
end
