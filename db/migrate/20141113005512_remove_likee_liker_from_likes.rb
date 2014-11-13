class RemoveLikeeLikerFromLikes < ActiveRecord::Migration
  def change
    remove_column :likes, :liker
    remove_column :likes, :likee
  end
end
