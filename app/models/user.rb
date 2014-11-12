class User < ActiveRecord::Base

  has_one :apartment
  belongs_to :hood
  has_one :social_life
  has_many :likes, :foreign_key => 'liker_id'
  has_many :likes, :foreign_key => 'likee_id'

end


