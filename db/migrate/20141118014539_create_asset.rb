class CreateAsset < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :category
      t.integer :user_id
      t.string :img
    end
  end
end
