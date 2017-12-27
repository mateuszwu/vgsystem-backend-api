class AddIndexOnBarcodeCode < ActiveRecord::Migration[5.1]
  def change
    add_index :barcodes, :code
  end
end
