class Message < ActiveRecord::Base
  belongs_to :to, :class_name => :user
  belongs_to :from, :class_name => :user

  def self.messages(to_id, from_id)
    Message.where("to_id = ? AND from_id = ?", to_id, from_id)
  end

  def helper
    # collect both arrays
    # merge
    # sort by time
  end
end