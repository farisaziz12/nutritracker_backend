class AddNutrientColumnsToFood < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :fat, :float
    add_column :foods, :carbohydrate, :float
    add_column :foods, :protein, :float
  end
end
