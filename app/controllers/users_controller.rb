
class UsersController < ApplicationController

  def index
    @users = User.all
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
   session[:gender] = params[:gender]

   redirect_to results_path
  end

  def results
    # @gender = session[:gender]
  end


  def login
    @user = User.new
  end

end
