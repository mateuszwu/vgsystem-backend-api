class CreateDefaultPrice < ActiveRecord::Migration[5.1]
  def change
    create_table :default_prices do |t|
      t.references :product_info, null: false, foreign_key: true
      t.decimal :buy_price_used_en, precision: 8, scale: 2, null: false, default: 0
      t.decimal :buy_price_used_pl, precision: 8, scale: 2, null: false, default: 0
      t.decimal :sell_price_used_en, precision: 8, scale: 2, null: false, default: 0
      t.decimal :sell_price_used_pl, precision: 8, scale: 2, null: false, default: 0
      t.decimal :buy_price_new_en, precision: 8, scale: 2, null: false, default: 0
      t.decimal :buy_price_new_pl, precision: 8, scale: 2, null: false, default: 0

      t.timestamps
    end
  end
end
