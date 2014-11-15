class UsersController < ApplicationController

  def index
    @price_array = (0..4000).step(100).to_a
    @hood_names = Hood.all.map{|hood| [hood.name, hood.id]}
    session[:user_id] = 2
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

  def search
    session[:price] = params[:apartment][:price]
    session[:hood_id] = params[:apartment][:hood_id]
    @user = User.find_by(:id => 6)

    redirect_to new_user_like_path(@user)
  end


  def login
    @user = User.new #not a new user...
  end

end
