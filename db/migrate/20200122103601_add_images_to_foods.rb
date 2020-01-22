class AddImagesToFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :image, :string
  end
end
