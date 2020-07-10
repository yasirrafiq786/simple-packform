class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :created_at
      t.string :order_name
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
