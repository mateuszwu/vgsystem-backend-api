class CreateBarcode < ActiveRecord::Migration[5.1]
  def change
    create_table :barcodes do |t|
      t.string :code, unique: true
      t.references :product_infos
      t.boolean :is_english
      t.boolean :is_polish

      t.timestamps
    end
  end
end
