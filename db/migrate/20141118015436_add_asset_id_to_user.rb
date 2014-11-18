class AddAssetIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :asset_id, :integer
  end
end
