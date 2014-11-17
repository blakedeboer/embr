class MessagesController < ApplicationController
  def show
    @liker = User.find(params[:user_id])
    @likee = User.find(params[:id])
  end

  def create
    message = Message.new(:to_id => params[:likee_id], :from_id => params[:user_id], :content => params[:content])
    message.save
    redirect_to user_message_path(params[:user_id], params[:likee_id])
  end
end