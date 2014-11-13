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

    redirect_to new_user_like_path
  end

  def index
    @user = User.find(params[:user_id])
    @matches = @user.matches
  end


end