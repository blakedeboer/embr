class Message < ActiveRecord::Base
  belongs_to :to, :class_name => :user
  belongs_to :from, :class_name => :user

  def self.messages(to_id, from_id)
    Message.where("to_id = ? AND from_id = ?", to_id, from_id)
  end

  def conversation_with(recipient_id)
    current_user_messages = Message.messages(self.id, recipient_id)
    recipient_messages = Message.messages(recipient_id, self.id)
    conversation = (current_user_messages + recipient_messages).sort_by(&:created_at)
  end
end