class MakeChangesToProducts < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :title, :name
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 8, scale: 2
    rename_column :products, :isbn, :string
  end
end
