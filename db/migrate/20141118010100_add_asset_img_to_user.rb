class AddAssetImgToUser < ActiveRecord::Migration
  def change
    add_column :users, :asset_img, :string
  end
end
