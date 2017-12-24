class CreateMoneyTransactionDetail < ActiveRecord::Migration[5.1]
  def change
    create_table :money_transaction_details do |t|
      t.references :transaction, foreign_key: true
      t.string :type, null: false, default: ''
      t.decimal :quantity, precision: 8, scale: 2, null: false, default: 0
      t.string :description
    end
  end
end
