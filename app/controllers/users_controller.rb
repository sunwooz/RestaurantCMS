class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create]

  def index
   @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to new_restaurant_path, :notice => "Thank you for signing up! You are now logged in. You can now create a restaurant." }
      else
        render :action => 'new'
      end
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice => "Your profile has been updated."
    else
      render :action => 'edit'
    end
  end
end
