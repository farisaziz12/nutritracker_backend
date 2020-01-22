class ChangeCalorieLimitInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :calorieLimit, :integer, default: 2500
  end
end
