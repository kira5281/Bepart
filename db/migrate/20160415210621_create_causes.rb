class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :name
      t.text :description
      t.string :logo

      t.timestamps null: false
    end
  end
end
