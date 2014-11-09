class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.string :fb
      t.string :t
      t.string :li
      t.string :ig

      t.timestamps
    end
  end
end
