class AddNameToFoodPreferences < ActiveRecord::Migration
  def change
    add_column :food_preferences, :name, :string
  end
end
