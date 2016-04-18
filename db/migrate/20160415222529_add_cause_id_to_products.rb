class AddCauseIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :cause_id, :integer
  end
end
