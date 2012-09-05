class HoursController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @hour = @restaurant.build_hour(params[:hour])
    debugger
    respond_to do |format|
      if @hour.save
        format.html { redirect_to restaurant_path(@restaurant) }
      end
    end
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @hour = @restaurant.build_hour
    respond_to do |format|
      if @hour.update_attributes(params[:hour])
        format.html { redirect_to restaurant_path(@restaurant) }
      end
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @hour = @restaurant.hour
  end
end
