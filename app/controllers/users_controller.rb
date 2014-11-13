
class UsersController < ApplicationController

  def index
    @price_array = (0..4000).step(100).to_a
    @hood_names = Hood.all.map{|hood| [hood.name, hood.id]}
  end

  def create
    #making a post request with signup info from the NEW form
    @user = User.new

    if @user.save
      redirect_to('users/index')
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

    redirect_to results_path
  end

  def results
    @price = session[:price]
    @hood_id = session[:hood_id]

    #Apartment.where("price < ? AND hood_id = ?", 3995, 1) => returns all apts for one hood
    #Apartment.where("price < ? AND hood_id IN (?)", 3995, [1,2]) =>returns all for multiple hoods, 
    @apt = Apartment.where("price < ? AND hood_id IN (?)", @price, [@hood_id]).first
    @user = User.find(@apt.user_id)
  end

  def login
    @user = User.new #not a new user...
  end

end
