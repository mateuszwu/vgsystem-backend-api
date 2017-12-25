class AddNewFieldsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string, null: false, default: true
    add_column :users, :last_name, :string, null: false, default: true
    add_column :users, :city, :string, null: false, default: true
    add_column :users, :address, :string, null: false, default: true
    add_column :users, :phone, :string, null: false, default: true
    add_column :users, :is_enabled, :boolean, null: false, default: true
  end
end
