class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fullname, :string
    add_index :users, :fullname, unique: true
    add_column :users, :image, :string
  end
end
