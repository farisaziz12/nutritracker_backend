class AddCategoryToFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :category, :string
  end
end
