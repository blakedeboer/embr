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

  def dollarize_price
    i = self.price
    dollarize(i)    
  end

  def dollarize(integer)
    s = integer.to_s
    "$#{s}".insert(-4, ",")
  end

  def no_number_address
    a = self.address.split(" ")
    a.shift
    a.join(" ")
  end

end
