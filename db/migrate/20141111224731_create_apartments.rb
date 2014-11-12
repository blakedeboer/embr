class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :address
      t.string :room_type
      t.string :br_count
      t.string :ba_count
      t.integer :price
      t.integer :hood_id
      t.integer :user_id

      t.timestamps
    end
  end
end
