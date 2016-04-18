class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :upimg
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
