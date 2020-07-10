class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :user_id
      t.string :login
      t.string :password
      t.string :name
      t.references :company, null: false, foreign_key: true
      t.integer :credit_card

      t.timestamps
    end
  end
end
