class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :model
      t.text :description
      t.integer :price
      t.integer :discount
      t.integer :manofacturer_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
