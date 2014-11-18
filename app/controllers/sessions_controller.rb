class SessionsController < ApplicationController
  
  skip_before_action :login_required, :only => [:new, :create]

  def new
  end

  def create
    binding.pry
    user = User.find_by(:email => params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:notice] = "We can't find that person"
      render :new
    end
  end

  def destroy
    reset_session
    flash.now[:notice] = "You logged out"
    redirect_to root_path
  end
end
