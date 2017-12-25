class CreateShop < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :city, null: false, default: ''
      t.string :address, null: false, default: ''
      t.string :phone, null: false, default: ''
      t.decimal :money, precision: 8, scale: 2, null: false, default: 0

      t.timestamps
    end
  end
end
