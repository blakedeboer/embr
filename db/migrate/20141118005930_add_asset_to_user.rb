class AddAssetToUser < ActiveRecord::Migration
  def change
    add_column :users, :asset, :string
  end
end
