class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.datetime :shipped_date
      t.float :total_amount
      t.integer :status
      t.text :remark
      t.references :customer_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
