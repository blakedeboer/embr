class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :address
      t.string :room_type
      t.string :apt_type
      t.integer :price
      t.date :available_date
      t.integer :hood_id
      t.integer :user_id

      t.timestamps
    end
  end
end
