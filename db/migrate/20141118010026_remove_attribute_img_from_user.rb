class RemoveAttributeImgFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :attribute_image, :string
  end
end
