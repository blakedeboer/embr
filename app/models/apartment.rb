class Apartment < ActiveRecord::Base
  belongs_to :user
  belongs_to :hood

  def self.select_apartments(price, hood_array)
    self.where("price < ? AND hood_id IN (?)", price, hood_array)
  end

end
