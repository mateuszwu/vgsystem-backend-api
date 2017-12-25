class CreateProductTransactionDetail < ActiveRecord::Migration[5.1]
  def change
    create_table :product_transaction_details do |t|
      t.references :transaction, foreign_key: true
      t.references :product, foreign_key: true
      t.string :type, null: false, default: true
      t.integer :quantity, null: false, default: 0
      t.decimal :sell_price, precision: 8, scale: 2, null: false, default: 0
      t.string :description
    end
  end
end
