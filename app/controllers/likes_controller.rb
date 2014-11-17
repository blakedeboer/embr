class LikesController < ApplicationController

  def new #route name: new_user_like_path
    @liker = User.find(session[:user_id])
    price = session[:price]
    hood_id = session[:hood_id]

    if @liker.guest?
      users = @liker.potential_hosts(price, hood_id)
    else
      users = @liker.potential_guests(price)
    end
    if users.count == 0
      @error = true
    else
      @error = false
      @likee = users.first
      @likee.host? ? @apt = @likee.apartment : @asset = ""
    end
  end

  def create
    @liker = User.find(session[:user_id])
    
    if params[:likee_id]
      like = Like.new(:likee_id => params[:likee_id], :liker_id => @liker.id)
      like.save
    else
      dislike = Dislike.new(:dislikee_id => params[:dislikee_id], :disliker_id => @liker.id)
      dislike.save
    end

    if @liker.new_match?(params[:likee_id].to_i)     
      redirect_to users_id_congrats_path(@liker.id, params[:likee_id])
    else
      redirect_to new_user_like_path
    end
  end

  def index
    @user = User.find(session[:user_id])
    @matches = @user.matches
    @matches.count == 0 ? @error = true : @error = false
  end

  #show page of your match and messaging
  def show
    @likee_id = params[:likee_id]
    @liker_id = params[:user_id]
  end

  def congrats
    @likee = User.find(params[:id])
    @liker = User.find(params[:user_id])
  end


end