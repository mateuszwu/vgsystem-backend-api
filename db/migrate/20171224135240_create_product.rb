class CreateProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :barcode, foreign_key: true
      t.references :shop, foreign_key: true
      t.references :product_info, foreign_key: true
      t.integer :quantity, null: false, default: 0
      t.decimal :buy_price, precision: 8, scale: 2, null: false, default: 0
      t.boolean :is_new, null: false, default: false
      t.string :description
    end
  end
end
