class AddColsInProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :quant, :integer
  end
end
