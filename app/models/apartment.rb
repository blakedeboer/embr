class Apartment < ActiveRecord::Base
  belongs_to :user
  belongs_to :hood

  def self.apts_by_price_and_hood(price, hood_array)
    self.where("price < ? AND hood_id IN (?)", price, hood_array)
  end

  def self.apts_by_price(price)
    self.where("price < ?", price)
  end

  def self.apts_by_hood(hood_array)
    self.where("hood_id IN (?)", hood_array)
  end
end
