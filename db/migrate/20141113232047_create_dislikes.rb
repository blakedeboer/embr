class CreateDislikes < ActiveRecord::Migration
  def change
    create_table :dislikes do |t|
      t.integer :disliker_id
      t.integer :dislikee_id
    end
  end
end
