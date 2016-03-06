class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :cooking_time
      t.string :difficulty_level
      t.integer :food_type_id
      t.integer :food_preference_id
      t.integer :cuisine_id
      t.string :ingredients
      t.string :text
      t.text :procedure

      t.timestamps null: false
    end
  end
end
