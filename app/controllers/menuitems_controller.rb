class MenuitemsController < ApplicationController
  def new
    @menuitem = Menuitem.new
  end
  
  def create
    @menuitem = Menuitem.new(params[:menuitem])
    respond_to do |format|
      if @menuitem.save
        format.html { redirect_to menuitems_path }
      end
    end
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

  def show
  end

  def index
    @menuitems = Menuitem.all
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
