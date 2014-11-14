class LikesController < ApplicationController

  def new
    @price = session[:price]
    @hood_id = session[:hood_id]

    @apt = Apartment.select_apartments(@price, @hood_id).first
    @likee = User.find(@apt.user_id)
    @liker = User.find(params[:user_id])
  end

  def create
    likee_id = params[:likee_id]
    liker_id = params[:user_id]
    like = Like.new(:likee_id => likee_id, :liker_id => liker_id)
    like.save

    if false
      redirect_to('/congrats')
    else
      redirect_to new_user_like_path
    end
    
  end

  def index
    @user = User.find(params[:user_id])
    @matches = @user.matches
  end

  #show page of your match and messaging
  def show
    @likee_id = params[:likee_id]
    @liker_id = params[:user_id]
  end


end