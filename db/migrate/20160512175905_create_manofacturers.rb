class CreateManofacturers < ActiveRecord::Migration
  def change
    create_table :manofacturers do |t|
      t.string :name
      t.string :video

      t.timestamps null: false
    end
  end
end
