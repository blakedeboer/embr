class RemoveAssetFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :asset, :string
  end
end
