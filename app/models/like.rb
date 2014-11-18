class Like < ActiveRecord::Base
  belongs_to :liker, :class_name => :user
  belongs_to :likee, :class_name => :user

  def self.all_by_liker(liker_id)
    where(:liker_id => liker_id)
  end

  def self.has_a_match(like) #=> returns matching like, or nil if doesn't exist
    find_by("liker_id = ? AND likee_id = ?", like.likee_id, like.liker_id)
  end

  def self.create_match(user_id1, user_id2)
    l = Like.new(:liker_id => user_id1, :likee_id => user_id2)
    u = Like.new(:liker_id => user_id2, :likee_id => user_id1)
    l.save
    u.save
  end

  def self.reset_matches
    Like.destroy_all
    Dislike.destroy_all
    Like.create_match(7, 9)
    Like.create_match(7, 10)
    Like.create_match(14, 4)
  end
   
end
