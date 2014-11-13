class AddAptImgToApartment < ActiveRecord::Migration
  def change
    add_column :apartments, :apt_img, :string
  end
end
