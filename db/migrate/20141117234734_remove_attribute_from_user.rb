class RemoveAttributeFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :attribute, :string
  end
end
