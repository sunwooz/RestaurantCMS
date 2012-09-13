class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.new
  end

  def create
    @user = current_user
    @restaurant = @user.restaurants.build(params[:restaurant])
    @restaurant.build_location
    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to user_restaurant_path(@user,@restaurant) }
      end
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # @menuitem = @restaurant.menuitems
    if @restaurant.hour
      return false
    else
      @restaurant.build_hour
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    respond_to do |format|
      if @restaurant.update_attributes(params[:restaurant])
        format.html { redirect_to restaurant_path(@restaurant), :notice => "You have successfully updated the restaurant information" }
      end
    end
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
