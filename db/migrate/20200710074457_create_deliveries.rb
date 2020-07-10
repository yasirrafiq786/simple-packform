class CreateDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :deliveries do |t|
      t.references :order_item, null: false, foreign_key: true
      t.integer :delivered_quantity

      t.timestamps
    end
  end
end
