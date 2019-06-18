class CreateShoppingBags < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_bags do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
