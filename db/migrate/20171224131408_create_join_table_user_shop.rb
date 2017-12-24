class CreateJoinTableUserShop < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :shops do |t|
      t.index [:user_id, :shop_id]
    end
  end
end
