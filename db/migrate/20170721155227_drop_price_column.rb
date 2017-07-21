class DropPriceColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :companies, :price
  end
end
