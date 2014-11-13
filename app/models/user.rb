class User < ActiveRecord::Base
  has_one :apartment
  belongs_to :hood
  has_one :social_life
  has_many :likes, :foreign_key => 'liker_id'
  has_many :likes, :foreign_key => 'likee_id'

  scope :has_apartment, -> { joins()}

  def has_liked?
    Like.where(:liker_id => self.id).count == 0 ? false : true
  end

  def matches #=> returns array of users who you matched with you
    matches = []
    if self.has_liked?
      Like.all_by_liker(self.id).find_each do |like|
        if Like.has_a_match(like)
          matches << User.find(like.likee_id)
        end
      end
    end
    matches
  end



end


