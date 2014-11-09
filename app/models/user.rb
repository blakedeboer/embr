class User < ActiveRecord::Base

  has_one :apartment
  belongs_to :hood
  has_one :social_life

end


