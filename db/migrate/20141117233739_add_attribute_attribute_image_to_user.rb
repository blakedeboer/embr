class AddAttributeAttributeImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :attribute, :string
    add_column :users, :attribute_img, :string
  end
end
