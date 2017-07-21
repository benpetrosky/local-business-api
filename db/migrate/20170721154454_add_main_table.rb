class AddMainTable < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :department
      t.string :product
      t.string :price
    end
  end
end
