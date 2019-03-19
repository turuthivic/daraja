class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.datetime :date
      t.decimal :amount, :precision => '6', :scale => '2'
      t.integer :quantity

      t.timestamps
    end
  end
end
