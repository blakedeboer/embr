class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :orientation
      t.string :looking_for
      t.string :prof_img

      t.timestamps
    end
  end
end
