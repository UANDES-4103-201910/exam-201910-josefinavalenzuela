class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.references :biling_address
      t.references :shipping_address

      t.timestamps
    end
    add_foreign_key :order, :address, column: :biling_address_id, primary_key: :id
    add_foreign_key :order, :address, column: :shipping_address_id, primary_key: :id
  end
end
