class CreateProductInfo < ActiveRecord::Migration[5.1]
  def change
    create_table :product_infos do |t|
      t.string :name_en
      t.string :name_pl
      t.string :category
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
