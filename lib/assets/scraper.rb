require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative '../../config/environment'


class Scraper
  attr_accessor :apartments_htmls, :full_page_html

  def initialize
  end

  def scrape_page(num) #=> full page of html
    Nokogiri.HTML(open("http://streeteasy.com/for-rent/downtown/price:1000-4000?page=#{num}"))
  end

  def parse_student_name(html) #=> "name"
    html.css("div.big-comment h3 a").text
  end

  def parse_student_image(html) #=> "image path"
    html.css("div.blog-thumb a img").map {|img| img["src"]}[0]
  end

  def address(apt)
    address_with_aptnum = apt.css("div.details-title a").text.gsub(" SAVE", "")
    address_with_aptnum.split('#').first.strip
  end

  def apt_num(apt)
    address_with_aptnum = apt.css("div.details-title a").text.gsub(" SAVE", "")
    address_with_aptnum.split('#').last
  end

  def price(apt)
    apt.css("span.price").text.gsub(/\D/, '').to_i
  end

  def first_detail(apt)
    apt.css("span.first_detail_cell").text
  end

  def mid_detail(apt)
    apt.css("span.detail_cell").text
  end

  def last_detail(apt)
    apt.css("span.last_detail_cell").text
  end

  def incl_bed?
    self.include?("bed")
  end

  def incl_bath?
    self.include?("bath")
  end

  def hood(apt)
    apt.css("div.details_info a")[0].text
  end

  def create_apartments(num) #=> saves each student in DB w/ name and image path
    full_page_html = self.scrape_page(num)
    apartments_html = full_page_html.css("div.details")
    i = 1
    apartments_html.each do |apt|
      if i < 4
        unless Apartment.find_by(:address => "#{address(apt)}")
          @apartment = Apartment.new
          @apartment.address = address(apt)
          @apartment.price = price(apt)
          if first_detail(apt).include? "bath"
            @apartment.br_count = "studio"
            @apartment.ba_count = "1 bath"
          elsif first_detail(apt).include? "bed"
           @apartment.br_count = first_detail(apt)
          end
          if (mid_detail(apt).include? "bed") || (mid_detail(apt).include? "bath")
           @apartment.ba_count = mid_detail(apt)
          end
          if (last_detail(apt).include? "bed") || (last_detail(apt).include? "bath")
           @apartment.ba_count = last_detail(apt)
          end
          if Hood.find_by(:name => "#{hood(apt)}")
            @apartment.hood_id = Hood.find_by(:name => "#{hood(apt)}").id
          else
            @apartment.build_hood(:name => "#{hood(apt)}")
          end
          @apartment.user_id = i
          @apartment.save
        end
        i += 1
      else
        break
      end
    end
  end

end


# apartments.each do |apt|
#   # binding.pry
  # if apartment.css("span.detail_cell").text.inlcude?("bed") || apartment.css("span.detail_cell").text.include?("bath")
  #   puts "Detail 2: #{apartment.css("span.detail_cell").text}"
  # end
  # if apartment.css("span.last_detail_cell").text.include?("bed") || apartment.css("span.last_detail_cell").text.include?("bath")
  #   puts "Detail 3: #{apartment.css("span.last_detail_cell").text}"
  # end
  # if apartment.css("span.detail_cell").text != ""
  #   puts "Detail 2: #{apartment.css("span.detail_cell").text}"
  # else 
  #   puts "Detail 3: #{apartment.css("span.last_detail_cell").text}"
#   # end
#   puts "Neighborhood: #{apartment.css("div.details_info a")[0].text}"
#   puts "---------NEW APT---------------"
# end

# address_html = apartment.css("h5")
#   price_html = apartment.css("span.price")
#   bedroom_html = apartment.css("span.first_detail_cell")

# puts address_html.text
# puts price_html.text
# puts bedroom_html.text



