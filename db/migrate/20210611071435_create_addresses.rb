class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :post_code
      t.string :street
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
