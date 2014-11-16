class Like < ActiveRecord::Base
  belongs_to :liker, :class_name => :user
  belongs_to :likee, :class_name => :user

  def self.all_by_liker(liker_id)
    where(:liker_id => liker_id)
  end

  def self.has_a_match(like) #=> returns matching like, or nil if doesn't exist
    find_by("liker_id = ? AND likee_id = ?", like.likee_id, like.liker_id)
  end
end
