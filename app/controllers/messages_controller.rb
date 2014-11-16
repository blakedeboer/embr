class MessagesController < ApplicationController
  def show
    @liker = User.find(params[:user_id])
    @likee = User.find(params[:id])
  end

  def create
    binding.pry


  end
end