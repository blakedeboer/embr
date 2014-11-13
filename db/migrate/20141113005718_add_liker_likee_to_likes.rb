class AddLikerLikeeToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :liker_id, :integer
    add_column :likes, :likee_id, :integer
  end
end
