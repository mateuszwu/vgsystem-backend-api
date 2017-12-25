class CreateProductInfo < ActiveRecord::Migration[5.1]
  def change
    create_table :product_infos do |t|
      t.string :name_en, null: false, default: ''
      t.string :name_pl, null: false, default: ''
      t.string :category, null: false, default: ''
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
