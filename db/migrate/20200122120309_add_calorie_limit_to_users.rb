class AddCalorieLimitToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :calorieLimit, :integer
  end
end
