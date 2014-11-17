class UsersController < ApplicationController

  def index
    @price_array = (500..4000).step(500).to_a.insert(0, 'any price')
    hood_array = Hood.all.map{|hood| [hood.name, hood.id]}
    @hood_array = hood_array.insert(0, 'any neighborhood')
    # session[:user_id] = 1
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
