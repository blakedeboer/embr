class RemoveAttributeImageFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :attribute_img, :string
  end
end
