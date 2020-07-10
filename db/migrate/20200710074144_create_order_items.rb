class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: true
      t.float :price_per_unit
      t.integer :quantity
      t.string :product

      t.timestamps
    end
  end
end
