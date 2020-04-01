class MakeFalseOnlineStatusDefaults < ActiveRecord::Migration[6.0]
  def up 
    change_column :users, :status, :boolean, default: false
  end

  def down 
    change_column :users, :status, :boolean
  end
end