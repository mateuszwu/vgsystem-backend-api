class CreateShop < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :city
      t.string :address
      t.string :phone
      t.decimal :money, precision: 8, scale: 2

      t.timestamps
    end
  end
end
