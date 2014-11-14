class LikesController < ApplicationController

  def new
    @liker = User.find(params[:user_id])
    users = @liker.unviewed_users.filtered_apts(session[:price], session[:hood_id])
    if users.count == 0 
      @error = true 
    else 
      @error = false
      @likee = users.first
      @apt = @likee.apartment
    end
  end

  def create
    if params[:likee_id]
      like = Like.new(:likee_id => params[:likee_id], :liker_id => params[:user_id])
      like.save
    else
      dislike = Dislike.new(:dislikee_id => params[:dislikee_id], :disliker_id => params[:user_id])
      dislike.save
    end

    
    redirect_to new_user_like_path
  end

  def index
    @user = User.find(params[:user_id])
    @matches = @user.matches
    @matches.count == 0 ? @error = true : @error = false
  end


end