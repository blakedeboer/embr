class Hood < ActiveRecord::Base

  has_many :apartments
  has_many :users, :through => :apartments
end
