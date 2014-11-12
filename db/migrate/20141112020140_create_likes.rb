class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :liker
      t.integer :likee

      t.timestamps
    end
  end
end
