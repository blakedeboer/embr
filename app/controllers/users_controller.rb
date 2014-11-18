class UsersController < ApplicationController

  def index
    @price_array = User.price_array
    @hood_array = User.hood_array
    @los_array = User.length_of_stay_array

    if session[:user_id] 
      @user_is_guest = User.find(session[:user_id]).guest? 
    else
      redirect_to login_path
    end
  end

  def search
    @user = User.find(session[:user_id])
    session[:price] = params[:apartment][:price]
    if @user.guest?
      session[:hood_id] = params[:apartment][:hood_id]
    else 
      session[:asset_id] = params[:asset][:asset_id]
    end

    redirect_to new_user_like_path(@user)
  end

  def create
    #making a post request with signup info from the NEW form
    @user = User.new

    if @user.save
      redirect_to('/results')
    else
      render :new
    end

  end

  def new
    #this route should show a form for new user signup
    @user = User.new
    @user.save
  end

  def edit
    #edit link from profile page
    @user = User.find(params[:id])
  end

  def show
    #profile page
    @user = User.find(params[:id])  
  end

  def update
    #post request send from edit route
  end

  def destroy  
  end



  def login
    @user = User.new #not a new user...
  end

end
