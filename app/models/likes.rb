class Likes < ActiveRecord::Base
  belongs_to :liker, :class_name => :user
  belongs_to :likee, :class_name => :user

end
