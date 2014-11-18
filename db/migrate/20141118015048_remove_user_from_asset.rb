class RemoveUserFromAsset < ActiveRecord::Migration
  def change
    remove_column :assets, :user_id, :integer
  end
end
