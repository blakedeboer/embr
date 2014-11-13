class AddAptImgToUser < ActiveRecord::Migration
  def change
    add_column :users, :apt_img, :string
  end
end
