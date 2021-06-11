class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.decimal :price, precision: 10, scale: 2
      t.integer :sender_id
      t.integer :receiver_id
      t.references :service, null: true, foreign_key: true

      t.timestamps
    end
  end
end
