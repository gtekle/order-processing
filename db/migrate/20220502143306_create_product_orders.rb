class CreateProductOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :product_orders do |t|
      t.float :unit_price
      t.float :order_quantity
      t.references :product_id, null: false, foreign_key: true
      t.references :order_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
