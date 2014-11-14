class Dislike < ActiveRecord::Base
  belongs_to :disliker, :class_name => :user
  belongs_to :dislikee, :class_name => :user


end