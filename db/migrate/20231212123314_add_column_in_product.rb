class AddColumnInProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :description, :string
    add_column :products, :name, :string
    add_column :products, :price, :string
    add_column :products, :rating, :string
  end
end