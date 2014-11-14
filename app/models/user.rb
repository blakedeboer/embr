class User < ActiveRecord::Base
  attr_accessor :users

  has_one :apartment
  belongs_to :hood
  has_one :social_life
  has_many :likes, :foreign_key => 'liker_id'
  has_many :likes, :foreign_key => 'likee_id'
  has_many :dislikes, :foreign_key => 'disliker_id'
  has_many :dislikes, :foreign_key => 'dislikee_id' 


  def self.have_apts
    self.joins(:apartment)
  end

  def self.not_have_apts
    self.where.not(id: Apartment.select(:user_id))
  end

  def self.women_seeking_men
    self.where("gender = ? AND orientation = ? AND looking_for = ?", "female", "straight", "men")
  end

  def self.men_seeking_women
    self.where("gender = ? AND orientation = ? AND looking_for = ?", "male", "straight", "women")
  end

  def self.filtered_apts(price, hood_id)
     self.joins(:apartment).merge( Apartment.select_apartments(price, hood_id))
  end

  def has_liked?
    Like.where(:liker_id => self.id).count == 0 ? false : true
  end

  def has_disliked?
    Dislike.where(:disliker_id => self.id).count == 0 ? false : true
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

  def unviewed_users #=> returns users
    users = self.filtered_users
    if self.has_liked?
      Like.where(:liker_id => self.id).find_each do |like|
        users = users.where.not(:id => like.likee_id)
      end
    end
    if self.has_disliked?
      Dislike.where(:disliker_id => self.id).find_each do |dislike|
        users = users.where.not(:id => dislike.dislikee_id)
      end
    end
    users
  end

  def filtered_users #=> returns the users that the current user is looking for
    if self.gender == "male" && self.orientation == "straight" && self.looking_for == "women"
      @users = User.women_seeking_men
    elsif self.gender == "female" && self.orientation == "straight" && self.looking_for == "men"
      @users = User.men_seeking_women
    else
      @users = "error"
    end
    self.host? ? @users.not_have_apts : @users.have_apts
  end

  def host?
    self.apartment ? true : false
  end

  def has_new_match?
    
  end

end


