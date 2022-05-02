class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :unit_price
      t.float :quantity_in_stock

      t.timestamps
    end
  end
end
