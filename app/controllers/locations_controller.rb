class LocationsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @location = @restaurant.build_location(params[:location])
    respond_to do |format|
      if @location.save
        format.html { redirect_to restaurant_path(@restaurant) }
      end
    end
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @location = @restaurant.build_location
    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to restaurant_path(@restaurant) }
      end
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @location = @restaurant.location
  end

end
