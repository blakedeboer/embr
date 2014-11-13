
class UsersController < ApplicationController

  def index
    @price_array = (0..4000).step(100).to_a
    @hood_names = Hood.all.map{|hood| [hood.name, hood.id]}
  end

  def create
    redirect_to index_path
  end

  def new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    
  end

  def update
  end

  def destroy  
  end

  def search
    session[:price] = params[:apartment][:price]
    session[:hood_id] = params[:apartment][:hood_id]
    @user = User.find_by(:id => 4)

    redirect_to new_user_like_path(@user)
  end


  def login
    @user = User.new
  end

end
