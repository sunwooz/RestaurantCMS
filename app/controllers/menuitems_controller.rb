class MenuitemsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menuitem = @restaurant.menuitems.build
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menuitem = @restaurant.menuitems.build(params[:menuitem])
    respond_to do |format|
      if @menuitem.save
        format.html { redirect_to restaurant_path(@restaurant) }
      end
    end
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def edit
    @menuitem = Menuitem.find(params[:id])
  end

  def update
    @menuitem = Menuitem.find(params[:id])
    respond_to do |format|
      if @menuitem.update_attributes(params[:menuitem])
        format.html { redirect_to menuitems_path }
      end
    end
  end

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menuitems = @restaurant.menuitems.build
  end

  def destroy
    @menuitem = Menuitem.find(params[:id])
    respond_to do |format|
      if @menuitem.destroy
        format.html { redirect_to menuitems_path }
      end
    end
  end
end
